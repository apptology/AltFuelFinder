// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.layout;

import android.app.Activity;
import android.content.Intent;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppFragmentManager;
import com.biznessapps.api.AsyncCallback;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.DataSource;
import com.biznessapps.api.UrlWrapper;
import com.biznessapps.api.navigation.NavigationManager;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.home_screen.HomeScreenActivity;
import com.biznessapps.messages.MessageEntity;
import com.biznessapps.more.Tab;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

// Referenced classes of package com.biznessapps.layout:
//            MainController

class val.tabList
    implements Runnable
{

    final sh this$1;
    final List val$tabList;

    public void run()
    {
        AppSettings appsettings = AppCore.getInstance().getAppSettings();
        AppCore.getInstance().init(getApplicationContext());
        if (!MainController.access$000(_fld0, appCode))
        {
            ArrayList arraylist = new ArrayList();
            String s = null;
            Object obj = val$tabList.iterator();
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
                            MainController.access$100(_fld0, tab, "messagesviewcontroller");
                        }
                        if ("MusicViewController".equalsIgnoreCase(tab.getViewController()))
                        {
                            s = tab.getTabId();
                            MainController.access$100(_fld0, tab, "MusicViewController");
                        }
                        if ("NewsViewController".equalsIgnoreCase(tab.getViewController()))
                        {
                            appsettings.setNewsTabId(tab.getTabId());
                            MainController.access$100(_fld0, tab, "NewsViewController");
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
                MainController.access$200(_fld0, appCode);
            }
            MainController.access$300(_fld0, s);
            NavigationManager.setTabsItems(arraylist);
            if (arraylist.size() == 1 && "contentchangerviewcontroller".equalsIgnoreCase(((Tab)arraylist.get(0)).getViewController()))
            {
                Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass(((Tab)arraylist.get(0)).getViewController()));
                intent.putExtra("TAB_FRAGMENT", ((Tab)arraylist.get(0)).getViewController());
                intent.putExtra("TAB_SPECIAL_ID", ((Tab)arraylist.get(0)).getTabId());
                intent.putExtra("URL", ((Tab)arraylist.get(0)).getUrl());
                intent.putExtra("TAB_LABEL", ((Tab)arraylist.get(0)).getLabel());
                intent.putExtra("OPEN_MESSAGE_TAB_PROPERTY", MainController.access$400(_fld0));
                startActivity(intent);
            } else
            if (val$tabList.size() == 1 && "inactiveviewcontroller".equalsIgnoreCase(((Tab)val$tabList.get(0)).getViewController()))
            {
                MainController.access$500(_fld0, ing_maintained);
            } else
            {
                MainController.access$600(_fld0);
                appsettings.setOfflineCachingPrompt(true);
                MainController.access$702(_fld0, System.currentTimeMillis() - MainController.access$700(_fld0));
                CommonUtils.sendTimingEvent(getApplicationContext(), "Application Loading", MainController.access$700(_fld0));
                if (appsettings.isProtected() && !isLogged)
                {
                    Intent intent1 = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("PROTECTED_VIEW_CONTROLLER"));
                    intent1.putExtra("TAB_FRAGMENT", "PROTECTED_VIEW_CONTROLLER");
                    startActivity(intent1);
                } else
                {
                    MainController.access$800(_fld0);
                    MessageEntity messageentity = (MessageEntity)getIntent().getSerializableExtra("RICH_PUSH_PROPERTY");
                    if (MainController.access$400(_fld0) && messageentity != null)
                    {
                        MainController.access$900(_fld0, messageentity);
                    } else
                    if (MainController.access$400(_fld0))
                    {
                        MainController.access$1000(_fld0, "messagesviewcontroller");
                    } else
                    {
                        Intent intent2 = new Intent(getApplicationContext(), com/biznessapps/home_screen/HomeScreenActivity);
                        intent2.putExtras(getIntent());
                        if (MainController.access$1100(_fld0) != null)
                        {
                            intent2.putExtra("post_dev_token_response", MainController.access$1100(_fld0).toString());
                        }
                        startActivity(intent2);
                    }
                }
            }
        }
        finish();
    }

    l.isLogged()
    {
        this$1 = final_islogged;
        val$tabList = List.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/layout/MainController$1

/* anonymous class */
    class MainController._cls1 extends AsyncCallback
    {

        final MainController this$0;
        final String val$appCode;
        final CachingManager val$cacher;
        final String val$defaultApp;
        final boolean val$isLogged;
        final String val$url;

        public void onError(final String activity, Throwable throwable)
        {
            activity = MainController.this;
            if (activity != null)
            {
                ViewUtils.showDialog(activity, activity.getString(R.string.server_connection_failure), new MainController._cls1._cls2(), false);
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
            (new Thread(list. new MainController._cls1._cls1())).start();
        }

            
            {
                this$0 = final_maincontroller;
                cacher = cachingmanager;
                url = s;
                appCode = s1;
                defaultApp = s2;
                isLogged = Z.this;
                super();
            }

        // Unreferenced inner class com/biznessapps/layout/MainController$1$2

/* anonymous class */
        class MainController._cls1._cls2
            implements Runnable
        {

            final MainController._cls1 this$1;
            final Activity val$activity;

            public void run()
            {
                UrlWrapper.getInstance().clearState();
                activity.finish();
            }

                    
                    {
                        this$1 = MainController._cls1.this;
                        activity = activity1;
                        super();
                    }
        }

    }

}
