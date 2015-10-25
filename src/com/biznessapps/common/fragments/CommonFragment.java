// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.fragments;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.DataSource;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.ParseStateEntity;
import com.biznessapps.api.UiSettings;
import com.biznessapps.api.UnModalAsyncTask;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.entities.AnalyticEntity;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.entities.NetworkResultEntity;
import com.biznessapps.common.style.BZStyleManager;
import com.biznessapps.constants.AppConstants;
import com.biznessapps.images.BitmapDownloader;
import com.biznessapps.images.NewImageManager;
import com.biznessapps.player.MusicPlayer;
import com.biznessapps.player.PlayerServiceAccessor;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.google.caching.ImageWorker;
import com.biznessapps.utils.json.JsonParser;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class CommonFragment extends Fragment
    implements AppConstants
{
    private class LoadDataTask extends UnModalAsyncTask
    {

        private long loadingTime;
        final CommonFragment this$0;

        protected transient NetworkResultEntity doInBackground(Map amap[])
        {
            boolean flag = true;
            NetworkResultEntity networkresultentity = new NetworkResultEntity();
            Object obj = getRequestUrl();
            obj = (new StringBuilder()).append(((String) (obj))).append(addOffsetIfNeeded()).toString();
            amap = DataSource.getInstance().getData(((String) (obj)), true, amap);
            obj = new ParseStateEntity();
            if (!tryParseData(amap, ((ParseStateEntity) (obj))) || !StringUtils.isNotEmptyResponse(amap))
            {
                flag = false;
            }
            if (((ParseStateEntity) (obj)).isCorrectState())
            {
                flag = true;
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
label0:
            {
                super.onPostExecute(networkresultentity);
                if (activity != null && (activity instanceof CommonFragmentActivity) && ((CommonFragmentActivity)activity).isActive())
                {
                    ((CommonFragmentActivity)activity).getProgressBarContainer().removeAllViews();
                    if (networkresultentity.hasBackground())
                    {
                        bgUrl = networkresultentity.getBackground();
                        loadBgUrl();
                    }
                    if (!networkresultentity.hasCorrectData())
                    {
                        break label0;
                    }
                    updateControlsWithData(activity);
                    loadingTime = System.currentTimeMillis() - loadingTime;
                    networkresultentity = activity.getIntent().getStringExtra("TAB_FRAGMENT");
                    CommonUtils.sendTimingEvent(activity.getApplicationContext(), networkresultentity, loadingTime);
                }
                return;
            }
            if (!AppCore.getInstance().isAnyConnectionAvailable())
            {
                onError(activity);
                return;
            } else
            {
                handleNoDataEvent(activity);
                return;
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
            this$0 = CommonFragment.this;
            super(activity, list);
        }
    }


    protected String bgUrl;
    protected String bitmapUrl;
    private String fragmentName;
    protected boolean hasResultError;
    private ImageFetcher imageFetcher;
    protected String itemId;
    protected Button rightNavigationButton;
    protected ViewGroup root;
    protected String sectionId;
    protected UiSettings settings;
    protected String tabId;
    protected ViewGroup titleBarRoot;
    protected TextView titleTextView;

    public CommonFragment()
    {
    }

    protected String addOffsetIfNeeded()
    {
        return "";
    }

    public CachingManager cacher()
    {
        return AppCore.getInstance().getCachingManager();
    }

    protected boolean canUseCachedData()
    {
        return false;
    }

    protected String defineBgUrl(Intent intent)
    {
        return intent.getStringExtra("BG_URL_EXTRA");
    }

    protected AnalyticEntity getAnalyticData()
    {
        AnalyticEntity analyticentity = new AnalyticEntity();
        AppSettings appsettings = AppCore.getInstance().getAppSettings();
        analyticentity.setContext(getApplicationContext());
        analyticentity.setAccountId(appsettings.getGaAccountId());
        analyticentity.setAppId(appsettings.getAppId());
        analyticentity.setTabId(getIntent().getStringExtra("TAB_SPECIAL_ID"));
        return analyticentity;
    }

    public AppCore getAppCore()
    {
        return AppCore.getInstance();
    }

    public Context getApplicationContext()
    {
        return getActivity().getApplicationContext();
    }

    protected BitmapDownloader getBitmapDownloader()
    {
        return AppCore.getInstance().getNewImageManager().getBitmapDownloader();
    }

    public String getFragmentName()
    {
        return fragmentName;
    }

    public CommonFragmentActivity getHoldActivity()
    {
        return (CommonFragmentActivity)getActivity();
    }

    protected ImageFetcher getImageFetcher()
    {
        if (imageFetcher == null)
        {
            imageFetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
        }
        return imageFetcher;
    }

    public Intent getIntent()
    {
        return getActivity().getIntent();
    }

    protected int getLayoutId()
    {
        return 0;
    }

    protected NewImageManager getNewImageManager()
    {
        return AppCore.getInstance().getNewImageManager();
    }

    protected PlayerServiceAccessor getPlayerServiceAccessor()
    {
        if (!MusicPlayer.getInstance().isInited())
        {
            MusicPlayer.getInstance().init(getApplicationContext());
        }
        return MusicPlayer.getInstance().getServiceAccessor();
    }

    protected String getRequestUrl()
    {
        return "";
    }

    protected View getViewForBg()
    {
        return root;
    }

    protected List getViewsRef()
    {
        return new ArrayList();
    }

    protected void handleInBackground()
    {
    }

    protected void handleNoDataEvent(Activity activity)
    {
        ViewUtils.showNoDataToast(activity);
    }

    protected boolean hasTitleBar()
    {
        return true;
    }

    protected void initAds()
    {
        ViewUtils.showAdsIfNeeded(getHoldActivity(), root, false);
    }

    protected void initAdsWithAlpha()
    {
        ViewUtils.showAdsIfNeeded(getHoldActivity(), root, false, true);
    }

    protected void initSettingsData()
    {
        tabId = getIntent().getStringExtra("TAB_SPECIAL_ID");
        settings = AppCore.getInstance().getUiSettings(tabId);
        bgUrl = getIntent().getStringExtra("BG_URL_EXTRA");
    }

    protected void initTitleBar()
    {
        if (hasTitleBar())
        {
            titleBarRoot = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.tab_title_container);
            titleTextView = (TextView)titleBarRoot.findViewById(com.biznessapps.layout.R.id.tab_title_text);
            ViewUtils.showTitleBar(titleBarRoot, getIntent(), settings);
            BZStyleManager.getInstance(getActivity()).applyColor(settings.getNavigationTextColor(), titleBarRoot, new View[] {
                titleTextView
            });
        }
    }

    protected void initViews(ViewGroup viewgroup)
    {
        ViewUtils.setRootBgColor(viewgroup, settings);
    }

    protected void loadBgUrl()
    {
label0:
        {
            if (getViewForBg() != null)
            {
                if (!StringUtils.isNotEmpty(bgUrl))
                {
                    break label0;
                }
                AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadBgImage(bgUrl, getViewForBg(), new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback() {

                    final CommonFragment this$0;

                    public void onImageLoaded(String s, Bitmap bitmap, View view)
                    {
                        onBackgroundLoaded(bitmap);
                    }

            
            {
                this$0 = CommonFragment.this;
                super();
            }
                }, null, 3, settings);
            }
            return;
        }
        ViewUtils.setRootBgColor(getViewForBg(), settings);
    }

    protected void loadData()
    {
        CommonFragmentActivity commonfragmentactivity;
label0:
        {
            commonfragmentactivity = getHoldActivity();
            if (commonfragmentactivity != null)
            {
                preDataLoading(commonfragmentactivity);
                if (!canUseCachedData())
                {
                    break label0;
                }
                updateControlsWithData(commonfragmentactivity);
            }
            return;
        }
        (new LoadDataTask(commonfragmentactivity, getViewsRef())).execute(new Map[0]);
    }

    protected void loadDataFromServer()
    {
        CommonFragmentActivity commonfragmentactivity = getHoldActivity();
        if (commonfragmentactivity != null)
        {
            preDataLoading(commonfragmentactivity);
            (new LoadDataTask(commonfragmentactivity, getViewsRef())).execute(new Map[0]);
        }
    }

    protected void loadPostData(Map map)
    {
        CommonFragmentActivity commonfragmentactivity;
label0:
        {
            commonfragmentactivity = getHoldActivity();
            if (commonfragmentactivity != null)
            {
                preDataLoading(commonfragmentactivity);
                if (!canUseCachedData())
                {
                    break label0;
                }
                updateControlsWithData(commonfragmentactivity);
            }
            return;
        }
        (new LoadDataTask(commonfragmentactivity, getViewsRef())).execute(new Map[] {
            map
        });
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
        activity = activity.getWindow();
        if (activity != null)
        {
            activity.setSoftInputMode(3);
        }
    }

    protected void onBackgroundLoaded(Bitmap bitmap)
    {
        getViewForBg().setBackgroundDrawable(new BitmapDrawable(bitmap));
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        initAds();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        if (!AppCore.getInstance().isInitialized())
        {
            AppCore.getInstance().init(getApplicationContext());
        }
        getActivity().getWindow().setSoftInputMode(32);
        root = (ViewGroup)layoutinflater.inflate(getLayoutId(), null);
        initSettingsData();
        initAds();
        initTitleBar();
        rightNavigationButton = (Button)root.findViewById(com.biznessapps.layout.R.id.right_navigation_button);
        if (rightNavigationButton != null)
        {
            CommonUtils.overrideMediumButtonColor(settings.getNavigationBarColor(), rightNavigationButton.getBackground());
        }
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        openCustomDialogs();
        return root;
    }

    protected void onError(Activity activity)
    {
        ViewUtils.showNetwortErrorToast(activity);
    }

    protected void onPostBgLoading()
    {
    }

    protected void onPreBgLoading()
    {
    }

    public void onResume()
    {
        super.onResume();
        initAds();
        initTitleBar();
        loadBgUrl();
    }

    public void onStop()
    {
        super.onStop();
        if (StringUtils.isNotEmpty(bgUrl) && getViewForBg() != null)
        {
            getViewForBg().setBackgroundDrawable(null);
            ImageWorker.cancelWork(getViewForBg());
        }
    }

    protected void openCustomDialogs()
    {
        if (showEmailCollectPropmt())
        {
            ViewUtils.showEmailCollectPropmtIfNeeded(getHoldActivity(), tabId);
        }
    }

    protected void preDataLoading(Activity activity)
    {
        itemId = activity.getIntent().getStringExtra("ITEM_ID");
        sectionId = activity.getIntent().getStringExtra("SECTION_ID");
    }

    protected void setBgUrl(String s)
    {
        bgUrl = s;
        getIntent().putExtra("BG_URL_EXTRA", s);
    }

    public void setFragmentName(String s)
    {
        fragmentName = s;
    }

    protected boolean showEmailCollectPropmt()
    {
        return true;
    }

    protected boolean showMailingPropmt()
    {
        return true;
    }

    protected boolean tryParseData(String s)
    {
        return true;
    }

    protected boolean tryParseData(String s, ParseStateEntity parsestateentity)
    {
        return tryParseData(s);
    }

    protected void updateControlsWithData(Activity activity)
    {
        if (bgUrl == null)
        {
            bgUrl = defineBgUrl(activity.getIntent());
        }
        loadBgUrl();
    }
}
