// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.layout;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppFragmentManager;
import com.biznessapps.api.AppHandlers;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.AsyncCallback;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.DataSource;
import com.biznessapps.api.UrlWrapper;
import com.biznessapps.api.navigation.NavigationManager;
import com.biznessapps.common.components.LocationFinder;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.social.SocialNetworkManager;
import com.biznessapps.constants.AppConstants;
import com.biznessapps.home_screen.HomeScreenActivity;
import com.biznessapps.localization.LanguageHelper;
import com.biznessapps.localization.StringsSource;
import com.biznessapps.loyalty.LoyaltyHandler;
import com.biznessapps.messages.MessageEntity;
import com.biznessapps.more.Tab;
import com.biznessapps.music.MusicListFragment;
import com.biznessapps.player.MusicPlayer;
import com.biznessapps.player.PlayerServiceAccessor;
import com.biznessapps.reseller.ResellerInfo;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import com.google.android.gms.analytics.ExceptionReporter;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.newrelic.agent.android.NewRelic;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MainController extends Activity
    implements AppConstants
{

    private long loadingTimeOffset;
    private boolean needMessagesTab;
    private JSONObject postDevTokenResponseObj;

    public MainController()
    {
        needMessagesTab = false;
    }

    private boolean checkAndLoadReseller(String s)
    {
        boolean flag2 = getIntent().getBooleanExtra("IS_FROM_RESELLER", false);
        boolean flag1 = false;
        boolean flag = false;
        if (!flag2)
        {
            s = null;
            Object obj = AppCore.getInstance().getCachingManager();
            String s1 = ((CachingManager) (obj)).getFromSharedPreferences(getApplicationContext(), "RESELLER_ID_KEY");
            if (StringUtils.isNotEmpty(s1))
            {
                s = String.format("reseller.php?id=%s", new Object[] {
                    s1
                });
                s = JsonParser.parseResellerInfo(DataSource.getInstance().getData(s));
                List list = s.getApps();
                if (list != null && !list.isEmpty())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            }
            flag1 = flag;
            if (flag)
            {
                AppCore.getInstance().getAppSettings().setActive(true);
                ((CachingManager) (obj)).saveInSharedPreferences(getApplicationContext(), s1, "RESELLER_ID_KEY");
                obj = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("RESELLER_DASHBOARD_FRAGMENT"));
                ((Intent) (obj)).putExtra("TAB_FRAGMENT", "RESELLER_DASHBOARD_FRAGMENT");
                ((Intent) (obj)).putExtra("RESELLER_DATA", s);
                startActivity(((Intent) (obj)));
                flag1 = flag;
            }
        }
        return flag1;
    }

    private void clearOldState()
    {
        AppCore.getInstance().clear();
        NavigationManager.clear();
    }

    private void defineDeviceParams()
    {
        Display display = getWindowManager().getDefaultDisplay();
        int i = display.getWidth();
        int j = display.getHeight();
        if (i >= j)
        {
            i = j;
        }
        AppCore.getInstance().setDeviceWidth(i);
        AppCore.getInstance().setDeviceHeight(j);
    }

    private String defineUrlRequest(String s, String s1)
    {
        String s2 = s1;
        s1 = s2;
        if (!s.equalsIgnoreCase("biznessapps"))
        {
            s1 = s2;
            if (!s.equalsIgnoreCase("previewapp11"))
            {
                s = getSharedPreferences("ba.application.settings", 0);
                s1 = s2;
                if (s.getBoolean("is_first_time", true))
                {
                    s.edit().putBoolean("is_first_time", false).commit();
                    s1 = (new StringBuilder()).append(s2).append("&firstRun=1").toString();
                    Log.i(getClass().getName(), "first time loading");
                }
            }
        }
        s2 = AppCore.getInstance().getAppSettings().getDeviceUserId(AppCore.getInstance().getAppContext());
        s = s1;
        if (StringUtils.isNotEmpty(s2))
        {
            s = (new StringBuilder()).append(s1).append(String.format(Locale.getDefault(), "&%s=%s", new Object[] {
                "device_user_id", s2
            })).toString();
        }
        return s;
    }

    private PlayerServiceAccessor getPlayerServiceAccessor()
    {
        if (!MusicPlayer.getInstance().isInited())
        {
            MusicPlayer.getInstance().init(getApplicationContext());
        }
        return MusicPlayer.getInstance().getServiceAccessor();
    }

    private void initExceptionHandling()
    {
        AppSettings appsettings = AppCore.getInstance().getAppSettings();
        Thread.setDefaultUncaughtExceptionHandler(new ExceptionReporter(GoogleAnalytics.getInstance(getApplicationContext()).newTracker(appsettings.getGaAccountId()), Thread.getDefaultUncaughtExceptionHandler(), getApplicationContext()));
    }

    private void initNewState()
    {
        if (!AppCore.getInstance().isInitialized())
        {
            AppCore.getInstance().init(getApplicationContext());
        }
        AppHandlers.getUiHandler();
        SocialNetworkManager.getInstance(getApplicationContext());
        MusicPlayer.getInstance().init(getApplicationContext());
        defineDeviceParams();
    }

    private void loadApp()
    {
        final Object defaultApp = getString(R.string.code_name);
        final String appCode = ViewUtils.getExtraKey(getIntent().getExtras(), "APPCODE", ((String) (defaultApp)));
        final Object url;
        final CachingManager cacher;
        final boolean isLogged;
        if (getIntent().getExtras() != null)
        {
            isLogged = getIntent().getExtras().getBoolean("IS_LOGED_WITH_PROTECTION");
        } else
        {
            isLogged = false;
        }
        cacher = AppCore.getInstance().getCachingManager();
        url = ViewUtils.getExtraKey(getIntent().getExtras(), "HOST", null);
        UrlWrapper.getInstance().setPredefinedHost(((String) (url)));
        AppCore.getInstance().setStreamMode(getIntent().getBooleanExtra("STREAM_MODE", false));
        loadingTimeOffset = System.currentTimeMillis();
        if (!appCode.equalsIgnoreCase("biznessapps") && !appCode.equalsIgnoreCase("previewapp11"))
        {
            cacher.setAppCode(appCode);
        }
        if (appCode != null)
        {
            url = appCode;
        } else
        {
            url = defaultApp;
        }
        url = defineUrlRequest(((String) (defaultApp)), String.format("init.php?app_code=%s", new Object[] {
            url
        }));
        defaultApp = new AsyncCallback() {

            final MainController this$0;
            final String val$appCode;
            final CachingManager val$cacher;
            final String val$defaultApp;
            final boolean val$isLogged;
            final String val$url;

            public void onError(String s, Throwable throwable)
            {
                s = MainController.this;
                if (s != null)
                {
                    ViewUtils.showDialog(s, s.getString(R.string.server_connection_failure), s. new Runnable() {

                        final _cls1 this$1;
                        final Activity val$activity;

                        public void run()
                        {
                            UrlWrapper.getInstance().clearState();
                            activity.finish();
                        }

            
            {
                this$1 = final__pcls1;
                activity = Activity.this;
                super();
            }
                    }, false);
                }
            }

            public volatile void onResult(Object obj)
            {
                onResult((String)obj);
            }

            public void onResult(String s)
            {
                JsonParser.updateInitStateWithData(s);
                List list = cacher.getTabList();
                DataSource.getInstance().update(url, s, true);
                (new Thread(list. new Runnable() {

                    final _cls1 this$1;
                    final List val$tabList;

                    public void run()
                    {
                        AppSettings appsettings = AppCore.getInstance().getAppSettings();
                        AppCore.getInstance().init(getApplicationContext());
                        if (!checkAndLoadReseller(appCode))
                        {
                            ArrayList arraylist = new ArrayList();
                            String s = null;
                            Object obj = tabList.iterator();
                            do
                            {
                                if (!((Iterator) (obj)).hasNext())
                                {
                                    break;
                                }
                                Tab tab = (Tab)((Iterator) (obj)).next();
                                if ((tab.getImage() != null && tab.getImage().trim().length() != 0 || tab.getLabel() != null && tab.getLabel().trim().length() != 0) && !tab.isHide())
                                {
                                    Intent intent3 = new Intent();
                                    intent3.putExtra("TAB_FRAGMENT", tab.getViewController());
                                    if (AppFragmentManager.getFragmentByController(intent3) != null)
                                    {
                                        if ("messagesviewcontroller".equalsIgnoreCase(tab.getViewController()))
                                        {
                                            setTabProperty(tab, "messagesviewcontroller");
                                        }
                                        if ("MusicViewController".equalsIgnoreCase(tab.getViewController()))
                                        {
                                            s = tab.getTabId();
                                            setTabProperty(tab, "MusicViewController");
                                        }
                                        if ("NewsViewController".equalsIgnoreCase(tab.getViewController()))
                                        {
                                            appsettings.setNewsTabId(tab.getTabId());
                                            setTabProperty(tab, "NewsViewController");
                                        }
                                        if ("MailingListViewController".equalsIgnoreCase(tab.getViewController()))
                                        {
                                            appsettings.setMailingTab(tab);
                                        }
                                        arraylist.add(tab);
                                    }
                                }
                            } while (true);
                            obj = DataSource.getInstance().getBearerAccessToken(appsettings.getConsumerKey(), appsettings.getConsumerSecret());
                            AppCore.getInstance().setBearerAccessToken(((String) (obj)));
                            if (!defaultApp.equalsIgnoreCase("biznessapps") && !defaultApp.equalsIgnoreCase("previewapp11"))
                            {
                                postDevToken(appCode);
                            }
                            loadMusicData(s);
                            NavigationManager.setTabsItems(arraylist);
                            if (arraylist.size() == 1 && "contentchangerviewcontroller".equalsIgnoreCase(((Tab)arraylist.get(0)).getViewController()))
                            {
                                Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass(((Tab)arraylist.get(0)).getViewController()));
                                intent.putExtra("TAB_FRAGMENT", ((Tab)arraylist.get(0)).getViewController());
                                intent.putExtra("TAB_SPECIAL_ID", ((Tab)arraylist.get(0)).getTabId());
                                intent.putExtra("URL", ((Tab)arraylist.get(0)).getUrl());
                                intent.putExtra("TAB_LABEL", ((Tab)arraylist.get(0)).getLabel());
                                intent.putExtra("OPEN_MESSAGE_TAB_PROPERTY", needMessagesTab);
                                startActivity(intent);
                            } else
                            if (tabList.size() == 1 && "inactiveviewcontroller".equalsIgnoreCase(((Tab)tabList.get(0)).getViewController()))
                            {
                                showNotification(R.string.app_not_being_maintained);
                            } else
                            {
                                initExceptionHandling();
                                appsettings.setOfflineCachingPrompt(true);
                                loadingTimeOffset = System.currentTimeMillis() - loadingTimeOffset;
                                CommonUtils.sendTimingEvent(getApplicationContext(), "Application Loading", loadingTimeOffset);
                                if (appsettings.isProtected() && !isLogged)
                                {
                                    Intent intent1 = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("PROTECTED_VIEW_CONTROLLER"));
                                    intent1.putExtra("TAB_FRAGMENT", "PROTECTED_VIEW_CONTROLLER");
                                    startActivity(intent1);
                                } else
                                {
                                    registerPushNotifications();
                                    MessageEntity messageentity = (MessageEntity)getIntent().getSerializableExtra("RICH_PUSH_PROPERTY");
                                    if (needMessagesTab && messageentity != null)
                                    {
                                        openLinkedTab(messageentity);
                                    } else
                                    if (needMessagesTab)
                                    {
                                        openSpecialTab("messagesviewcontroller");
                                    } else
                                    {
                                        Intent intent2 = new Intent(getApplicationContext(), com/biznessapps/home_screen/HomeScreenActivity);
                                        intent2.putExtras(getIntent());
                                        if (postDevTokenResponseObj != null)
                                        {
                                            intent2.putExtra("post_dev_token_response", postDevTokenResponseObj.toString());
                                        }
                                        startActivity(intent2);
                                    }
                                }
                            }
                        }
                        finish();
                    }

            
            {
                this$1 = final__pcls1;
                tabList = List.this;
                super();
            }
                })).start();
            }

            
            {
                this$0 = MainController.this;
                cacher = cachingmanager;
                url = s;
                appCode = s1;
                defaultApp = s2;
                isLogged = flag;
                super();
            }
        };
        DataSource.getInstance().getData(((AsyncCallback) (defaultApp)), ((String) (url)));
    }

    private void loadMusicData(String s)
    {
        getPlayerServiceAccessor().stop();
        getPlayerServiceAccessor().clearQueue();
        if (StringUtils.isNotEmpty(s) && AppCore.getInstance().getAppSettings().isMusicIconUsed())
        {
            Object obj = String.format("music_list.php?app_code=%s&tab_id=%s&platform=android", new Object[] {
                AppCore.getInstance().getCachingManager().getAppCode(), s
            });
            obj = JsonParser.parseMusicList(DataSource.getInstance().getData(((String) (obj))));
            if (obj != null && !((List) (obj)).isEmpty())
            {
                AppCore.getInstance().getCachingManager().setMusicTabId(s);
                AppCore.getInstance().getCachingManager().saveData((new StringBuilder()).append("MUSIC_PLAYLIST_PROPERTY").append(s).toString(), obj);
                getPlayerServiceAccessor().addUrlsQueue(MusicListFragment.extractUrlsFromData(((List) (obj))));
                AppHandlers.getUiHandler().postDelayed(new Runnable() {

                    final MainController this$0;

                    public void run()
                    {
                        getPlayerServiceAccessor().play(null);
                    }

            
            {
                this$0 = MainController.this;
                super();
            }
                }, 5000L);
            }
        }
    }

    private void openLinkedTab(MessageEntity messageentity)
    {
        if (StringUtils.isNotEmpty(messageentity.getUrl()))
        {
            Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("WEB_VIEW_SINGLE_FRAGMENT"));
            String s = messageentity.getUrl();
            messageentity = s;
            if (!s.contains("http://"))
            {
                messageentity = s;
                if (!s.contains("https://"))
                {
                    messageentity = (new StringBuilder()).append("http://").append(s).toString();
                }
            }
            intent.putExtra("URL", messageentity);
            intent.putExtra("TAB_FRAGMENT", "WEB_VIEW_SINGLE_FRAGMENT");
            startActivity(intent);
            return;
        }
        if (StringUtils.isNotEmpty(messageentity.getTabId()))
        {
            ApiUtils.openTab(getApplicationContext(), messageentity.getTabId(), messageentity.getCategoryId(), messageentity.getDetailId(), null);
            return;
        } else
        {
            startActivity(new Intent(getApplicationContext(), com/biznessapps/home_screen/HomeScreenActivity));
            return;
        }
    }

    private void openSpecialTab(String s)
    {
        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass(s));
        SharedPreferences sharedpreferences = getSharedPreferences("ba.application.settings", 0);
        intent.putExtra("TAB_LABEL", sharedpreferences.getString((new StringBuilder()).append("TAB_LABEL").append(s).toString(), ""));
        intent.putExtra("TAB_SPECIAL_ID", sharedpreferences.getString((new StringBuilder()).append("TAB_SPECIAL_ID").append(s).toString(), ""));
        intent.putExtra("TAB_FRAGMENT", s);
        startActivity(intent);
    }

    private void postDevToken(String s)
    {
        Location location = AppCore.getInstance().getLocationFinder().getCurrentLocation();
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        linkedhashmap.put("app_code", s);
        if (location == null)
        {
            s = "0";
        } else
        {
            s = String.valueOf(location.getLatitude());
        }
        linkedhashmap.put("latitude", s);
        if (location == null)
        {
            s = "0";
        } else
        {
            s = String.valueOf(location.getLongitude());
        }
        linkedhashmap.put("longitude", s);
        linkedhashmap.put("existing_loyalties", LoyaltyHandler.getInstance(getApplicationContext()).getOldLoyaltyDataTillV5());
        linkedhashmap.put("device", "android");
        linkedhashmap.put("devToken", AppCore.getInstance().getAppSettings().getDeviceId(this));
        linkedhashmap.put("version", "1");
        try
        {
            s = AppHttpUtils.executePostRequestSync("apns.php", linkedhashmap, true);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_167;
        }
        postDevTokenResponseObj = null;
        postDevTokenResponseObj = (new JSONArray(s)).getJSONObject(0);
    }

    private void registerPushNotifications()
    {
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
        intent.putExtra("app", PendingIntent.getBroadcast(this, 0, new Intent(), 0));
        intent.putExtra("sender", "641133715768");
        startService(intent);
    }

    private void setTabProperty(Tab tab, String s)
    {
        android.content.SharedPreferences.Editor editor = getSharedPreferences("ba.application.settings", 0).edit();
        editor.putString((new StringBuilder()).append("TAB_LABEL").append(s).toString(), tab.getLabel());
        editor.putString((new StringBuilder()).append("TAB_SPECIAL_ID").append(s).toString(), tab.getTabId());
        editor.commit();
    }

    private void showNotification(final int resId)
    {
        if (this != null)
        {
            runOnUiThread(new Runnable() {

                final MainController this$0;
                final Activity val$activity;
                final int val$resId;

                public void run()
                {
                    ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(resId));
                }

            
            {
                this$0 = MainController.this;
                activity = activity1;
                resId = i;
                super();
            }
            });
        }
    }

    public void onBackPressed()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        needMessagesTab = getIntent().getBooleanExtra("OPEN_MESSAGE_TAB_PROPERTY", false);
        requestWindowFeature(1);
        setContentView(R.layout.main);
        clearOldState();
        initNewState();
        loadApp();
        AppCore.getInstance().initLocationFinder(getApplicationContext());
        AppCore.getInstance().getLocationFinder().startSearching();
        NewRelic.withApplicationToken("AAa4900c83df2f253a4d009aee8be99c6717d4cbc4").start(getApplication());
        bundle = LanguageHelper.getUsedLanguageCode(getResources().getConfiguration().locale);
        StringsSource.getInstance().update(getApplicationContext(), bundle);
    }













/*
    static long access$702(MainController maincontroller, long l)
    {
        maincontroller.loadingTimeOffset = l;
        return l;
    }

*/


}
