// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.youtube;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.DataSource;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.events.EventCommentsAdapter;
import com.biznessapps.fan_wall.CommentEntity;
import com.biznessapps.fan_wall.FanWallFragment;
import com.biznessapps.player.PlayerServiceAccessor;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.biznessapps.youtube:
//            YoutubeRssEntity

public class YoutubeDetailFragment extends FanWallFragment
{
    private static class ViewHolder
    {

        TextView label;
        TextView title;

        private ViewHolder()
        {
        }

    }

    public class YoutubeInfoAdapter extends AbstractAdapter
    {

        final YoutubeDetailFragment this$0;

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            YoutubeInfoItem youtubeinfoitem;
            if (view == null)
            {
                view = inflater.inflate(layoutItemResourceId, null);
                viewgroup = new ViewHolder();
                viewgroup.label = (TextView)view.findViewById(com.biznessapps.layout.R.id.label_view);
                viewgroup.title = (TextView)view.findViewById(com.biznessapps.layout.R.id.title_view);
                view.setTag(viewgroup);
            } else
            {
                viewgroup = (ViewHolder)view.getTag();
            }
            youtubeinfoitem = (YoutubeInfoItem)getItem(i);
            if (youtubeinfoitem != null)
            {
                ((ViewHolder) (viewgroup)).title.setText(youtubeinfoitem.getTitle());
                ((ViewHolder) (viewgroup)).label.setText(youtubeinfoitem.getLabelValue());
                if (youtubeinfoitem.hasColor())
                {
                    view.setBackgroundDrawable(getListItemDrawable(youtubeinfoitem.getItemColor()));
                    setTextColorToView(youtubeinfoitem.getItemTextColor(), new TextView[] {
                        ((ViewHolder) (viewgroup)).title, ((ViewHolder) (viewgroup)).label
                    });
                }
            }
            return view;
        }

        public YoutubeInfoAdapter(Context context, List list, UiSettings uisettings)
        {
            this$0 = YoutubeDetailFragment.this;
            super(context, list, com.biznessapps.layout.R.layout.youtube_info_item_layout, uisettings);
        }
    }

    public static class YoutubeInfoItem extends CommonListEntity
    {

        private static final long serialVersionUID = 0x9b6f489acb720fd8L;
        private String labelValue;

        public String getLabelValue()
        {
            return labelValue;
        }

        public void setLabelValue(String s)
        {
            labelValue = s;
        }

        public YoutubeInfoItem(String s, String s1)
        {
            title = s;
            labelValue = s1;
        }
    }


    private ViewGroup buttonContainer;
    private Button commentsButton;
    private TextView commentsLabel;
    protected ViewGroup commentsTabContainer;
    private ViewGroup dataContainer;
    private String imageUrl;
    private YoutubeInfoAdapter infoAdapter;
    private Button infoButton;
    protected ViewGroup infoTabContainer;
    private boolean isCheckedCommentAllowing;
    private List items;
    private ListView listView;
    private String note;
    private com.biznessapps.common.activities.CommonFragmentActivity.BackPressed onBackPressedListener;
    private Button postButton;
    private ImageView shareButton;
    private WebView webView;
    private YoutubeRssEntity youtubeItem;
    private ImageView youtubeItemImage;
    private String youtubeLink;

    public YoutubeDetailFragment()
    {
        onBackPressedListener = new com.biznessapps.common.activities.CommonFragmentActivity.BackPressed() {

            final YoutubeDetailFragment this$0;

            public boolean onBackPressed()
            {
                return ViewUtils.canGoBack(webView);
            }

            
            {
                this$0 = YoutubeDetailFragment.this;
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

    private android.view.View.OnClickListener getOnClickListener()
    {
        return new android.view.View.OnClickListener() {

            final YoutubeDetailFragment this$0;

            public void onClick(View view)
            {
                if (youtubeLink == null)
                {
                    break MISSING_BLOCK_LABEL_53;
                }
                getPlayerServiceAccessor().stop();
                view = new Intent("android.intent.action.VIEW");
                view.setData(Uri.parse(youtubeLink));
                startActivity(view);
                return;
                view;
            }

            
            {
                this$0 = YoutubeDetailFragment.this;
                super();
            }
        };
    }

    private void initYoutubeInfoData()
    {
        Object obj1 = new ArrayList();
        ((List) (obj1)).add(new YoutubeInfoItem(getString(com.biznessapps.layout.R.string.title), youtubeItem.getTitle()));
        ((List) (obj1)).add(new YoutubeInfoItem(getString(com.biznessapps.layout.R.string.author), youtubeItem.getCreator()));
        ((List) (obj1)).add(new YoutubeInfoItem(getString(com.biznessapps.layout.R.string.posted_date), DateUtils.getStandartDateFormat(youtubeItem.getDate())));
        Object obj = new LinkedList();
        for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); ((List) (obj)).add(ViewUtils.getWrappedItem((YoutubeInfoItem)((Iterator) (obj1)).next(), ((List) (obj)), settings))) { }
        infoAdapter = new YoutubeInfoAdapter(getApplicationContext(), ((List) (obj)), settings);
        obj = (RefreshableListView)root.findViewById(com.biznessapps.layout.R.id.info_list_view);
        ((RefreshableListView) (obj)).setAdapter(infoAdapter);
        ((RefreshableListView) (obj)).setExpandOn(true);
        ((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.youtube_data_container)).setBackgroundColor(settings.getTransparentSectionBarColor());
        obj = (TextView)root.findViewById(com.biznessapps.layout.R.id.count_hint_text);
        obj1 = (TextView)root.findViewById(com.biznessapps.layout.R.id.rating_average_text);
        TextView textview = (TextView)root.findViewById(com.biznessapps.layout.R.id.view_count_text);
        ((TextView) (obj)).setTextColor(settings.getFeatureTextColor());
        ((TextView) (obj1)).setTextColor(settings.getFeatureTextColor());
        textview.setTextColor(settings.getFeatureTextColor());
        CommonUtils.overrideImageColor(settings.getSectionTextColor(), ((TextView) (obj)).getCompoundDrawables()[0]);
        CommonUtils.overrideImageColor(settings.getSectionTextColor(), ((TextView) (obj1)).getCompoundDrawables()[0]);
        CommonUtils.overrideImageColor(settings.getSectionTextColor(), textview.getCompoundDrawables()[0]);
        ((TextView) (obj)).setText(youtubeItem.getFeedlinkCountHint());
        ((TextView) (obj1)).setText(youtubeItem.getCounts());
        textview.setText(youtubeItem.getStatisticsViewCount());
    }

    private void loadImageBg()
    {
        boolean flag = StringUtils.isNotEmpty(imageUrl);
        ImageView imageview = youtubeItemImage;
        int i;
        if (flag)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        imageview.setVisibility(i);
        if (flag)
        {
            AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadYoutubeImage(imageUrl, youtubeItemImage);
        }
    }

    private void loadWebContent()
    {
        if (StringUtils.isNotEmpty(note))
        {
            ViewUtils.plubWebView(webView);
            webView.loadDataWithBaseURL(null, StringUtils.decode(note), "text/html", "utf-8", null);
        }
    }

    private void postComment()
    {
        if (StringUtils.isNotEmpty(youtubeLink))
        {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(youtubeLink)));
        }
    }

    protected String getRequestUrl()
    {
        return String.format("youtube_comments.php?id=%s&show_all=1", new Object[] {
            itemId
        });
    }

    protected View getViewForBg()
    {
        return dataContainer;
    }

    protected void initAds()
    {
        ViewUtils.showAdsIfNeeded(getHoldActivity(), root, false);
    }

    protected void initViews(ViewGroup viewgroup)
    {
        youtubeItemImage = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.youtube_item_image);
        youtubeItemImage.setOnClickListener(getOnClickListener());
        ((ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.youtube_play_item_image)).setOnClickListener(getOnClickListener());
        youtubeLink = getIntent().getStringExtra("LINK");
        listView = (ListView)viewgroup.findViewById(com.biznessapps.layout.R.id.comments_list_view);
        dataContainer = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.data_container);
        buttonContainer = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.event_new_buttons_container);
        infoTabContainer = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.info_tab_container);
        commentsTabContainer = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.comments_container);
        infoButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.event_new_info_button);
        commentsButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.event_new_comments_button);
        postButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.post_comment_button);
        commentsLabel = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.comments_label);
        postButton.setText(com.biznessapps.layout.R.string.post_comment);
        commentsLabel.setText(com.biznessapps.layout.R.string.comments);
        infoButton.setOnClickListener(new android.view.View.OnClickListener() {

            final YoutubeDetailFragment this$0;

            public void onClick(View view)
            {
                activateButton(infoButton, infoTabContainer);
            }

            
            {
                this$0 = YoutubeDetailFragment.this;
                super();
            }
        });
        commentsButton.setOnClickListener(new android.view.View.OnClickListener() {

            final YoutubeDetailFragment this$0;

            public void onClick(View view)
            {
                activateButton(commentsButton, commentsTabContainer);
            }

            
            {
                this$0 = YoutubeDetailFragment.this;
                super();
            }
        });
        postButton.setOnClickListener(new android.view.View.OnClickListener() {

            final YoutubeDetailFragment this$0;

            public void onClick(View view)
            {
                if (isCheckedCommentAllowing)
                {
                    postComment();
                    return;
                } else
                {
                    (new AllowCommentingTask()).execute(new Void[0]);
                    return;
                }
            }

            
            {
                this$0 = YoutubeDetailFragment.this;
                super();
            }
        });
        activateButton(commentsButton, commentsTabContainer);
        buttonContainer.setBackgroundColor(settings.getNavigationBarColor());
        infoButton.setTextColor(settings.getNavigationTextColor());
        commentsButton.setTextColor(settings.getNavigationTextColor());
        commentsLabel.setTextColor(settings.getSectionTextColor());
        postButton.setTextColor(settings.getButtonTextColor());
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), postButton.getBackground());
        webView = (WebView)viewgroup.findViewById(com.biznessapps.layout.R.id.webview);
        ((ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.comments_list_top_header)).setBackgroundColor(settings.getTransparentSectionBarColor());
        ViewUtils.setGlobalBgColor(dataContainer, settings);
        shareButton = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.share_button);
        CommonUtils.setColorWithoutMutation(settings.getButtonBgColor(), shareButton.getDrawable());
        shareButton.setOnClickListener(new android.view.View.OnClickListener() {

            final YoutubeDetailFragment this$0;

            public void onClick(View view)
            {
                ShareComponent.showSharingOptionDialog(getHoldActivity());
            }

            
            {
                this$0 = YoutubeDetailFragment.this;
                super();
            }
        });
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.youtube_detail_layout, null);
        initSettingsData();
        imageUrl = getIntent().getStringExtra("IMAGE_URL");
        note = getIntent().getStringExtra("NOTE_DATA");
        itemId = getIntent().getStringExtra("parent_id");
        youtubeItem = (YoutubeRssEntity)getIntent().getSerializableExtra("ITEM_EXTRA");
        bgUrl = getIntent().getStringExtra("BG_URL_EXTRA");
        getHoldActivity().addBackPressedListener(onBackPressedListener);
        initViews(root);
        initYoutubeInfoData();
        loadWebContent();
        loadImageBg();
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        openCustomDialogs();
        loadData();
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

    protected boolean tryParseData(String s)
    {
        items = JsonParser.parseYoutubeComments(s);
        return true;
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        loadImageBg();
        LinkedList linkedlist = new LinkedList();
        for (Iterator iterator = items.iterator(); iterator.hasNext(); linkedlist.add(ViewUtils.getWrappedItem((CommentEntity)iterator.next(), linkedlist, settings))) { }
        activity = new EventCommentsAdapter(activity.getApplicationContext(), 0, linkedlist, com.biznessapps.layout.R.layout.youtube_detail_comment_item, settings);
        listView.setAdapter(activity);
        commentsLabel.setText((new StringBuilder()).append(items.size()).append(" ").append(getString(com.biznessapps.layout.R.string.comments)).toString());
    }







/*
    static boolean access$402(YoutubeDetailFragment youtubedetailfragment, boolean flag)
    {
        youtubedetailfragment.isCheckedCommentAllowing = flag;
        return flag;
    }

*/




}
