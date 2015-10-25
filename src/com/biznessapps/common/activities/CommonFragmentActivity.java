// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.activities;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHandlers;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.DataSource;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.LoadingDataInterface;
import com.biznessapps.api.UiSettings;
import com.biznessapps.api.UnModalAsyncTask;
import com.biznessapps.common.entities.NetworkResultEntity;
import com.biznessapps.common.style.BZImageViewStyle;
import com.biznessapps.constants.AppConstants;
import com.biznessapps.images.BitmapDownloader;
import com.biznessapps.images.NewImageManager;
import com.biznessapps.localization.CustomResources;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class CommonFragmentActivity extends FragmentActivity
    implements LoadingDataInterface, AppConstants
{
    public static interface BackPressed
    {

        public abstract boolean onBackPressed();
    }

    private class LoadDataTask extends UnModalAsyncTask
    {

        private long loadingTime;
        final CommonFragmentActivity this$0;

        protected transient NetworkResultEntity doInBackground(Map amap[])
        {
            boolean flag = true;
            NetworkResultEntity networkresultentity = new NetworkResultEntity();
            String s = getRequestUrl();
            amap = DataSource.getInstance().getData(s, true, amap);
            if (!tryParseData(amap) || !StringUtils.isNotEmptyResponse(amap))
            {
                flag = false;
            }
            networkresultentity.setHasCorrectData(flag);
            networkresultentity.setBackground(JsonParser.getBackground(amap));
            if (activity != null && flag)
            {
                handleInBackground();
            }
            return networkresultentity;
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((Map[])aobj);
        }

        protected void onPostExecute(NetworkResultEntity networkresultentity)
        {
            super.onPostExecute(networkresultentity);
            if (activity != null && (activity instanceof CommonFragmentActivity))
            {
                ((CommonFragmentActivity)activity).getProgressBarContainer().removeAllViews();
                if (networkresultentity.hasBackground())
                {
                    applyBackground(networkresultentity.getBackground());
                }
                if (networkresultentity.hasCorrectData())
                {
                    updateControlsWithData(activity);
                    loadingTime = System.currentTimeMillis() - loadingTime;
                    networkresultentity = activity.getIntent().getStringExtra("TAB_FRAGMENT");
                    CommonUtils.sendTimingEvent(activity.getApplicationContext(), networkresultentity, loadingTime);
                } else
                if (!AppCore.getInstance().isAnyConnectionAvailable())
                {
                    ViewUtils.showNetwortErrorToast(activity);
                    return;
                }
            }
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((NetworkResultEntity)obj);
        }

        protected void onPreExecute()
        {
            super.onPreExecute();
            loadingTime = System.currentTimeMillis();
        }

        protected void placeProgressBar()
        {
            if (activity != null && (activity instanceof CommonFragmentActivity))
            {
                ((CommonFragmentActivity)activity).getProgressBarContainer().addView(progressBar);
            }
        }

        public LoadDataTask(Activity activity, List list)
        {
            this$0 = CommonFragmentActivity.this;
            super(activity, list);
        }
    }


    protected static final long NO_TAB_DEFINED = -1L;
    protected List backPressedListeners;
    protected boolean hasPodcastTab;
    protected boolean isActive;
    protected ViewGroup progressBarContainer;
    private Resources resources;
    protected ViewGroup rootLayout;
    protected UiSettings settings;
    protected String tabId;

    public CommonFragmentActivity()
    {
        backPressedListeners = new ArrayList();
        isActive = true;
        hasPodcastTab = false;
    }

    public void addBackPressedListener(BackPressed backpressed)
    {
        backPressedListeners.add(backpressed);
    }

    protected void applyBackground()
    {
label0:
        {
            if (getBackgroundView() != null)
            {
                String s = defineBgUrl();
                if (!StringUtils.isNotEmpty(s))
                {
                    break label0;
                }
                AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadBgImage(s, getBackgroundView(), settings);
            }
            return;
        }
        ViewUtils.setRootBgColor(getBackgroundView(), settings);
    }

    protected void applyBackground(String s)
    {
label0:
        {
            if (getBackgroundView() != null)
            {
                if (!StringUtils.isNotEmpty(s))
                {
                    break label0;
                }
                AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadBgImage(s, getBackgroundView(), settings);
            }
            return;
        }
        ViewUtils.setRootBgColor(getBackgroundView(), settings);
    }

    public CachingManager cacher()
    {
        return AppCore.getInstance().getCachingManager();
    }

    protected boolean canUseCachedData()
    {
        return false;
    }

    protected String defineBgUrl()
    {
        return getIntent().getStringExtra("BG_URL_EXTRA");
    }

    protected View getBackgroundView()
    {
        return rootLayout;
    }

    protected BitmapDownloader getBitmapDownloader()
    {
        return AppCore.getInstance().getNewImageManager().getBitmapDownloader();
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.common_fragment_layout;
    }

    protected NewImageManager getNewImageManager()
    {
        return AppCore.getInstance().getNewImageManager();
    }

    public ViewGroup getProgressBarContainer()
    {
        return progressBarContainer;
    }

    protected String getRequestUrl()
    {
        return "";
    }

    public Resources getResources()
    {
        Resources resources1 = super.getResources();
        resources = CustomResources.getInstance(super.getApplicationContext(), resources1);
        return resources;
    }

    public long getTabId()
    {
        long l = -1L;
        if (getIntent() != null)
        {
            l = getIntent().getLongExtra("TAB_UNIQUE_ID", -1L);
        }
        return l;
    }

    protected List getViewsRef()
    {
        return new ArrayList();
    }

    protected void handleInBackground()
    {
    }

    protected boolean hasNavigationMenu()
    {
        return true;
    }

    protected boolean hasTitleBar()
    {
        return false;
    }

    protected void initAds()
    {
        ViewUtils.showAdsIfNeeded(this, (ViewGroup)findViewById(com.biznessapps.layout.R.id.ads_layout_container), true);
    }

    protected void initAdsWithAlpha()
    {
        ViewUtils.showAdsIfNeeded(this, (ViewGroup)findViewById(com.biznessapps.layout.R.id.ads_layout_container), true, true);
    }

    protected void initSettingsData()
    {
        tabId = getIntent().getStringExtra("TAB_SPECIAL_ID");
        settings = AppCore.getInstance().getUiSettings(tabId);
    }

    public boolean isActive()
    {
        return isActive;
    }

    protected void loadData()
    {
label0:
        {
            if (this != null)
            {
                preDataLoading(this);
                if (!canUseCachedData())
                {
                    break label0;
                }
                updateControlsWithData(this);
            }
            return;
        }
        (new LoadDataTask(this, getViewsRef())).execute(new Map[0]);
    }

    public void onBackPressed()
    {
        boolean flag = true;
        Iterator iterator = backPressedListeners.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (((BackPressed)iterator.next()).onBackPressed())
            {
                flag = false;
            }
        } while (true);
        if (flag)
        {
            super.onBackPressed();
            isActive = false;
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        initAds();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (!AppCore.getInstance().isInitialized())
        {
            AppCore.getInstance().init(getApplicationContext());
        }
        requestWindowFeature(1);
        AppHandlers.getUiHandler();
        initSettingsData();
        onPreInit();
        if (getLayoutId() != 0)
        {
            setContentView(getLayoutId());
            rootLayout = (ViewGroup)getWindow().getDecorView().findViewById(0x1020002);
        }
        progressBarContainer = (ViewGroup)findViewById(com.biznessapps.layout.R.id.progress_bar_container);
    }

    protected void onPreInit()
    {
    }

    protected void onResume()
    {
        super.onResume();
        initAds();
        if (hasTitleBar())
        {
            ViewGroup viewgroup = (ViewGroup)findViewById(com.biznessapps.layout.R.id.tab_title_container);
            ViewUtils.showTitleBar(viewgroup, getIntent(), settings);
            BZImageViewStyle.getInstance(this).apply(Integer.valueOf(settings.getNavigationTextColor()), viewgroup);
        }
        applyBackground();
    }

    protected void preDataLoading(Activity activity)
    {
    }

    public void removeBackPressedListener(BackPressed backpressed)
    {
        backPressedListeners.remove(backpressed);
    }

    protected boolean tryParseData(String s)
    {
        return true;
    }

    protected void updateControlsWithData(Activity activity)
    {
    }
}
