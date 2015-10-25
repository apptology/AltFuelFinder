// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.real_estate;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.LoadDataTaskExternal;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonShareableMapActivity;
import com.biznessapps.common.entities.AnalyticEntity;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.gallery.GalleryManager;
import com.biznessapps.gallery.GalleryPreviewActivity;
import com.biznessapps.localization.StringsSource;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.HeaderUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.LoaderImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.real_estate:
//            RealEstateEntity

public class RealEstateDetailActivity extends CommonShareableMapActivity
{

    public static final String N_A = "N/A";
    private String addressInfo;
    private TextView callUsButton;
    private TextView directionButton;
    private TextView emailUsButton;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable handleInBgRunnable;
    private RealEstateEntity info;
    private String itemId;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable parseDataRunnable;
    private ViewGroup propertyDetailLinkContainer;
    private ImageView shareButton;
    private String tabId;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable updateControlsRunnable;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable useCachingRunnable;

    public RealEstateDetailActivity()
    {
    }

    private boolean canUseCaching()
    {
        info = (RealEstateEntity)cacher().getData((new StringBuilder()).append("REAL_ESTATE_DETAIL_PROPERTY").append(tabId).toString());
        return info != null;
    }

    private void customizeSectionsTextViews(TextView textview, String s)
    {
        if (StringUtils.isNotEmpty(s))
        {
            textview.setText(s);
        }
        textview.setTextColor(settings.getOddRowTextColor());
    }

    private void handleInBackground()
    {
    }

    private void initCommonInfo()
    {
        Object obj = (TextView)findViewById(com.biznessapps.layout.R.id.address_view);
        TextView textview3 = (TextView)findViewById(com.biznessapps.layout.R.id.price_view);
        TextView textview = (TextView)findViewById(com.biznessapps.layout.R.id.bedroom_view);
        TextView textview1 = (TextView)findViewById(com.biznessapps.layout.R.id.shower_view);
        TextView textview2 = (TextView)findViewById(com.biznessapps.layout.R.id.distance_view);
        ImageView imageview = (ImageView)findViewById(com.biznessapps.layout.R.id.image_view);
        ((TextView) (obj)).setText(addressInfo);
        if (StringUtils.isNotEmpty(info.getPrice()) && !info.getPrice().equals("N/A") && !info.getPrice().equals("0"))
        {
            textview3.setText((new StringBuilder()).append(info.getPriceUnit()).append(info.getPrice()).toString());
        } else
        {
            textview3.setText(com.biznessapps.layout.R.string.n_a);
        }
        textview.setText(info.getBeds());
        textview1.setText(info.getBaths());
        LocationUtils.setDistanceValue(getApplicationContext(), textview2, info);
        ((TextView) (obj)).setTextColor(settings.getFeatureTextColor());
        textview3.setTextColor(settings.getFeatureTextColor());
        textview.setTextColor(settings.getFeatureTextColor());
        textview1.setTextColor(settings.getFeatureTextColor());
        textview2.setTextColor(settings.getFeatureTextColor());
        findViewById(com.biznessapps.layout.R.id.right_arrow).setVisibility(8);
        obj = findViewById(com.biznessapps.layout.R.id.detail_container);
        ((View) (obj)).setBackgroundResource(com.biznessapps.layout.R.drawable.rs_item_detail_bg);
        if (StringUtils.isNotEmpty(bgUrl))
        {
            ((View) (obj)).getBackground().setAlpha(120);
            ViewUtils.setBottomTabStyle(callUsButton, true);
            ViewUtils.setBottomTabStyle(emailUsButton, true);
            ViewUtils.setBottomTabStyle(directionButton, true);
        }
        CommonUtils.overrideImageColor(settings.getFeatureTextColor(), textview.getCompoundDrawables()[0]);
        CommonUtils.overrideImageColor(settings.getFeatureTextColor(), textview2.getCompoundDrawables()[0]);
        CommonUtils.overrideImageColor(settings.getFeatureTextColor(), textview1.getCompoundDrawables()[0]);
        imageFetcher.loadRoundedBackground(info.getImageUrl(), imageview);
    }

    private void initGallery()
    {
        if (info.getGallery() != null)
        {
            final List items = info.getGallery();
            LinearLayout linearlayout = (LinearLayout)findViewById(com.biznessapps.layout.R.id.gallery_view);
            linearlayout.removeAllViews();
            Iterator iterator = items.iterator();
            while (iterator.hasNext()) 
            {
                final com.biznessapps.gallery.GalleryData.Item item = (com.biznessapps.gallery.GalleryData.Item)iterator.next();
                ViewGroup viewgroup = (ViewGroup)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.gallery_item_layout);
                LoaderImageView loaderimageview = (LoaderImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.image_view);
                loaderimageview.setImageBitmap(null, true);
                Object obj1 = item.getFullUrl();
                Object obj = obj1;
                if (obj1 != null)
                {
                    if (((String) (obj1)).contains("?"))
                    {
                        obj = (new StringBuilder()).append(((String) (obj1))).append("&width=256").toString();
                    } else
                    {
                        obj = (new StringBuilder()).append(((String) (obj1))).append("?width=256").toString();
                    }
                }
                obj1 = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
                ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj1)).setView(null);
                ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj1)).setTint(null);
                ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj1)).setUrl(((String) (obj)));
                ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj1)).setImageSrc(true);
                ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj1)).setImageFormType(2);
                ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj1)).setImageType(1);
                loaderimageview.setImageDrawable(((String) (obj)), ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj1)));
                loaderimageview.setOnClickListener(new android.view.View.OnClickListener() {

                    final RealEstateDetailActivity this$0;
                    final com.biznessapps.gallery.GalleryData.Item val$item;
                    final List val$items;

                    public void onClick(View view)
                    {
                        view = new Intent(getApplicationContext(), com/biznessapps/gallery/GalleryPreviewActivity);
                        GalleryManager.getInstance().setGalleryItems(items);
                        view.putExtra("TAB_FRAGMENT", "GALLERY_PREVIEW_FRAGMENT");
                        view.putExtra("gallery_preview_extra", item);
                        view.putExtra("gallery_current_position_extra", items.indexOf(item));
                        startActivity(view);
                    }

            
            {
                this$0 = RealEstateDetailActivity.this;
                items = list;
                item = item1;
                super();
            }
                });
                linearlayout.addView(viewgroup);
            }
        }
    }

    private void initListeners()
    {
        callUsButton.setOnClickListener(new android.view.View.OnClickListener() {

            final RealEstateDetailActivity this$0;

            public void onClick(View view)
            {
                if (info != null)
                {
                    ViewUtils.call(RealEstateDetailActivity.this, info.getPhoneNumber());
                }
            }

            
            {
                this$0 = RealEstateDetailActivity.this;
                super();
            }
        });
        directionButton.setOnClickListener(new android.view.View.OnClickListener() {

            final RealEstateDetailActivity this$0;

            public void onClick(View view)
            {
                if (info != null)
                {
                    ViewUtils.openGoogleMap(getApplicationContext(), info.getLongitude(), info.getLatitude());
                }
            }

            
            {
                this$0 = RealEstateDetailActivity.this;
                super();
            }
        });
        emailUsButton.setOnClickListener(new android.view.View.OnClickListener() {

            final RealEstateDetailActivity this$0;

            public void onClick(View view)
            {
                if (info != null)
                {
                    ViewUtils.email(RealEstateDetailActivity.this, new String[] {
                        info.getEmail()
                    }, null);
                }
            }

            
            {
                this$0 = RealEstateDetailActivity.this;
                super();
            }
        });
        propertyDetailLinkContainer.setOnClickListener(new android.view.View.OnClickListener() {

            final RealEstateDetailActivity this$0;

            public void onClick(View view)
            {
                view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("RealEstatePropertyViewController"));
                view.putExtra("ITEM_EXTRA", info);
                view.putExtra("TAB_UNIQUE_ID", getTabId());
                view.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
                view.putExtra("TAB_FRAGMENT", "RealEstatePropertyViewController");
                view.putExtra("TAB_LABEL", getIntent().getStringExtra("TAB_LABEL"));
                startActivity(view);
            }

            
            {
                this$0 = RealEstateDetailActivity.this;
                super();
            }
        });
    }

    private void initSections()
    {
        Object obj;
        Object obj1;
        Object obj2;
        Object obj4;
        obj = (ViewGroup)findViewById(com.biznessapps.layout.R.id.property_container);
        propertyDetailLinkContainer = (ViewGroup)((ViewGroup) (obj)).findViewById(com.biznessapps.layout.R.id.data_container);
        ((TextView)((ViewGroup) (obj)).findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.property);
        ((TextView)findViewById(com.biznessapps.layout.R.id.description_container).findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.description);
        ((TextView)findViewById(com.biznessapps.layout.R.id.listed_by_container).findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.listed_by);
        int i = settings.getOddRowColorTransparent();
        HeaderUtils.customizeContainer(((ViewGroup) (obj)), i, settings);
        HeaderUtils.imageContainerCustomization(((ViewGroup) (obj)), settings);
        HeaderUtils.customizeContainer((ViewGroup)findViewById(com.biznessapps.layout.R.id.description_container), i, settings);
        HeaderUtils.customizeContainer((ViewGroup)findViewById(com.biznessapps.layout.R.id.listed_by_container), i, settings);
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.type_view), getString(com.biznessapps.layout.R.string.real_estate_type));
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.status_view), getString(com.biznessapps.layout.R.string.real_estate_status));
        obj = StringsSource.getInstance().getValue(getApplicationContext(), info.getStatus());
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.status_value_view), ((String) (obj)));
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.year_built_view), getString(com.biznessapps.layout.R.string.real_estate_year_built));
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.year_updated_view), getString(com.biznessapps.layout.R.string.real_estate_year_updated));
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.property_size_view), getString(com.biznessapps.layout.R.string.real_estate_property_size));
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.property_size_value_view), info.getSqft());
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.lot_size_view), getString(com.biznessapps.layout.R.string.real_estate_lot_size));
        obj1 = StringsSource.getInstance().getValue(getApplicationContext(), info.getType());
        obj = getString(com.biznessapps.layout.R.string.n_a);
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.type_value_view), ((String) (obj1)));
        obj1 = null;
        obj4 = null;
        obj2 = obj1;
        float f = Float.parseFloat(info.getLotSize());
        obj2 = obj1;
        String s = StringsSource.getInstance().getValue(getApplicationContext(), info.getLotUnit());
        obj2 = obj1;
        if (!StringUtils.isNotEmptyValue(info.getLotSize())) goto _L2; else goto _L1
_L1:
        obj2 = obj1;
        obj1 = String.format("%.2f %s", new Object[] {
            Float.valueOf(f), s
        });
_L5:
        obj2 = obj1;
        String s1 = StringsSource.getInstance().getValue(getApplicationContext(), info.getHouseUnit());
        s = s1;
        obj2 = obj1;
        if (!StringUtils.isEmpty(s1))
        {
            break MISSING_BLOCK_LABEL_521;
        }
        obj2 = obj1;
        s = getString(com.biznessapps.layout.R.string.real_estate_lotunit_sqft);
        obj2 = obj1;
        if (!StringUtils.isNotEmptyValue(info.getSqft())) goto _L4; else goto _L3
_L3:
        obj2 = obj1;
        s = String.format("%.2f %s", new Object[] {
            Float.valueOf(Float.parseFloat(info.getSqft())), s
        });
        obj2 = s;
_L6:
        Exception exception;
        Object obj3;
        if (info.getYearUpdated() > 0)
        {
            obj3 = (new StringBuilder()).append("").append(info.getYearUpdated()).toString();
        } else
        {
            obj3 = obj;
        }
        if (info.getYearBuild() > 0)
        {
            obj = (new StringBuilder()).append("").append(info.getYearBuild()).toString();
        }
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.year_updated_value_view), ((String) (obj3)));
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.year_built_value_view), ((String) (obj)));
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.property_size_value_view), ((String) (obj2)));
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.lot_size_value_view), ((String) (obj1)));
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.description_view), info.getDescription());
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.agent_view), getString(com.biznessapps.layout.R.string.real_estate_agent));
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.agent_value_view), info.getAgent());
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.email_view), getString(com.biznessapps.layout.R.string.real_estate_email));
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.email_value_view), info.getEmail());
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.phone_view), getString(com.biznessapps.layout.R.string.real_estate_phone));
        customizeSectionsTextViews((TextView)findViewById(com.biznessapps.layout.R.id.phone_value_view), info.getPhoneNumber());
        obj = (ImageView)findViewById(com.biznessapps.layout.R.id.property_detail_arrow_view);
        CommonUtils.overrideImageColor(settings.getOddRowTextColor(), ((ImageView) (obj)).getDrawable());
        return;
_L2:
        obj1 = obj;
          goto _L5
_L4:
        obj2 = obj;
          goto _L6
        exception;
        exception.printStackTrace();
        exception = ((Exception) (obj2));
        obj2 = obj4;
          goto _L6
    }

    private void initViews()
    {
        ViewUtils.setRootBgColor(findViewById(com.biznessapps.layout.R.id.root_layout), settings);
        callUsButton = (TextView)findViewById(com.biznessapps.layout.R.id.call_us_button);
        directionButton = (TextView)findViewById(com.biznessapps.layout.R.id.direction_button);
        emailUsButton = (TextView)findViewById(com.biznessapps.layout.R.id.email_us_button);
        callUsButton.setText(com.biznessapps.layout.R.string.call_us);
        directionButton.setText(com.biznessapps.layout.R.string.directions);
        emailUsButton.setText(com.biznessapps.layout.R.string.email);
        shareButton = (ImageView)findViewById(com.biznessapps.layout.R.id.share_button);
        CommonUtils.setColorWithoutMutation(settings.getNavigationTextColor(), shareButton.getDrawable());
        shareButton.setOnClickListener(new android.view.View.OnClickListener() {

            final RealEstateDetailActivity this$0;

            public void onClick(View view)
            {
                ShareComponent.showSharingOptionDialog(RealEstateDetailActivity.this);
            }

            
            {
                this$0 = RealEstateDetailActivity.this;
                super();
            }
        });
        ViewUtils.setBottomTabStyle(callUsButton);
        ViewUtils.setBottomTabStyle(emailUsButton);
        ViewUtils.setBottomTabStyle(directionButton);
    }

    private void loadBgUrl()
    {
        if (info != null && StringUtils.isNotEmpty(info.getBackground()))
        {
            bgUrl = info.getBackground();
            AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadBgImage(bgUrl, findViewById(com.biznessapps.layout.R.id.root_layout), settings);
        }
    }

    private void loadContent()
    {
        addressInfo = getIntent().getStringExtra("TEXT_EXTRA");
        if (canUseCaching())
        {
            updateControlsWithData(this);
            return;
        } else
        {
            tabId = getIntent().getStringExtra("TAB_SPECIAL_ID");
            itemId = getIntent().getStringExtra("ITEM_ID");
            String s = String.format("realestate_detail.php?app_code=%s&id=%s&tab_id=%s", new Object[] {
                cacher().getAppCode(), itemId, tabId
            });
            LoadDataTaskExternal loaddatataskexternal = new LoadDataTaskExternal(this, new ArrayList());
            loaddatataskexternal.setRequestUrl(s);
            useCachingRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() {

                final RealEstateDetailActivity this$0;

                public void run()
                {
                    canUseCaching();
                }

            
            {
                this$0 = RealEstateDetailActivity.this;
                super();
            }
            };
            loaddatataskexternal.setCanUseCachingRunnable(useCachingRunnable);
            handleInBgRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() {

                final RealEstateDetailActivity this$0;

                public void run()
                {
                    handleInBackground();
                }

            
            {
                this$0 = RealEstateDetailActivity.this;
                super();
            }
            };
            loaddatataskexternal.setHandleInBgRunnable(handleInBgRunnable);
            parseDataRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() {

                final RealEstateDetailActivity this$0;

                public void run()
                {
                    tryParseData(getDataToParse());
                }

            
            {
                this$0 = RealEstateDetailActivity.this;
                super();
            }
            };
            loaddatataskexternal.setParseDataRunnable(parseDataRunnable);
            updateControlsRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() {

                final RealEstateDetailActivity this$0;

                public void run()
                {
                    updateControlsWithData(getActivity());
                }

            
            {
                this$0 = RealEstateDetailActivity.this;
                super();
            }
            };
            loaddatataskexternal.setUpdateControlsRunnable(updateControlsRunnable);
            loaddatataskexternal.launch();
            return;
        }
    }

    private boolean tryParseData(String s)
    {
        info = JsonParser.parseRealEstateItem(s);
        return cacher().saveData((new StringBuilder()).append("REAL_ESTATE_DETAIL_PROPERTY").append(tabId).toString(), info);
    }

    private void updateControlsWithData(Activity activity)
    {
        loadBgUrl();
        findViewById(com.biznessapps.layout.R.id.root_layout).setVisibility(0);
        addPins(info);
        initCommonInfo();
        initSections();
        initListeners();
        initGallery();
    }

    protected AnalyticEntity getAnalyticData()
    {
        AnalyticEntity analyticentity = super.getAnalyticData();
        analyticentity.setItemId(getIntent().getStringExtra("LOCATION_ID"));
        return analyticentity;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.real_estate_detail_layout;
    }

    public ViewGroup getProgressBarContainer()
    {
        return (ViewGroup)findViewById(com.biznessapps.layout.R.id.progress_bar_container);
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initViews();
        loadContent();
    }

    protected void onResume()
    {
        super.onResume();
        ViewUtils.setRootBgColor(findViewById(com.biznessapps.layout.R.id.contact_layout), settings);
        loadBgUrl();
    }





}
