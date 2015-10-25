// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.telephony.TelephonyManager;
import com.biznessapps.common.BitlyManager;
import com.biznessapps.common.components.LocationFinder;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.style.BZStyleManager;
import com.biznessapps.images.NewImageManager;
import com.biznessapps.more.Tab;
import com.biznessapps.storage.StorageKeeper;
import com.biznessapps.utils.StringUtils;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.api:
//            CachingManager, AsyncCallback, UiSettings, ImageFetcherAccessor

public class AppCore
{
    private static class AppCoreHolder
    {

        private static final AppCore instance = new AppCore();



        private AppCoreHolder()
        {
        }
    }

    class ShareCallBackMeta
    {

        AsyncCallback callback;
        String orgUrl;
        final AppCore this$0;

        public ShareCallBackMeta(AsyncCallback asynccallback, String s)
        {
            this$0 = AppCore.this;
            super();
            callback = asynccallback;
            orgUrl = s;
        }
    }


    private static final String PREFS_KEY_APP_SHARE_TEXT = "app_share_text";
    private AppSettings appSettings;
    private String appSharingText;
    private String bearerAccessToken;
    private CachingManager cachingManager;
    private Context context;
    private int deviceHeight;
    private int deviceWidth;
    private ImageFetcherAccessor imageFetcherAccessor;
    private boolean isPhoneDisabled;
    private boolean isTablet;
    private LocationFinder locationFinder;
    private NewImageManager newImageManager;
    private SharedPreferences rootPrefs;
    private android.content.SharedPreferences.Editor rootPrefsEditor;
    private UiSettings settings;
    private boolean useStreamMode;
    AsyncCallback warpAppStoreCallBack = new AsyncCallback() {

        final AppCore this$0;

        private void addUrl(String s)
        {
            AsyncCallback asynccallback;
            String s1;
            boolean flag;
            if (getMeta() != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(flag);
            asynccallback = ((ShareCallBackMeta)getMeta()).callback;
            s1 = context.getString(com.biznessapps.layout.R.string.app_store);
            s = (new StringBuilder()).append(
// JavaClassFileOutputException: get_constant: invalid tag

        public void onError(String s, Throwable throwable)
        {
            if (getMeta() == null)
            {
                return;
            } else
            {
                addUrl(((ShareCallBackMeta)getMeta()).orgUrl);
                return;
            }
        }

        public volatile void onResult(Object obj)
        {
            onResult((String)obj);
        }

        public void onResult(String s)
        {
            addUrl(s);
        }

            
            {
                this$0 = AppCore.this;
                super();
            }
    };
    AsyncCallback warpPlayStoreCallBack = new AsyncCallback() {

        final AppCore this$0;

        private void addUrl(String s)
        {
            AsyncCallback asynccallback;
            String s1;
            boolean flag;
            if (getMeta() != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(flag);
            asynccallback = ((ShareCallBackMeta)getMeta()).callback;
            s1 = context.getString(com.biznessapps.layout.R.string.google_store);
            s = (new StringBuilder()).append(
// JavaClassFileOutputException: get_constant: invalid tag

        public void onError(String s, Throwable throwable)
        {
            if (getMeta() == null)
            {
                return;
            } else
            {
                addUrl(((ShareCallBackMeta)getMeta()).orgUrl);
                return;
            }
        }

        public volatile void onResult(Object obj)
        {
            onResult((String)obj);
        }

        public void onResult(String s)
        {
            addUrl(s);
        }

            
            {
                this$0 = AppCore.this;
                super();
            }
    };
    AsyncCallback warphtml5CallBack = new AsyncCallback() {

        final AppCore this$0;

        private void addUrl(String s)
        {
            AsyncCallback asynccallback;
            String s1;
            boolean flag;
            if (getMeta() != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(flag);
            asynccallback = ((ShareCallBackMeta)getMeta()).callback;
            s1 = context.getString(com.biznessapps.layout.R.string.html5_store);
            s = (new StringBuilder()).append(
// JavaClassFileOutputException: get_constant: invalid tag

        public void onError(String s, Throwable throwable)
        {
            if (getMeta() == null)
            {
                return;
            } else
            {
                addUrl(((ShareCallBackMeta)getMeta()).orgUrl);
                return;
            }
        }

        public volatile void onResult(Object obj)
        {
            onResult((String)obj);
        }

        public void onResult(String s)
        {
            addUrl(s);
        }

            
            {
                this$0 = AppCore.this;
                super();
            }
    };
    private String youtubeAccessToken;

    private AppCore()
    {
        cachingManager = new CachingManager();
        newImageManager = new NewImageManager();
    }


    public static AppCore getInstance()
    {
        return AppCoreHolder.instance;
    }

    public boolean canUseOfflineMode()
    {
        return context.getSharedPreferences("ba.application.settings", 0).getBoolean("OFFLINE_CACHING_KEY", false);
    }

    public void clear()
    {
        appSettings = null;
        settings = null;
        cachingManager.clearCache();
    }

    public Context getAppContext()
    {
        return context;
    }

    public AppSettings getAppSettings()
    {
        if (appSettings == null)
        {
            appSettings = new AppSettings();
        }
        return appSettings;
    }

    public void getAppSharingText(Context context1, AsyncCallback asynccallback)
    {
        boolean flag;
        if (asynccallback != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        if (appSharingText != null && !appSharingText.equals(""))
        {
            asynccallback.onResult(appSharingText);
        } else
        {
            appSharingText = "";
            String s = getInstance().getAppSettings().getAppStoreUrl();
            String s1 = getInstance().getAppSettings().getPlayStoreUrl();
            String s2 = getInstance().getAppSettings().getHtmlStoreUrl();
            boolean flag1;
            if (StringUtils.isNotEmpty(s))
            {
                warpAppStoreCallBack.setMeta(new ShareCallBackMeta(asynccallback, s));
                flag1 = BitlyManager.getInstance(context1).getShortURL(s, warpAppStoreCallBack);
            } else
            if (StringUtils.isNotEmpty(s1))
            {
                warpPlayStoreCallBack.setMeta(new ShareCallBackMeta(asynccallback, s1));
                flag1 = BitlyManager.getInstance(context1).getShortURL(s1, warpPlayStoreCallBack);
            } else
            {
                warphtml5CallBack.setMeta(new ShareCallBackMeta(asynccallback, s2));
                flag1 = BitlyManager.getInstance(context1).getShortURL(s2, warphtml5CallBack);
            }
            if (!flag1)
            {
                asynccallback.onError(context1.getResources().getString(com.biznessapps.layout.R.string.something_went_wrong), null);
                return;
            }
        }
    }

    public UiSettings getAppUiSettings()
    {
        if (settings == null)
        {
            settings = new UiSettings(appSettings);
        }
        return settings;
    }

    public String getBearerAccessToken()
    {
        return bearerAccessToken;
    }

    public CachingManager getCachingManager()
    {
        return cachingManager;
    }

    public int getDeviceHeight()
    {
        return deviceHeight;
    }

    public int getDeviceWidth()
    {
        return deviceWidth;
    }

    public ImageFetcherAccessor getImageFetcherAccessor()
    {
        return imageFetcherAccessor;
    }

    public LocationFinder getLocationFinder()
    {
        return locationFinder;
    }

    public UiSettings getMoreTabUISettings()
    {
        Tab tab = appSettings.getMoreTab();
        UiSettings uisettings = getAppUiSettings();
        uisettings.updateUiSettings(tab);
        return uisettings;
    }

    public NewImageManager getNewImageManager()
    {
        return newImageManager;
    }

    public UiSettings getUiSettings(String s)
    {
        UiSettings uisettings = new UiSettings(appSettings);
        s = cachingManager.findTab(s);
        if (s != null)
        {
            if (s.hasCustomDesign())
            {
                uisettings.updateUiSettings(s);
            }
            uisettings.updateOtherSettings(s);
        }
        return uisettings;
    }

    public String getYoutubeAccessToken()
    {
        return youtubeAccessToken;
    }

    public void init(Context context1)
    {
        boolean flag = false;
        context = context1;
        rootPrefs = context.getSharedPreferences("ba.application.settings", 0);
        rootPrefsEditor = rootPrefs.edit();
        if (imageFetcherAccessor == null)
        {
            imageFetcherAccessor = new ImageFetcherAccessor(context);
        }
        initLocationFinder(context1);
        isTablet = context1.getResources().getBoolean(com.biznessapps.layout.R.bool.isTablet);
        if (((TelephonyManager)context.getSystemService("phone")).getPhoneType() == 0)
        {
            flag = true;
        }
        isPhoneDisabled = flag;
        StorageKeeper.init(context1);
        BZStyleManager.getInstance(context).initStyles();
    }

    public void initLocationFinder(Context context1)
    {
        if (locationFinder == null)
        {
            locationFinder = new LocationFinder(context1);
        }
    }

    public boolean isAnyConnectionAvailable()
    {
        while (context == null || ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo() == null) 
        {
            return false;
        }
        return true;
    }

    public boolean isInitialized()
    {
        return context != null && locationFinder != null && StorageKeeper.instance() != null;
    }

    public boolean isPhoneDisabled()
    {
        return isPhoneDisabled;
    }

    public boolean isTablet()
    {
        return isTablet;
    }

    public void setAppSettings(AppSettings appsettings)
    {
        if (appsettings != null)
        {
            appSettings = appsettings;
            appSettings.setActive(true);
        }
    }

    public void setBearerAccessToken(String s)
    {
        bearerAccessToken = s;
    }

    public void setDeviceHeight(int i)
    {
        deviceHeight = i;
    }

    public void setDeviceWidth(int i)
    {
        deviceWidth = i;
    }

    public void setStreamMode(boolean flag)
    {
        useStreamMode = flag;
    }

    public void setUseOfflineMode(boolean flag)
    {
        context.getSharedPreferences("ba.application.settings", 0).edit().putBoolean("OFFLINE_CACHING_KEY", flag).commit();
    }

    public void setYoutubeAccessToken(String s)
    {
        youtubeAccessToken = s;
    }

    public void updateAppSharingText()
    {
        rootPrefsEditor.putString("app_share_text", appSharingText);
        rootPrefsEditor.commit();
    }

    public boolean useStreamMode()
    {
        return useStreamMode;
    }




/*
    static String access$384(AppCore appcore, Object obj)
    {
        obj = (new StringBuilder()).append(appcore.appSharingText).append(obj).toString();
        appcore.appSharingText = ((String) (obj));
        return ((String) (obj));
    }

*/
}
