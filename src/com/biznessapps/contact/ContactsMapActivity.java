// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.contact;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.LoadDataTaskExternal;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonShareableMapActivity;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.entities.AnalyticEntity;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.common.entities.NetworkResultEntity;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.common.social.ui.SocialCommentComponent;
import com.biznessapps.localization.StringsSource;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.location.entities.LocationOpeningTime;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.HeaderUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ContactsMapActivity extends CommonShareableMapActivity
{
    private static class OpenHoursEntity extends CommonListEntity
    {

        private static final long serialVersionUID = 0x16c873fa7a609e1dL;
        private String leftLabel;
        private String rightLabel;

        public String getLeftLabel()
        {
            return leftLabel;
        }

        public String getRightLabel()
        {
            return rightLabel;
        }

        public OpenHoursEntity(String s, String s1)
        {
            leftLabel = s;
            rightLabel = s1;
        }
    }

    public class OpeningHoursAdapter extends AbstractAdapter
    {

        final ContactsMapActivity this$0;

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            OpenHoursEntity openhoursentity;
            if (view == null)
            {
                view = inflater.inflate(layoutItemResourceId, null);
                viewgroup = new ViewHolder();
                viewgroup.leftLabel = (TextView)view.findViewById(com.biznessapps.layout.R.id.left_label_view);
                viewgroup.rightLabel = (TextView)view.findViewById(com.biznessapps.layout.R.id.right_label_view);
                view.setTag(viewgroup);
            } else
            {
                viewgroup = (ViewHolder)view.getTag();
            }
            openhoursentity = (OpenHoursEntity)getItem(i);
            if (openhoursentity != null)
            {
                ((ViewHolder) (viewgroup)).leftLabel.setText(openhoursentity.getLeftLabel());
                ((ViewHolder) (viewgroup)).rightLabel.setText(openhoursentity.getRightLabel());
                if (openhoursentity.hasColor())
                {
                    view.setBackgroundDrawable(getListItemDrawable(openhoursentity.getItemColor()));
                    setTextColorToView(openhoursentity.getItemTextColor(), new TextView[] {
                        ((ViewHolder) (viewgroup)).leftLabel, ((ViewHolder) (viewgroup)).rightLabel
                    });
                }
            }
            return view;
        }

        public OpeningHoursAdapter(Context context, List list, UiSettings uisettings)
        {
            this$0 = ContactsMapActivity.this;
            super(context, list, com.biznessapps.layout.R.layout.opening_hours_row, uisettings);
        }
    }

    private static class ViewHolder
    {

        TextView leftLabel;
        TextView rightLabel;

        private ViewHolder()
        {
        }

    }


    private static final int FIRST_INDEX = 0;
    private TextView addressTextView;
    private TextView callUsButton;
    private TextView directionButton;
    private TextView emailUsButton;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable handleInBgRunnable;
    private String locationId;
    private LocationEntity locationInfo;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable parseDataRunnable;
    private ViewGroup rootContainer;
    private ImageView shareButton;
    private String tabId;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable updateControlsRunnable;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable useCachingRunnable;
    private TextView viewWebsiteButton;

    public ContactsMapActivity()
    {
    }

    private boolean canUseCaching()
    {
        locationInfo = (LocationEntity)cacher().getData((new StringBuilder()).append("LOCATIONS_MAP_PROPERTY").append(locationId).toString());
        return locationInfo != null;
    }

    private void customizeContainer(ViewGroup viewgroup, List list)
    {
        if (list != null && !list.isEmpty())
        {
            RefreshableListView refreshablelistview = (RefreshableListView)viewgroup.findViewById(com.biznessapps.layout.R.id.list_view);
            ArrayList arraylist = new ArrayList();
            for (list = list.iterator(); list.hasNext(); arraylist.add(ViewUtils.getWrappedItem((OpenHoursEntity)list.next(), arraylist, settings))) { }
            HeaderUtils.customizeContainer(viewgroup, ((OpenHoursEntity)arraylist.get(arraylist.size() - 1)).getItemColor(), settings);
            refreshablelistview.setAdapter(new OpeningHoursAdapter(getApplicationContext(), arraylist, settings));
            refreshablelistview.setExpandOn(true);
        }
    }

    private void handleInBackground()
    {
    }

    private void initListeners()
    {
        callUsButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ContactsMapActivity this$0;

            public void onClick(View view)
            {
                if (locationInfo != null)
                {
                    ViewUtils.call(ContactsMapActivity.this, locationInfo.getTelephone());
                }
            }

            
            {
                this$0 = ContactsMapActivity.this;
                super();
            }
        });
        viewWebsiteButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ContactsMapActivity this$0;

            public void onClick(View view)
            {
                if (locationInfo != null)
                {
                    ViewUtils.openLinkInBrowser(getApplicationContext(), locationInfo.getWebsite());
                }
            }

            
            {
                this$0 = ContactsMapActivity.this;
                super();
            }
        });
        directionButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ContactsMapActivity this$0;

            public void onClick(View view)
            {
                if (locationInfo != null)
                {
                    ViewUtils.openGoogleMap(getApplicationContext(), locationInfo.getLongitude(), locationInfo.getLatitude());
                }
            }

            
            {
                this$0 = ContactsMapActivity.this;
                super();
            }
        });
        emailUsButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ContactsMapActivity this$0;

            public void onClick(View view)
            {
                if (locationInfo != null)
                {
                    ViewUtils.email(ContactsMapActivity.this, new String[] {
                        locationInfo.getEmail()
                    }, null);
                }
            }

            
            {
                this$0 = ContactsMapActivity.this;
                super();
            }
        });
        shareButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ContactsMapActivity this$0;

            public void onClick(View view)
            {
                ShareComponent.showSharingOptionDialog(ContactsMapActivity.this);
            }

            
            {
                this$0 = ContactsMapActivity.this;
                super();
            }
        });
    }

    private void initViews()
    {
        rootContainer = (ViewGroup)findViewById(com.biznessapps.layout.R.id.contact_layout);
        callUsButton = (TextView)findViewById(com.biznessapps.layout.R.id.call_us_button);
        directionButton = (TextView)findViewById(com.biznessapps.layout.R.id.direction_button);
        viewWebsiteButton = (TextView)findViewById(com.biznessapps.layout.R.id.view_website_button);
        emailUsButton = (TextView)findViewById(com.biznessapps.layout.R.id.email_us_button);
        ViewUtils.setBottomTabStyle(callUsButton);
        ViewUtils.setBottomTabStyle(viewWebsiteButton);
        ViewUtils.setBottomTabStyle(emailUsButton);
        ViewUtils.setBottomTabStyle(directionButton);
        addressTextView = (TextView)findViewById(com.biznessapps.layout.R.id.title_address_label);
        shareButton = (ImageView)findViewById(com.biznessapps.layout.R.id.share_button);
        CommonUtils.setColorWithoutMutation(settings.getNavigationTextColor(), shareButton.getDrawable());
        ViewGroup viewgroup = (ViewGroup)findViewById(com.biznessapps.layout.R.id.opening_hours_container);
        HeaderUtils.imageContainerCustomization(viewgroup, settings);
        int i = settings.getOddRowColorTransparent();
        HeaderUtils.customizeContainer(viewgroup, i, settings);
        ViewGroup viewgroup1 = (ViewGroup)findViewById(com.biznessapps.layout.R.id.comments_container);
        HeaderUtils.customizeContainer(viewgroup1, i, settings);
        viewgroup1.findViewById(com.biznessapps.layout.R.id.arrow_navigation).performClick();
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.opening_hours);
        ((TextView)viewgroup1.findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.comments);
        callUsButton.setText(com.biznessapps.layout.R.string.call_us);
        directionButton.setText(com.biznessapps.layout.R.string.directions);
        emailUsButton.setText(com.biznessapps.layout.R.string.email);
        viewWebsiteButton.setText(com.biznessapps.layout.R.string.view_website);
        if (AppCore.getInstance().getAppSettings().shouldHideComments())
        {
            viewgroup1.setVisibility(8);
            return;
        } else
        {
            SocialCommentComponent socialcommentcomponent = new SocialCommentComponent(this, rootContainer, locationId, tabId, settings, 1);
            socialcommentcomponent.setEnableListViewScroll(false);
            socialcommentcomponent.loadCommentsData();
            return;
        }
    }

    private boolean isDataNotEmpty(LocationEntity locationentity)
    {
label0:
        {
            boolean flag1 = false;
            if (locationentity != null)
            {
                boolean flag;
                if (StringUtils.isNotEmpty(locationInfo.getLatitude()) && StringUtils.isNotEmpty(locationInfo.getLongitude()))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                flag1 = StringUtils.isNotEmpty(LocationUtils.getFullAddress(locationInfo));
                if (!flag || !flag1)
                {
                    break label0;
                }
                flag1 = true;
            }
            return flag1;
        }
        return false;
    }

    private void loadBgUrl()
    {
        if (locationInfo != null)
        {
            bgUrl = locationInfo.getImageUrl();
        }
        if (StringUtils.isNotEmpty(bgUrl))
        {
            AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadBgImage(bgUrl, rootContainer, settings);
        }
    }

    private void loadContent()
    {
        String s = String.format("location.php?app_code=%s", new Object[] {
            cacher().getAppCode()
        });
        Object obj = s;
        if (StringUtils.isNotEmpty(locationId))
        {
            obj = (new StringBuilder()).append(s).append(String.format("&location_id=%s", new Object[] {
                locationId
            })).toString();
        }
        s = ((String) (obj));
        if (StringUtils.isNotEmpty(tabId))
        {
            s = (new StringBuilder()).append(((String) (obj))).append(String.format("&tab_id=%s", new Object[] {
                tabId
            })).toString();
        }
        obj = new LoadDataTaskExternal(this, new ArrayList());
        ((LoadDataTaskExternal) (obj)).setRequestUrl(s);
        useCachingRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() {

            final ContactsMapActivity this$0;

            public void run()
            {
                canUseCaching();
            }

            
            {
                this$0 = ContactsMapActivity.this;
                super();
            }
        };
        ((LoadDataTaskExternal) (obj)).setCanUseCachingRunnable(useCachingRunnable);
        handleInBgRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() {

            final ContactsMapActivity this$0;

            public void run()
            {
                handleInBackground();
            }

            
            {
                this$0 = ContactsMapActivity.this;
                super();
            }
        };
        ((LoadDataTaskExternal) (obj)).setHandleInBgRunnable(handleInBgRunnable);
        parseDataRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() {

            final ContactsMapActivity this$0;

            public void run()
            {
                tryParseData(getDataToParse());
            }

            
            {
                this$0 = ContactsMapActivity.this;
                super();
            }
        };
        ((LoadDataTaskExternal) (obj)).setParseDataRunnable(parseDataRunnable);
        updateControlsRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() {

            final ContactsMapActivity this$0;

            public void run()
            {
                updateControlsWithData(getActivity());
            }

            
            {
                this$0 = ContactsMapActivity.this;
                super();
            }
        };
        ((LoadDataTaskExternal) (obj)).setUpdateControlsRunnable(updateControlsRunnable);
        ((LoadDataTaskExternal) (obj)).launch();
    }

    private void preDataLoading()
    {
        tabId = getIntent().getStringExtra("TAB_SPECIAL_ID");
        locationId = getIntent().getStringExtra("LOCATION_ID");
    }

    private boolean tryParseData(String s)
    {
        s = JsonParser.parseLocation(s);
        boolean flag;
        if (s != null && ((LocationEntity)s.get(0)).getNetworkResult().isOk())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            locationInfo = (LocationEntity)s.get(0);
            cacher().saveData((new StringBuilder()).append("LOCATIONS_MAP_PROPERTY").append(locationId).toString(), locationInfo);
        }
        return locationInfo != null;
    }

    private void updateControlsWithData(Activity activity)
    {
        loadBgUrl();
        if (!isDataNotEmpty(locationInfo))
        {
            ViewUtils.showCustomToast(activity.getApplicationContext(), getString(com.biznessapps.layout.R.string.nothing_found));
        } else
        {
            ViewGroup viewgroup;
            ArrayList arraylist;
            if (StringUtils.isNotEmpty(locationInfo.getLatitude()) && StringUtils.isNotEmpty(locationInfo.getLongitude()))
            {
                addPins(locationInfo);
            } else
            {
                setMapVisibility(false);
            }
            activity = locationInfo.getAddressInfo("\n");
            if (activity.length() > 0)
            {
                addressTextView.setText(activity);
                addressTextView.setVisibility(0);
            } else
            {
                addressTextView.setVisibility(8);
            }
            viewgroup = (ViewGroup)findViewById(com.biznessapps.layout.R.id.opening_hours_container);
            HeaderUtils.imageContainerCustomization(viewgroup, settings);
            arraylist = new ArrayList();
            if (locationInfo.getOpeningTimes().size() > 0)
            {
                Iterator iterator = locationInfo.getOpeningTimes().iterator();
                while (iterator.hasNext()) 
                {
                    LocationOpeningTime locationopeningtime = (LocationOpeningTime)iterator.next();
                    String s;
                    String s1;
                    if (StringUtils.isNotEmpty(locationopeningtime.getOpenFrom()))
                    {
                        activity = new StringBuilder(locationopeningtime.getOpenFrom());
                        if (StringUtils.isNotEmpty(locationopeningtime.getOpenTo()))
                        {
                            activity.append(" - ").append(locationopeningtime.getOpenTo());
                        }
                        activity = activity.toString();
                    } else
                    {
                        activity = "";
                    }
                    s1 = StringsSource.getInstance().getValue(getApplicationContext(), locationopeningtime.getDay());
                    s = s1;
                    if (s1 == null)
                    {
                        s = locationopeningtime.getDay();
                    }
                    arraylist.add(new OpenHoursEntity(s, activity));
                }
            }
            customizeContainer(viewgroup, arraylist);
            if (!arraylist.isEmpty())
            {
                viewgroup.findViewById(com.biznessapps.layout.R.id.arrow_navigation).performClick();
            }
            activity = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
            if (StringUtils.isNotEmpty(locationInfo.getImage1()))
            {
                com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
                imageloadparams.setView(findViewById(com.biznessapps.layout.R.id.image_left_box));
                imageloadparams.setTint(null);
                imageloadparams.setUrl(locationInfo.getImage1());
                imageloadparams.setImageSrc(true);
                imageloadparams.setImageType(2);
                activity.loadImage(imageloadparams);
            }
            if (StringUtils.isNotEmpty(locationInfo.getImage2()))
            {
                com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams1 = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
                imageloadparams1.setView(findViewById(com.biznessapps.layout.R.id.image_right_box));
                imageloadparams1.setTint(null);
                imageloadparams1.setUrl(locationInfo.getImage2());
                imageloadparams1.setImageSrc(true);
                imageloadparams1.setImageType(2);
                activity.loadImage(imageloadparams1);
            }
            if (StringUtils.isNotEmpty(bgUrl))
            {
                ViewUtils.setBottomTabStyle(callUsButton, true);
                ViewUtils.setBottomTabStyle(emailUsButton, true);
                ViewUtils.setBottomTabStyle(directionButton, true);
                ViewUtils.setBottomTabStyle(viewWebsiteButton, true);
                return;
            }
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
        return com.biznessapps.layout.R.layout.contact_layout;
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
        preDataLoading();
        initViews();
        initListeners();
        loadContent();
    }

    protected void onResume()
    {
        super.onResume();
        ViewUtils.setRootBgColor(rootContainer, settings);
        loadBgUrl();
    }

    protected boolean useMapInfoWindow()
    {
        return false;
    }





}
