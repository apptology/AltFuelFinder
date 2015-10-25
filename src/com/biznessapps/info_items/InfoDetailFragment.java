// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.info_items;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.WebChromeClient;
import android.widget.Button;
import android.widget.ImageView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.entities.AnalyticEntity;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.common.social.ui.SocialCommentComponent;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.SmartWebView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class InfoDetailFragment extends CommonFragment
{

    private static final String LINK_TEXT_TEMPLATE = "Can not see the above content correctly? Click here";
    private ViewGroup buttonContainer;
    protected Button commentsButton;
    protected ViewGroup commentsTabContainer;
    private List customUrls;
    private String headerImage;
    private ImageView headerImageColorView;
    protected ImageView headerImageView;
    protected Button infoButton;
    protected CommonListEntity infoItem;
    protected ViewGroup infoTabContainer;
    private com.biznessapps.common.activities.CommonFragmentActivity.BackPressed onBackPressedListener;
    protected String tabId;
    protected SmartWebView webView;

    public InfoDetailFragment()
    {
        customUrls = new ArrayList();
        customUrls.add("inigobar");
        onBackPressedListener = new com.biznessapps.common.activities.CommonFragmentActivity.BackPressed() {

            final InfoDetailFragment this$0;

            public boolean onBackPressed()
            {
                return ViewUtils.canGoBack(webView);
            }

            
            {
                this$0 = InfoDetailFragment.this;
                super();
            }
        };
    }

    private void activateButton(Button button, ViewGroup viewgroup)
    {
        commentsButton.setSelected(false);
        infoButton.setSelected(false);
        button.setSelected(true);
        infoTabContainer.setVisibility(8);
        commentsTabContainer.setVisibility(8);
        viewgroup.setVisibility(0);
    }

    private void loadContent(Activity activity)
    {
        String s = infoItem.getDescription();
        if (StringUtils.isNotEmpty(s))
        {
            String s1 = activity.getString(com.biznessapps.layout.R.string.info_tier_link_message);
            for (activity = s; activity.contains("Can not see the above content correctly? Click here") && !"Can not see the above content correctly? Click here".equalsIgnoreCase(s1); activity = activity.replace("Can not see the above content correctly? Click here", s1)) { }
            if (useWithoutZooming(activity))
            {
                ViewUtils.plubWebViewWithoutZooming(webView);
            } else
            {
                ViewUtils.plubWebView(webView);
            }
            webView.loadDataWithBaseURL(null, activity, "text/html", "utf-8", null);
        }
    }

    private boolean useWithoutZooming(String s)
    {
        for (Iterator iterator = customUrls.iterator(); iterator.hasNext();)
        {
            if (s.contains((String)iterator.next()))
            {
                return true;
            }
        }

        return false;
    }

    protected boolean canHaveNewDesign()
    {
        return true;
    }

    protected boolean canUseCachedData()
    {
        infoItem = (CommonListEntity)cacher().getData((new StringBuilder()).append("INFO_DETAIL_PROPERTY").append(itemId).toString());
        return infoItem != null;
    }

    protected String defineBgUrl(Intent intent)
    {
        String s1 = infoItem.getBackground();
        String s = s1;
        if (s1 == null)
        {
            s = intent.getStringExtra("BG_URL_EXTRA");
        }
        return s;
    }

    protected AnalyticEntity getAnalyticData()
    {
        AnalyticEntity analyticentity = super.getAnalyticData();
        analyticentity.setItemId(getIntent().getStringExtra("ITEM_ID"));
        analyticentity.setCatId(getIntent().getStringExtra("SECTION_ID"));
        return analyticentity;
    }

    protected int getLayoutId()
    {
        if (getIntent().getBooleanExtra("HAS_NEW_DESIGN", true))
        {
            return com.biznessapps.layout.R.layout.info_detail_new_layout;
        } else
        {
            return com.biznessapps.layout.R.layout.info_detail_layout;
        }
    }

    protected String getRequestUrl()
    {
        return String.format("info_item_detail.php?id=%s&tab_id=%s&platform=android&app_code=%s", new Object[] {
            itemId, tabId, cacher().getAppCode()
        });
    }

    protected View getViewForBg()
    {
        return root.findViewById(com.biznessapps.layout.R.id.info_container_root);
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    protected void initViews()
    {
        buttonContainer = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.event_new_buttons_container);
        infoTabContainer = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.event_info_tab_container);
        commentsTabContainer = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.comments_container);
        infoButton = (Button)root.findViewById(com.biznessapps.layout.R.id.event_new_info_button);
        headerImageView = (ImageView)root.findViewById(com.biznessapps.layout.R.id.info_header_image);
        if (headerImageView != null)
        {
            headerImageColorView = (ImageView)root.findViewById(com.biznessapps.layout.R.id.info_header_image_color);
            headerImage = getIntent().getStringExtra("HEADER_IMAGE");
            com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
            imageloadparams.setView(headerImageView);
            imageloadparams.setUrl(headerImage);
            imageloadparams.setImageSrc(true);
            imageloadparams.setImageType(3);
            getImageFetcher().loadImage(imageloadparams);
            infoButton = (Button)root.findViewById(com.biznessapps.layout.R.id.event_new_info_button);
            commentsButton = (Button)root.findViewById(com.biznessapps.layout.R.id.event_new_comments_button);
            infoButton.setText(com.biznessapps.layout.R.string.description);
            commentsButton.setText(com.biznessapps.layout.R.string.comments);
            infoButton.setOnClickListener(new android.view.View.OnClickListener() {

                final InfoDetailFragment this$0;

                public void onClick(View view)
                {
                    activateButton(infoButton, infoTabContainer);
                }

            
            {
                this$0 = InfoDetailFragment.this;
                super();
            }
            });
            commentsButton.setOnClickListener(new android.view.View.OnClickListener() {

                final InfoDetailFragment this$0;

                public void onClick(View view)
                {
                    activateButton(commentsButton, commentsTabContainer);
                }

            
            {
                this$0 = InfoDetailFragment.this;
                super();
            }
            });
            activateButton(infoButton, infoTabContainer);
            buttonContainer.setBackgroundColor(settings.getNavigationBarColor());
            infoButton.setTextColor(settings.getNavigationTextColor());
            commentsButton.setTextColor(settings.getNavigationTextColor());
            if (AppCore.getInstance().getAppSettings().shouldHideComments())
            {
                commentsButton.setVisibility(8);
            } else
            {
                SocialCommentComponent socialcommentcomponent = new SocialCommentComponent(getActivity(), root, itemId, tabId, true, settings, 1);
                socialcommentcomponent.setEnableListViewScroll(false);
                socialcommentcomponent.loadCommentsData();
            }
        }
        webView = (SmartWebView)root.findViewById(com.biznessapps.layout.R.id.webview);
        webView.setDownloadListener(new DownloadListener() {

            final InfoDetailFragment this$0;

            public void onDownloadStart(String s, String s1, String s2, String s3, long l)
            {
                s1 = new Intent("android.intent.action.VIEW");
                s1.setType(s3);
                s1.setData(Uri.parse(s));
                startActivity(s1);
            }

            
            {
                this$0 = InfoDetailFragment.this;
                super();
            }
        });
        webView.setWebChromeClient(new WebChromeClient() {

            final InfoDetailFragment this$0;

            public void onGeolocationPermissionsShowPrompt(String s, android.webkit.GeolocationPermissions.Callback callback)
            {
                callback.invoke(s, true, false);
            }

            
            {
                this$0 = InfoDetailFragment.this;
                super();
            }
        });
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(getLayoutId(), null);
        initSettingsData();
        ViewUtils.setRootBgColor(root, settings);
        preDataLoading(getActivity());
        initViews();
        loadData();
        getHoldActivity().addBackPressedListener(onBackPressedListener);
        tabId = getIntent().getStringExtra("TAB_SPECIAL_ID");
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        openCustomDialogs();
        return root;
    }

    public void onDestroy()
    {
        CommonFragmentActivity commonfragmentactivity = getHoldActivity();
        if (commonfragmentactivity != null)
        {
            commonfragmentactivity.removeBackPressedListener(onBackPressedListener);
        }
        super.onDestroy();
    }

    protected void preDataLoading(Activity activity)
    {
        super.preDataLoading(activity);
        tabId = activity.getIntent().getStringExtra("TAB_SPECIAL_ID");
    }

    protected boolean tryParseData(String s)
    {
        infoItem = JsonParser.parseInfo(s);
        return cacher().saveData((new StringBuilder()).append("INFO_DETAIL_PROPERTY").append(itemId).toString(), infoItem);
    }

    protected void updateControlsWithData(Activity activity)
    {
        boolean flag = false;
        super.updateControlsWithData(activity);
        if (canHaveNewDesign())
        {
            int i;
            if (buttonContainer != null)
            {
                Object obj = buttonContainer;
                if (infoItem.hasNewDesign())
                {
                    i = 0;
                } else
                {
                    i = 8;
                }
                ((ViewGroup) (obj)).setVisibility(i);
            }
            if (headerImageView != null && headerImageColorView != null)
            {
                obj = headerImageView;
                if (infoItem.hasNewDesign())
                {
                    i = 0;
                } else
                {
                    i = 8;
                }
                ((ImageView) (obj)).setVisibility(i);
                obj = headerImageColorView;
                if (infoItem.hasNewDesign())
                {
                    i = ((flag) ? 1 : 0);
                } else
                {
                    i = 8;
                }
                ((ImageView) (obj)).setVisibility(i);
                if (StringUtils.isNotEmpty(infoItem.getHeaderImage()))
                {
                    obj = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
                    ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setView(headerImageView);
                    ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setUrl(infoItem.getHeaderImage());
                    ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageSrc(true);
                    ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageType(3);
                    getImageFetcher().loadImage(((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)));
                    ViewUtils.setGlobalBgColor(headerImageColorView, settings);
                }
            }
        }
        if (StringUtils.isNotEmpty(infoItem.getDescription()))
        {
            loadContent(activity);
        }
    }

}
