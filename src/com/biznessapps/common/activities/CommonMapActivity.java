// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.activities;

import android.app.Activity;
import android.app.FragmentManager;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.BackgroundInterface;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.LoadingDataInterface;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.entities.AnalyticEntity;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.entities.MapEntity;
import com.biznessapps.common.style.BZImageViewStyle;
import com.biznessapps.constants.AppConstants;
import com.biznessapps.images.NewImageManager;
import com.biznessapps.localization.CustomResources;
import com.biznessapps.location.MapUtils;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapFragment;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class CommonMapActivity extends Activity
    implements AppConstants, LoadingDataInterface, BackgroundInterface
{

    protected static final int FIRST_LOAD_TAB_INDEX = 0;
    protected static final long NO_TAB_DEFINED = -1L;
    protected String bgUrl;
    protected GoogleMap googleMap;
    protected ImageFetcher imageFetcher;
    protected String itemId;
    protected MapFragment mapFragment;
    protected Map markersHashMap;
    private Resources resources;
    protected com.biznessapps.common.fragments.CommonListFragment.ScreenListener screenListener;
    protected UiSettings settings;
    protected String tabId;

    public CommonMapActivity()
    {
        markersHashMap = new HashMap();
    }

    private void addMapPoint(MapEntity mapentity)
    {
        if (StringUtils.isNotEmpty(mapentity.getLatitude()) && StringUtils.isNotEmpty(mapentity.getLongitude()))
        {
            Object obj = getMarkerOptions(new LatLng(Double.parseDouble(mapentity.getLatitude()), Double.parseDouble(mapentity.getLongitude())), mapentity);
            obj = googleMap.addMarker(((MarkerOptions) (obj)));
            markersHashMap.put(obj, mapentity);
            if (useMapInfoWindow())
            {
                googleMap.setInfoWindowAdapter(getInfoAdapter());
                googleMap.setOnInfoWindowClickListener(new com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener() {

                    final CommonMapActivity this$0;

                    public void onInfoWindowClick(Marker marker)
                    {
                        marker = (MapEntity)markersHashMap.get(marker);
                        defineMapItemClickAction(marker);
                    }

            
            {
                this$0 = CommonMapActivity.this;
                super();
            }
                });
            }
        }
    }

    protected void addPins(MapEntity mapentity)
    {
        addMapPoint(mapentity);
        if (!markersHashMap.isEmpty())
        {
            MapUtils.defineZoom(googleMap, markersHashMap.keySet(), getZoomLevel(), useConstantZoom());
        }
    }

    protected void addPins(List list)
    {
        googleMap.clear();
        if (list != null && !list.isEmpty())
        {
            for (list = list.iterator(); list.hasNext(); addMapPoint((MapEntity)list.next())) { }
            if (!markersHashMap.isEmpty())
            {
                MapUtils.defineZoom(googleMap, markersHashMap.keySet(), getZoomLevel(), useConstantZoom());
            }
        }
    }

    public void applyBackground()
    {
        View view = getViewForBg();
        if (view != null && StringUtils.isNotEmpty(bgUrl))
        {
            AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadBgImage(bgUrl, view, settings);
        }
    }

    protected CachingManager cacher()
    {
        return AppCore.getInstance().getCachingManager();
    }

    protected void defineMapItemClickAction(MapEntity mapentity)
    {
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

    protected com.google.android.gms.maps.GoogleMap.InfoWindowAdapter getInfoAdapter()
    {
        return new com.google.android.gms.maps.GoogleMap.InfoWindowAdapter() {

            final CommonMapActivity this$0;
            private final View view;

            public View getInfoContents(Marker marker)
            {
                return null;
            }

            public View getInfoWindow(Marker marker)
            {
                marker = (MapEntity)markersHashMap.get(marker);
                ((TextView)view.findViewById(com.biznessapps.layout.R.id.title_view)).setText(marker.getGeneralInfo());
                return view;
            }

            
            {
                this$0 = CommonMapActivity.this;
                super();
                view = getLayoutInflater().inflate(com.biznessapps.layout.R.layout.map_item_dialog, null);
            }
        };
    }

    protected int getLayoutId()
    {
        return 0;
    }

    protected View getMapView()
    {
        return mapFragment.getView();
    }

    protected MarkerOptions getMarkerOptions(LatLng latlng, MapEntity mapentity)
    {
        mapentity = MapUtils.customizeMarkerBitmap(com.biznessapps.layout.R.drawable.contact_map_pin, getApplicationContext(), settings.getButtonBgColor());
        return (new MarkerOptions()).position(latlng).icon(BitmapDescriptorFactory.fromBitmap(mapentity));
    }

    protected NewImageManager getNewImageManager()
    {
        return AppCore.getInstance().getNewImageManager();
    }

    public ViewGroup getProgressBarContainer()
    {
        return (ViewGroup)findViewById(com.biznessapps.layout.R.id.progress_bar_container);
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

    public View getViewForBg()
    {
        return null;
    }

    protected int getZoomLevel()
    {
        return 15;
    }

    protected boolean hasNavigationMenu()
    {
        return true;
    }

    protected void initAds()
    {
        ViewUtils.showAdsIfNeeded(this, (ViewGroup)findViewById(com.biznessapps.layout.R.id.ads_layout_container), true);
    }

    protected void initAdsWithAlpha()
    {
        ViewUtils.showAdsIfNeeded(this, (ViewGroup)findViewById(com.biznessapps.layout.R.id.ads_layout_container), true, true);
    }

    protected void initGoogleMap()
    {
        if (mapFragment == null)
        {
            mapFragment = (MapFragment)getFragmentManager().findFragmentById(com.biznessapps.layout.R.id.mapview_v2);
        }
        if (mapFragment != null)
        {
            googleMap = mapFragment.getMap();
            if (googleMap != null)
            {
                googleMap.setMapType(1);
            }
        }
    }

    protected void initSettingsData()
    {
        tabId = getIntent().getStringExtra("TAB_SPECIAL_ID");
        itemId = getIntent().getStringExtra("ITEM_ID");
        settings = AppCore.getInstance().getUiSettings(tabId);
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        initAds();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(getLayoutId());
        if (!AppCore.getInstance().isInitialized())
        {
            AppCore.getInstance().init(getApplicationContext());
        }
        initSettingsData();
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        imageFetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
        initGoogleMap();
        ViewUtils.showEmailCollectPropmtIfNeeded(this, tabId);
    }

    protected void onResume()
    {
        super.onResume();
        initAds();
        ViewGroup viewgroup = (ViewGroup)findViewById(com.biznessapps.layout.R.id.tab_title_container);
        ViewUtils.showTitleBar(viewgroup, getIntent(), settings);
        BZImageViewStyle.getInstance(this).apply(Integer.valueOf(settings.getNavigationTextColor()), viewgroup);
        if (screenListener != null)
        {
            screenListener.onResumed();
        }
        initGoogleMap();
    }

    public void setBgUrl(String s)
    {
        bgUrl = s;
    }

    protected void setMapVisibility(boolean flag)
    {
        if (mapFragment.getView() != null)
        {
            View view = mapFragment.getView();
            int i;
            if (flag)
            {
                i = 0;
            } else
            {
                i = 8;
            }
            view.setVisibility(i);
        }
    }

    protected boolean useConstantZoom()
    {
        return false;
    }

    protected boolean useMapInfoWindow()
    {
        return true;
    }
}
