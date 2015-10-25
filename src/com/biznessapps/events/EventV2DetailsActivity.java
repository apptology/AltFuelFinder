// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.AsyncCallback;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.LoadDataTaskExternal;
import com.biznessapps.api.UiSettings;
import com.biznessapps.api.UrlWrapper;
import com.biznessapps.common.activities.CommonShareableMapActivity;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.entities.NetworkResultEntity;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.common.social.ui.SocialCommentComponent;
import com.biznessapps.common.social.ui.SocialLoginPopupView;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.SmartWebView;
import com.google.android.gms.maps.GoogleMap;
import java.io.File;
import java.util.ArrayList;

// Referenced classes of package com.biznessapps.events:
//            EventEntity, EventPhotosTabUtils, EventGoingTabUtils, UploadPhotoUtils, 
//            EventDetailsFragment

public class EventV2DetailsActivity extends CommonShareableMapActivity
{

    private ImageView addCalendarButton;
    private Button commentsButton;
    private ViewGroup commentsTabContainer;
    private TextView commentsView;
    private TextView eventDescriptionLabelView;
    private String eventDetailId;
    private TextView eventDirectionView;
    private TextView eventTextView;
    private TextView eventTimeView;
    private Button goingButton;
    private ViewGroup goingTabContainer;
    private TextView goingView;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable handleInBgRunnable;
    private ImageView headerImageView;
    private Uri imageUri;
    private Button infoButton;
    private ViewGroup infoTabContainer;
    private boolean isUpcomingEvent;
    private EventEntity item;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable parseDataRunnable;
    private Button photosButton;
    private ViewGroup photosTabContainer;
    private TextView photosView;
    private ViewGroup progressPhotoContainer;
    private ViewGroup root;
    private ImageView shareButton;
    private TextView titleView;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable updateControlsRunnable;
    private SmartWebView webView;

    public EventV2DetailsActivity()
    {
    }

    private void activateButton(Button button, ViewGroup viewgroup)
    {
        infoButton.setSelected(false);
        commentsButton.setSelected(false);
        goingButton.setSelected(false);
        photosButton.setSelected(false);
        button.setSelected(true);
        infoTabContainer.setVisibility(8);
        commentsTabContainer.setVisibility(8);
        goingTabContainer.setVisibility(8);
        photosTabContainer.setVisibility(8);
        viewgroup.setVisibility(0);
    }

    private void defineViewsAccessOnLoading()
    {
        progressPhotoContainer.addView(ViewUtils.getProgressBar(this));
    }

    private void initViews()
    {
        root = (ViewGroup)findViewById(com.biznessapps.layout.R.id.root_container);
        ViewUtils.setRootBgColor(root, settings);
        infoTabContainer = (ViewGroup)findViewById(com.biznessapps.layout.R.id.event_info_tab_container);
        ViewUtils.setRootBgColor(infoTabContainer, settings);
        commentsTabContainer = (ViewGroup)findViewById(com.biznessapps.layout.R.id.comments_container);
        goingTabContainer = (ViewGroup)findViewById(com.biznessapps.layout.R.id.event_going_tab_container);
        photosTabContainer = (ViewGroup)findViewById(com.biznessapps.layout.R.id.event_photo_tab_container);
        progressPhotoContainer = (ViewGroup)photosTabContainer.findViewById(com.biznessapps.layout.R.id.progress_bar_container);
        webView = (SmartWebView)findViewById(com.biznessapps.layout.R.id.webview);
        eventTextView = (TextView)findViewById(com.biznessapps.layout.R.id.event_text);
        eventTimeView = (TextView)findViewById(com.biznessapps.layout.R.id.time_view);
        eventDirectionView = (TextView)findViewById(com.biznessapps.layout.R.id.direction_view);
        eventDescriptionLabelView = (TextView)findViewById(com.biznessapps.layout.R.id.description_text);
        eventTimeView.setText(com.biznessapps.layout.R.string.checkin);
        eventDirectionView.setText(com.biznessapps.layout.R.string.directions);
        eventDescriptionLabelView.setText(com.biznessapps.layout.R.string.description);
        eventTextView.setTextColor(settings.getFeatureTextColor());
        eventTimeView.setTextColor(settings.getFeatureTextColor());
        eventDirectionView.setTextColor(settings.getFeatureTextColor());
        eventDescriptionLabelView.setTextColor(settings.getFeatureTextColor());
        ((ImageView)findViewById(com.biznessapps.layout.R.id.separate_line)).setBackgroundColor(settings.getFeatureTextColor());
        CommonUtils.overrideImageColor(settings.getFeatureTextColor(), eventTimeView.getCompoundDrawables()[0]);
        CommonUtils.overrideImageColor(settings.getFeatureTextColor(), eventDirectionView.getCompoundDrawables()[0]);
        ((ViewGroup)findViewById(com.biznessapps.layout.R.id.event_new_buttons_container)).setBackgroundColor(settings.getNavigationBarColor());
        Object obj = (ViewGroup)findViewById(com.biznessapps.layout.R.id.bottom_buttons_container);
        CommonUtils.setColorWithoutMutation(settings.getSectionBarColor(), ((ViewGroup) (obj)).getBackground());
        infoButton = (Button)findViewById(com.biznessapps.layout.R.id.event_new_info_button);
        commentsButton = (Button)findViewById(com.biznessapps.layout.R.id.event_new_comments_button);
        goingButton = (Button)findViewById(com.biznessapps.layout.R.id.event_new_going_button);
        photosButton = (Button)findViewById(com.biznessapps.layout.R.id.event_new_photos_button);
        headerImageView = (ImageView)findViewById(com.biznessapps.layout.R.id.info_header_image);
        photosView = (TextView)findViewById(com.biznessapps.layout.R.id.photos_view);
        commentsView = (TextView)findViewById(com.biznessapps.layout.R.id.comments_view);
        goingView = (TextView)findViewById(com.biznessapps.layout.R.id.going_view);
        photosView.setTextColor(settings.getSectionTextColor());
        commentsView.setTextColor(settings.getSectionTextColor());
        goingView.setTextColor(settings.getSectionTextColor());
        infoButton.setText(com.biznessapps.layout.R.string.about);
        commentsButton.setText(com.biznessapps.layout.R.string.comments);
        goingButton.setText(com.biznessapps.layout.R.string.attend);
        photosButton.setText(com.biznessapps.layout.R.string.gallery_title);
        infoButton.setOnClickListener(new android.view.View.OnClickListener() {

            final EventV2DetailsActivity this$0;

            public void onClick(View view)
            {
                activateButton(infoButton, infoTabContainer);
            }

            
            {
                this$0 = EventV2DetailsActivity.this;
                super();
            }
        });
        commentsButton.setOnClickListener(new android.view.View.OnClickListener() {

            final EventV2DetailsActivity this$0;

            public void onClick(View view)
            {
                activateButton(commentsButton, commentsTabContainer);
            }

            
            {
                this$0 = EventV2DetailsActivity.this;
                super();
            }
        });
        goingButton.setOnClickListener(new android.view.View.OnClickListener() {

            final EventV2DetailsActivity this$0;

            public void onClick(View view)
            {
                activateButton(goingButton, goingTabContainer);
            }

            
            {
                this$0 = EventV2DetailsActivity.this;
                super();
            }
        });
        photosButton.setOnClickListener(new android.view.View.OnClickListener() {

            final EventV2DetailsActivity this$0;

            public void onClick(View view)
            {
                activateButton(photosButton, photosTabContainer);
            }

            
            {
                this$0 = EventV2DetailsActivity.this;
                super();
            }
        });
        Object obj1 = (Button)findViewById(com.biznessapps.layout.R.id.add_photo_button);
        ((Button) (obj1)).setOnClickListener(new android.view.View.OnClickListener() {

            final EventV2DetailsActivity this$0;

            public void onClick(View view)
            {
                ViewUtils.openChoosePhotoDialog(EventV2DetailsActivity.this, new Runnable() {

                    final _cls5 this$1;

                    public void run()
                    {
                        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                        imageUri = CommonUtils.createEmptyImageFile(getApplicationContext());
                        if (imageUri != null)
                        {
                            intent.putExtra("output", imageUri);
                        }
                        startActivityForResult(intent, 2);
                    }

            
            {
                this$1 = _cls5.this;
                super();
            }
                });
            }

            
            {
                this$0 = EventV2DetailsActivity.this;
                super();
            }
        });
        addCalendarButton = (ImageView)findViewById(com.biznessapps.layout.R.id.add_event_to_calendar);
        CommonUtils.overrideImageColor(settings.getNavigationTextColor(), addCalendarButton.getDrawable());
        addCalendarButton.setOnClickListener(new android.view.View.OnClickListener() {

            final EventV2DetailsActivity this$0;

            public void onClick(View view)
            {
                view = (EventEntity)getIntent().getSerializableExtra("EVENT");
                EventDetailsFragment.addEvent(EventV2DetailsActivity.this, view);
            }

            
            {
                this$0 = EventV2DetailsActivity.this;
                super();
            }
        });
        shareButton = (ImageView)findViewById(com.biznessapps.layout.R.id.share_button);
        CommonUtils.setColorWithoutMutation(settings.getButtonBgColor(), shareButton.getDrawable());
        shareButton.setOnClickListener(new android.view.View.OnClickListener() {

            final EventV2DetailsActivity this$0;

            public void onClick(View view)
            {
                ShareComponent.showSharingOptionDialog(EventV2DetailsActivity.this);
            }

            
            {
                this$0 = EventV2DetailsActivity.this;
                super();
            }
        });
        activateButton(infoButton, infoTabContainer);
        int i = settings.getNavigationTextColor();
        infoButton.setTextColor(i);
        commentsButton.setTextColor(i);
        goingButton.setTextColor(i);
        photosButton.setTextColor(i);
        titleView = (TextView)findViewById(com.biznessapps.layout.R.id.title_view);
        CommonUtils.setColorWithoutMutation(0xff000000, titleView.getBackground());
        titleView.getBackground().setAlpha(90);
        obj = (Button)findViewById(com.biznessapps.layout.R.id.event_going_button);
        ((Button) (obj)).setTextColor(settings.getButtonTextColor());
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), ((Button) (obj)).getBackground());
        ((Button) (obj1)).setTextColor(settings.getButtonTextColor());
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), ((Button) (obj1)).getBackground());
        if (isUpcomingEvent)
        {
            i = com.biznessapps.layout.R.string.i_am_going;
        } else
        {
            i = com.biznessapps.layout.R.string.i_went;
        }
        ((Button) (obj)).setText(i);
        obj1 = AppCore.getInstance().getCachingManager();
        ((Button) (obj)).setOnClickListener(new android.view.View.OnClickListener() {

            final EventV2DetailsActivity this$0;
            final SocialLoginPopupView val$socialPopupView;

            public void onClick(View view)
            {
                goingButton.performClick();
                socialPopupView.openLoginDialog();
            }

            
            {
                this$0 = EventV2DetailsActivity.this;
                socialPopupView = socialloginpopupview;
                super();
            }
        });
        if (AppCore.getInstance().getAppSettings().shouldHideComments())
        {
            commentsView.setVisibility(8);
            commentsButton.setVisibility(8);
        } else
        {
            SocialCommentComponent socialcommentcomponent = new SocialCommentComponent(this, commentsTabContainer, eventDetailId, tabId, true, settings, 1);
            socialcommentcomponent.setCommentActionListener(new com.biznessapps.common.social.ui.SocialCommentComponent.CommentActionListener() {

                final EventV2DetailsActivity this$0;

                public void onCommentAdded()
                {
                    loadContent();
                }

            
            {
                this$0 = EventV2DetailsActivity.this;
                super();
            }
            });
            socialcommentcomponent.loadCommentsData();
        }
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
    }

    private void loadContent()
    {
        preDataLoading();
        String s;
        LoadDataTaskExternal loaddatataskexternal;
        if (item.isRecurring())
        {
            s = "1";
        } else
        {
            s = "0";
        }
        s = String.format("event_v2ex_detail.php?app_code=%s&id=%s&recurring=%s", new Object[] {
            cacher().getAppCode(), eventDetailId, s
        });
        loaddatataskexternal = new LoadDataTaskExternal(this, new ArrayList());
        loaddatataskexternal.setRequestUrl(s);
        loaddatataskexternal.setCanUseCachingRunnable(new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable());
        handleInBgRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() {

            final EventV2DetailsActivity this$0;

            
            {
                this$0 = EventV2DetailsActivity.this;
                super();
            }
        };
        loaddatataskexternal.setHandleInBgRunnable(handleInBgRunnable);
        parseDataRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() {

            final EventV2DetailsActivity this$0;

            public void run()
            {
                item = JsonParser.parseEventDetail(getDataToParse());
                setCorrectData(cacher().saveData((new StringBuilder()).append("EVENT_DETAIL_PROPERTY").append(eventDetailId).toString(), item));
            }

            
            {
                this$0 = EventV2DetailsActivity.this;
                super();
            }
        };
        loaddatataskexternal.setParseDataRunnable(parseDataRunnable);
        updateControlsRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() {

            final EventV2DetailsActivity this$0;

            public void run()
            {
label0:
                {
                    if (getActivity() != null)
                    {
                        if (!item.getNetworkResult().isOk())
                        {
                            break label0;
                        }
                        updateControlsWithData(getActivity());
                    }
                    return;
                }
                ViewUtils.showErrorToast(getActivity(), item.getNetworkResult());
            }

            
            {
                this$0 = EventV2DetailsActivity.this;
                super();
            }
        };
        loaddatataskexternal.setUpdateControlsRunnable(updateControlsRunnable);
        loaddatataskexternal.launch();
        EventPhotosTabUtils.loadPhotosData(this, photosTabContainer, eventDetailId, tabId, settings, photosView);
        EventGoingTabUtils.loadGoingData(getApplicationContext(), goingTabContainer, eventDetailId, tabId, settings, isUpcomingEvent, null);
    }

    private void loadWebContent()
    {
        String s = item.getDescription();
        if (StringUtils.isNotEmpty(s))
        {
            ViewUtils.plubWebView(webView);
            webView.loadDataWithBaseURL(null, StringUtils.decode(s), "text/html", "utf-8", null);
        }
    }

    private void preDataLoading()
    {
        EventEntity evententity = (EventEntity)getIntent().getSerializableExtra("EVENT");
        if (evententity.getDatetimeBegin() != null && evententity.getDatetimeEnd() != null)
        {
            String s = DateUtils.getStandartDateFormat(evententity.getDatetimeBegin());
            String s1 = DateUtils.getStandartDateFormat(evententity.getDatetimeEnd());
            eventTimeView.setText(String.format("%s - %s", new Object[] {
                s, s1
            }));
        }
        titleView.setText(LocationUtils.getEventDetailAddress(evententity));
    }

    private void sendPhoto(final byte imageToSend[])
    {
        defineViewsAccessOnLoading();
        UploadPhotoUtils.showCaptionDialog(this, new UploadPhotoUtils.UploadPhotoTextListener() );
    }

    private void updateControlsWithData(Activity activity)
    {
        eventTextView.setText(item.getTitle());
        bgUrl = getIntent().getStringExtra("BG_URL_EXTRA");
        imageFetcher.loadBgImage(bgUrl, root, settings);
        activity = new ImageLoadParams();
        activity.setView(headerImageView);
        activity.setUrl(item.getImageUrl());
        activity.setImageSrc(true);
        activity.setImageType(2);
        imageFetcher.loadImage(activity);
        eventDirectionView.setOnClickListener(new android.view.View.OnClickListener() {

            final EventV2DetailsActivity this$0;

            public void onClick(View view)
            {
                ViewUtils.openGoogleMap(getApplicationContext(), item.getLongitude(), item.getLatitude());
            }

            
            {
                this$0 = EventV2DetailsActivity.this;
                super();
            }
        });
        int i;
        if (isUpcomingEvent)
        {
            i = com.biznessapps.layout.R.string.people_going;
        } else
        {
            i = com.biznessapps.layout.R.string.people_went;
        }
        activity = getString(i);
        photosView.setText(String.format("%d %s", new Object[] {
            Integer.valueOf(item.getPhotoCount()), getString(com.biznessapps.layout.R.string.photos)
        }));
        commentsView.setText(String.format("%d %s", new Object[] {
            Integer.valueOf(item.getCommentsCount()), getString(com.biznessapps.layout.R.string.comments)
        }));
        goingView.setText(String.format(activity, new Object[] {
            (new StringBuilder()).append("").append(item.getGoingCount()).toString()
        }));
        addPins(item);
        loadWebContent();
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.event_detail_v2_layout;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    protected void initGoogleMap()
    {
        initGoogleMap();
        googleMap.getUiSettings().setScrollGesturesEnabled(false);
    }

    protected void initSettingsData()
    {
        initSettingsData();
        item = (EventEntity)getIntent().getSerializableExtra("EVENT");
        eventDetailId = item.getId();
        isUpcomingEvent = getIntent().getBooleanExtra("UPCOMING_EVENT", false);
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        Object obj;
        onActivityResult(i, j, intent);
        obj = null;
        i;
        JVM INSTR tableswitch 2 3: default 32
    //                   2 52
    //                   3 71;
           goto _L1 _L2 _L3
_L1:
        onActivityResult(i, j, intent);
        intent = obj;
_L5:
        if (intent != null)
        {
            sendPhoto(intent);
        }
        return;
_L2:
        intent = CommonUtils.convertImageToBytes(CommonUtils.getScaledPhoto(getApplicationContext(), imageUri, intent));
        break; /* Loop/switch isn't completed */
_L3:
        if (intent == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        String s = CommonUtils.getPath(intent.getData(), this);
        intent = obj;
        if (s != null)
        {
            intent = CommonUtils.convertFileToBytes(new File(s));
        }
        if (true) goto _L5; else goto _L4
_L4:
        if (true) goto _L1; else goto _L6
_L6:
    }

    public void onBackPressed()
    {
        ViewUtils.canGoBack(webView);
        onBackPressed();
    }

    public void onCreate(Bundle bundle)
    {
        onCreate(bundle);
        initViews();
        loadContent();
    }











/*
    static EventEntity access$1602(EventV2DetailsActivity eventv2detailsactivity, EventEntity evententity)
    {
        eventv2detailsactivity.item = evententity;
        return evententity;
    }

*/


















/*
    static Uri access$902(EventV2DetailsActivity eventv2detailsactivity, Uri uri)
    {
        eventv2detailsactivity.imageUri = uri;
        return uri;
    }

*/

    // Unreferenced inner class com/biznessapps/events/EventV2DetailsActivity$8

/* anonymous class */
}
