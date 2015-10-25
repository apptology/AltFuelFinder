// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.around_us;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonShareableMapActivity;
import com.biznessapps.common.entities.AnalyticEntity;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.entities.MapEntity;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.common.social.ui.SocialCommentComponent;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.location.MapUtils;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.HeaderUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.widgets.SmartWebView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import java.util.ArrayList;
import java.util.List;

public class AroundUsDetailActivity extends CommonShareableMapActivity
{

    private TextView addressTextView;
    private TextView callUsButton;
    private SmartWebView descriptionWebView;
    private TextView directionButton;
    private TextView distanceTextView;
    private TextView emailUsButton;
    private ImageView iconView;
    private AroundUsEntity.PoiItem item;
    private TextView nameTextView;
    private ViewGroup root;
    private ImageView shareButton;
    private TextView viewWebsiteButton;

    public AroundUsDetailActivity()
    {
    }

    private void initListeners()
    {
        callUsButton.setOnClickListener(new android.view.View.OnClickListener() {

            final AroundUsDetailActivity this$0;

            public void onClick(View view)
            {
                if (item != null)
                {
                    ViewUtils.call(AroundUsDetailActivity.this, item.getLocation().getTelephone());
                }
            }

            
            {
                this$0 = AroundUsDetailActivity.this;
                super();
            }
        });
        viewWebsiteButton.setOnClickListener(new android.view.View.OnClickListener() {

            final AroundUsDetailActivity this$0;

            public void onClick(View view)
            {
                if (item != null)
                {
                    ViewUtils.openLinkInBrowser(getApplicationContext(), item.getLocation().getWebsite());
                }
            }

            
            {
                this$0 = AroundUsDetailActivity.this;
                super();
            }
        });
        directionButton.setOnClickListener(new android.view.View.OnClickListener() {

            final AroundUsDetailActivity this$0;

            public void onClick(View view)
            {
                if (item != null)
                {
                    ViewUtils.openGoogleMap(getApplicationContext(), item.getLongitude(), item.getLatitude());
                }
            }

            
            {
                this$0 = AroundUsDetailActivity.this;
                super();
            }
        });
        emailUsButton.setOnClickListener(new android.view.View.OnClickListener() {

            final AroundUsDetailActivity this$0;

            public void onClick(View view)
            {
                if (item != null)
                {
                    ViewUtils.email(AroundUsDetailActivity.this, new String[] {
                        item.getLocation().getEmail()
                    }, null);
                }
            }

            
            {
                this$0 = AroundUsDetailActivity.this;
                super();
            }
        });
        shareButton.setOnClickListener(new android.view.View.OnClickListener() {

            final AroundUsDetailActivity this$0;

            public void onClick(View view)
            {
                ShareComponent.showSharingOptionDialog(AroundUsDetailActivity.this);
            }

            
            {
                this$0 = AroundUsDetailActivity.this;
                super();
            }
        });
    }

    private void initViews()
    {
        root = (ViewGroup)findViewById(com.biznessapps.layout.R.id.around_us_detail_root);
        ViewGroup viewgroup = (ViewGroup)findViewById(com.biznessapps.layout.R.id.contact_buttons_container);
        callUsButton = (TextView)findViewById(com.biznessapps.layout.R.id.call_us_button);
        directionButton = (TextView)findViewById(com.biznessapps.layout.R.id.direction_button);
        viewWebsiteButton = (TextView)findViewById(com.biznessapps.layout.R.id.view_website_button);
        emailUsButton = (TextView)findViewById(com.biznessapps.layout.R.id.email_us_button);
        nameTextView = (TextView)findViewById(com.biznessapps.layout.R.id.title_label);
        addressTextView = (TextView)findViewById(com.biznessapps.layout.R.id.title_address_label);
        distanceTextView = (TextView)findViewById(com.biznessapps.layout.R.id.around_us_distance);
        descriptionWebView = (SmartWebView)findViewById(com.biznessapps.layout.R.id.description_text);
        shareButton = (ImageView)findViewById(com.biznessapps.layout.R.id.share_button);
        callUsButton.setText(com.biznessapps.layout.R.string.call_us);
        directionButton.setText(com.biznessapps.layout.R.string.directions);
        emailUsButton.setText(com.biznessapps.layout.R.string.email);
        viewWebsiteButton.setText(com.biznessapps.layout.R.string.view_website);
        ViewUtils.setBottomTabStyle(callUsButton);
        ViewUtils.setBottomTabStyle(directionButton);
        ViewUtils.setBottomTabStyle(viewWebsiteButton);
        ViewUtils.setBottomTabStyle(emailUsButton);
        ViewUtils.setRootBgColor(root, settings);
        viewgroup.setBackgroundColor(ViewUtils.addAlpha(settings.getButtonBgColor(), 180));
        int i = ViewUtils.getColor(item.getColor());
        CommonUtils.overrideImageColor(i, distanceTextView.getCompoundDrawables()[0]);
        addressTextView.setTextColor(i);
        distanceTextView.setTextColor(i);
        iconView = (ImageView)root.findViewById(com.biznessapps.layout.R.id.image_view);
        CommonUtils.overrideImageColor(i, ((ImageView)root.findViewById(com.biznessapps.layout.R.id.image_view_border)).getBackground());
        CommonUtils.setColorWithoutMutation(settings.getNavigationTextColor(), shareButton.getDrawable());
        viewgroup = (ViewGroup)findViewById(com.biznessapps.layout.R.id.description_container);
        HeaderUtils.imageContainerCustomization(viewgroup, settings);
        i = settings.getOddRowColorTransparent();
        HeaderUtils.customizeContainer(viewgroup, i, settings);
        ViewGroup viewgroup1 = (ViewGroup)findViewById(com.biznessapps.layout.R.id.comments_container);
        HeaderUtils.customizeContainer(viewgroup1, i, settings);
        viewgroup.findViewById(com.biznessapps.layout.R.id.arrow_navigation).performClick();
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.description);
        ((TextView)viewgroup1.findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.comments);
        if (AppCore.getInstance().getAppSettings().shouldHideComments())
        {
            viewgroup1.setVisibility(8);
            return;
        } else
        {
            viewgroup1.findViewById(com.biznessapps.layout.R.id.arrow_navigation).performClick();
            SocialCommentComponent socialcommentcomponent = new SocialCommentComponent(this, root, item.getId(), tabId, settings, 1);
            socialcommentcomponent.setEnableListViewScroll(false);
            socialcommentcomponent.loadCommentsData();
            return;
        }
    }

    private void loadBgUrl()
    {
        String s = getIntent().getStringExtra("BG_URL_EXTRA");
        if (StringUtils.isNotEmpty(s))
        {
            AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadBgImage(s, root, settings);
        }
    }

    private void loadContent()
    {
        loadBgUrl();
        ImageFetcher imagefetcher;
        if (item != null && StringUtils.isNotEmpty(item.getLatitude()) && StringUtils.isNotEmpty(item.getLongitude()))
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(item);
            addPins(arraylist);
            LocationUtils.setDistanceValue(getApplicationContext(), distanceTextView, item);
            distanceTextView.setVisibility(0);
        } else
        {
            setMapVisibility(false);
        }
        if (StringUtils.isNotEmpty(item.getName()))
        {
            nameTextView.setText(item.getName());
            nameTextView.setVisibility(0);
        } else
        {
            nameTextView.setVisibility(8);
        }
        if (StringUtils.isNotEmpty(item.getCategoryName()))
        {
            addressTextView.setText(item.getCategoryName());
            addressTextView.setVisibility(0);
        } else
        {
            addressTextView.setVisibility(8);
        }
        if (StringUtils.isNotEmpty(item.getDescription()))
        {
            ViewUtils.plubWebView(descriptionWebView);
            String s = item.getDescription().replaceAll("background-color:", "");
            descriptionWebView.loadDataWithBaseURL(null, s, "text/html", "utf-8", null);
            descriptionWebView.setBackgroundColor(Color.argb(1, 0, 0, 0));
        }
        imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
        if (StringUtils.isNotEmpty(item.getImageUrl()))
        {
            imagefetcher.loadCircledBackground(item.getImageUrl(), iconView);
        }
    }

    protected AnalyticEntity getAnalyticData()
    {
        AnalyticEntity analyticentity = super.getAnalyticData();
        analyticentity.setItemId(getIntent().getStringExtra("LOCATION_ID"));
        return analyticentity;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.around_us_detail_layout;
    }

    protected MarkerOptions getMarkerOptions(LatLng latlng, MapEntity mapentity)
    {
        if (mapentity.isCurrentLocoation())
        {
            mapentity = BitmapFactory.decodeResource(getResources(), com.biznessapps.layout.R.drawable.my_location_bubble);
            float f = getResources().getDimension(com.biznessapps.layout.R.dimen.map_pin_size);
            float f1 = ((float)mapentity.getHeight() * f) / (float)mapentity.getWidth();
            mapentity = Bitmap.createScaledBitmap(mapentity, (int)f, (int)f1, false);
        } else
        {
            mapentity = MapUtils.customizeMarkerBitmap(com.biznessapps.layout.R.drawable.contact_map_pin, getApplicationContext(), ViewUtils.getColor(mapentity.getColor()));
        }
        return (new MarkerOptions()).position(latlng).icon(BitmapDescriptorFactory.fromBitmap(mapentity));
    }

    public ViewGroup getProgressBarContainer()
    {
        return (ViewGroup)findViewById(com.biznessapps.layout.R.id.progress_bar_container);
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    protected void initSettingsData()
    {
        super.initSettingsData();
        item = (AroundUsEntity.PoiItem)getIntent().getSerializableExtra("AROUND_US_ITEM_EXTRA");
    }

    public void onBackPressed()
    {
        ViewUtils.canGoBack(descriptionWebView);
        super.onBackPressed();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initViews();
        initListeners();
        loadContent();
    }

    protected void onResume()
    {
        super.onResume();
        loadBgUrl();
    }

    protected boolean useMapInfoWindow()
    {
        return false;
    }

}
