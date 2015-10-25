// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.social;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.AsyncCallback;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;
import com.biznessapps.common.social.OnCommonSocialLogoutListener;
import com.biznessapps.common.social.OnSocialPublishListener;
import com.biznessapps.common.social.OnSocialStatusChangeListener;
import com.biznessapps.common.social.SocialNetworkManager;
import com.biznessapps.common.social.facebook.FacebookSocialNetworkHandler;
import com.biznessapps.common.social.googleplus.GooglePlusSocialNetworkHandler;
import com.biznessapps.common.social.stats.UserStatsProfile;
import com.biznessapps.common.social.twitter.TwitterSocialNetworkHandler;
import com.biznessapps.common.social.ui.OnSharingCompletedListener;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.events.EventCommentsAdapter;
import com.biznessapps.fan_wall.CommentEntity;
import com.biznessapps.storage.StorageKeeper;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import junit.framework.Assert;

public class SocialFragment extends CommonFragment
{
    public class SocialAdapter extends AbstractAdapter
    {

        final SocialFragment this$0;

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            SocialItem socialitem;
            if (view == null)
            {
                view = inflater.inflate(layoutItemResourceId, null);
                viewgroup = new ViewHolder();
                viewgroup.label = (TextView)view.findViewById(com.biznessapps.layout.R.id.label_view);
                viewgroup.button = (Button)view.findViewById(com.biznessapps.layout.R.id.button_view);
                viewgroup.title = (TextView)view.findViewById(com.biznessapps.layout.R.id.title_view);
                viewgroup.iconImage = (ImageView)view.findViewById(com.biznessapps.layout.R.id.icon_image);
                ((ViewHolder) (viewgroup)).button.setTextColor(settings.getButtonTextColor());
                CommonUtils.overrideImageColor(settings.getButtonBgColor(), ((ViewHolder) (viewgroup)).button.getBackground());
                view.setTag(viewgroup);
            } else
            {
                viewgroup = (ViewHolder)view.getTag();
            }
            socialitem = (SocialItem)getItem(i);
            if (socialitem != null)
            {
                ((ViewHolder) (viewgroup)).title.setText(socialitem.getTitle());
                ((ViewHolder) (viewgroup)).label.setText(socialitem.getLabelValue());
                ((ViewHolder) (viewgroup)).button.setText(socialitem.getLabelValue());
                ((ViewHolder) (viewgroup)).button.setOnClickListener(socialitem. new android.view.View.OnClickListener() {

                    final SocialAdapter this$1;
                    final SocialItem val$item;

                    public void onClick(View view)
                    {
                        checkSocialNetworks(item);
                    }

            
            {
                this$1 = final_socialadapter;
                item = SocialItem.this;
                super();
            }
                });
                if (socialitem.getIconId() > 0)
                {
                    ((ViewHolder) (viewgroup)).iconImage.setBackgroundResource(socialitem.getIconId());
                    ((ViewHolder) (viewgroup)).iconImage.setVisibility(0);
                    ((ViewHolder) (viewgroup)).label.setVisibility(8);
                    ((ViewHolder) (viewgroup)).button.setVisibility(0);
                } else
                {
                    ((ViewHolder) (viewgroup)).iconImage.setVisibility(8);
                    ((ViewHolder) (viewgroup)).label.setVisibility(0);
                    ((ViewHolder) (viewgroup)).button.setVisibility(8);
                }
                if (socialitem.hasColor())
                {
                    view.setBackgroundDrawable(getListItemDrawable(socialitem.getItemColor()));
                    setTextColorToView(socialitem.getItemTextColor(), new TextView[] {
                        ((ViewHolder) (viewgroup)).title, ((ViewHolder) (viewgroup)).label
                    });
                }
            }
            return view;
        }

        public SocialAdapter(Context context, List list, UiSettings uisettings)
        {
            this$0 = SocialFragment.this;
            super(context, list, com.biznessapps.layout.R.layout.social_row, uisettings);
        }
    }

    public static class SocialItem extends CommonListEntity
    {

        private static final long serialVersionUID = 0x9b6f489acb720fd8L;
        private int iconId;
        private String labelValue;

        public int getIconId()
        {
            return iconId;
        }

        public String getLabelValue()
        {
            return labelValue;
        }

        public void setIconId(int i)
        {
            iconId = i;
        }

        public void setLabelValue(String s)
        {
            labelValue = s;
        }

        public SocialItem(int i, String s, String s1)
        {
            iconId = i;
            title = s;
            labelValue = s1;
        }

        public SocialItem(String s, String s1)
        {
            this(0, s, s1);
        }
    }

    private static class ViewHolder
    {

        Button button;
        ImageView iconImage;
        TextView label;
        TextView title;

        private ViewHolder()
        {
        }

    }


    private static final int ACCOUNTS_SECTION_TYPE = 1;
    private static final int COMMENTS_SECTION_TYPE = 2;
    private static final String LOG_TAG = "SocialFragment";
    private static final String USER_VALUE_FORMAT = "{\"names\":[%s]}";
    private SocialAdapter accountsAdapter;
    private Button accountsButton;
    private EventCommentsAdapter commentsAdapter;
    private Button commentsButton;
    private TextView commentsLabel;
    private int currentType;
    private TextView descriptionView;
    private ListView listView;
    private Button shareButton;
    private Button updateStatusButton;

    public SocialFragment()
    {
        currentType = 1;
    }

    public static void addComment(CommentEntity commententity)
    {
        StorageKeeper.instance().saveComment(commententity);
    }

    public static void addComment(String s, String s1, String s2)
    {
        addComment(new CommentEntity(System.currentTimeMillis(), s, s1, s2));
    }

    private void checkSocialNetworks(final SocialItem socialNetworkHandler)
    {
        boolean flag1 = true;
        int i = socialNetworkHandler.getIconId();
        boolean flag;
        if (com.biznessapps.layout.R.drawable.facebook_icon == i)
        {
            socialNetworkHandler = FacebookSocialNetworkHandler.getInstance(getActivity());
        } else
        if (com.biznessapps.layout.R.drawable.twitter_icon == i)
        {
            socialNetworkHandler = TwitterSocialNetworkHandler.getInstance(getActivity());
        } else
        {
            if (com.biznessapps.layout.R.drawable.google_plus_icon == i)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(flag);
            socialNetworkHandler = GooglePlusSocialNetworkHandler.getInstance(getActivity());
        }
        if (socialNetworkHandler != null)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        if (socialNetworkHandler.isLoggedIn())
        {
            promptAndLogout(new Runnable() {

                final SocialFragment this$0;
                final CommonSocialNetworkHandler val$socialNetworkHandler;

                public void run()
                {
                    socialNetworkHandler.logout(new OnCommonSocialLogoutListener(getActivity()) {

                        final _cls8 this$1;

                        public void onLogoffCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
                        {
                            initProfileAndListData();
                        }

            
            {
                this$1 = _cls8.this;
                super(context);
            }
                    });
                }

            
            {
                this$0 = SocialFragment.this;
                socialNetworkHandler = commonsocialnetworkhandler;
                super();
            }
            });
            return;
        } else
        {
            socialNetworkHandler.login(new OnCommonSocialLoginListener(getActivity()) {

                final SocialFragment this$0;

                public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
                {
                    initProfileAndListData();
                }

            
            {
                this$0 = SocialFragment.this;
                super(context);
            }
            });
            return;
        }
    }

    public static List getComments()
    {
        List list = StorageKeeper.instance().getComments();
        Object obj = list;
        if (list == null)
        {
            obj = new ArrayList();
        }
        return ((List) (obj));
    }

    private void initAccountsData()
    {
        ArrayList arraylist = new ArrayList();
        Object obj;
        if (FacebookSocialNetworkHandler.getInstance(getActivity()).isLoggedIn())
        {
            obj = getString(com.biznessapps.layout.R.string.logout);
        } else
        {
            obj = getString(com.biznessapps.layout.R.string.connect);
        }
        arraylist.add(new SocialItem(com.biznessapps.layout.R.drawable.facebook_icon, getString(com.biznessapps.layout.R.string.facebook), ((String) (obj))));
        if (TwitterSocialNetworkHandler.getInstance(getActivity()).isLoggedIn())
        {
            obj = getString(com.biznessapps.layout.R.string.logout);
        } else
        {
            obj = getString(com.biznessapps.layout.R.string.connect);
        }
        arraylist.add(new SocialItem(com.biznessapps.layout.R.drawable.twitter_icon, getString(com.biznessapps.layout.R.string.twitter), ((String) (obj))));
        obj = new LinkedList();
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); ((List) (obj)).add(ViewUtils.getWrappedItem((SocialItem)iterator.next(), ((List) (obj)), settings))) { }
        accountsAdapter = new SocialAdapter(getApplicationContext(), arraylist, settings);
    }

    private void initCommentsData()
    {
        Object obj = getComments();
        Collections.sort(((List) (obj)), new Comparator() {

            final SocialFragment this$0;

            public int compare(CommentEntity commententity, CommentEntity commententity1)
            {
                return (int)(commententity1.getTimeStamp() - commententity.getTimeStamp());
            }

            public volatile int compare(Object obj1, Object obj2)
            {
                return compare((CommentEntity)obj1, (CommentEntity)obj2);
            }

            
            {
                this$0 = SocialFragment.this;
                super();
            }
        });
        LinkedList linkedlist = new LinkedList();
        for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); linkedlist.add(ViewUtils.getWrappedItem((CommentEntity)((Iterator) (obj)).next(), linkedlist, settings))) { }
        commentsLabel.setText((new StringBuilder()).append(linkedlist.size()).append(" ").append(getString(com.biznessapps.layout.R.string.comments)).toString());
        commentsAdapter = new EventCommentsAdapter(getApplicationContext(), 0, linkedlist, settings);
    }

    private void initListData()
    {
        initAccountsData();
        initCommentsData();
    }

    private void initListeners()
    {
        SocialNetworkManager.getInstance(getActivity()).setOnSocialStatusChangeListener(new OnSocialStatusChangeListener() {

            final SocialFragment this$0;

            public void onActionCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                updateUI();
            }

            public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
            {
                updateUI();
            }

            public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                updateUI();
            }

            public void onLogoffCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                updateUI();
            }

            public void onPublishCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                updateUI();
            }

            
            {
                this$0 = SocialFragment.this;
                super();
            }
        });
        accountsButton.setOnClickListener(new android.view.View.OnClickListener() {

            final SocialFragment this$0;

            public void onClick(View view)
            {
                currentType = 1;
                updateViewsAndData(currentType);
            }

            
            {
                this$0 = SocialFragment.this;
                super();
            }
        });
        commentsButton.setOnClickListener(new android.view.View.OnClickListener() {

            final SocialFragment this$0;

            public void onClick(View view)
            {
                currentType = 2;
                updateViewsAndData(currentType);
            }

            
            {
                this$0 = SocialFragment.this;
                super();
            }
        });
        listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final SocialFragment this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                adapterview = (SocialItem)adapterview.getAdapter().getItem(i);
                checkSocialNetworks(adapterview);
            }

            
            {
                this$0 = SocialFragment.this;
                super();
            }
        });
    }

    private void initProfileAndListData()
    {
        initProfileData();
        initListData();
        updateViewsAndData(currentType);
    }

    private void initProfileData()
    {
        ViewGroup viewgroup = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.profile_container);
        descriptionView = (TextView)root.findViewById(com.biznessapps.layout.R.id.social_description);
        TextView textview = (TextView)root.findViewById(com.biznessapps.layout.R.id.profile_name_view);
        TextView textview1 = (TextView)root.findViewById(com.biznessapps.layout.R.id.profile_label_view);
        ImageView imageview = (ImageView)root.findViewById(com.biznessapps.layout.R.id.profile_icon_image);
        descriptionView.setTextColor(settings.getFeatureTextColor());
        textview.setTextColor(settings.getFeatureTextColor());
        textview1.setTextColor(settings.getFeatureTextColor());
        textview1.setText(com.biznessapps.layout.R.string.connected_to_network);
        descriptionView.setText(com.biznessapps.layout.R.string.social_networks_label);
        CommonSocialNetworkHandler commonsocialnetworkhandler = SocialNetworkManager.getInstance(getActivity()).getLatestLoggedInSocialHandler();
        if (commonsocialnetworkhandler != null)
        {
            viewgroup.setVisibility(0);
            descriptionView.setVisibility(8);
            textview.setText(commonsocialnetworkhandler.getUserName());
            textview1.setText(String.format(getString(com.biznessapps.layout.R.string.connected_to_network), new Object[] {
                commonsocialnetworkhandler.getSocialName()
            }));
            getImageFetcher().loadRoundedBackground(commonsocialnetworkhandler.getUserProfileURL(), imageview);
        } else
        {
            viewgroup.setVisibility(8);
            descriptionView.setVisibility(0);
        }
        initProfileStatisticsData();
    }

    private void initProfileStatisticsData()
    {
        TextView textview = (TextView)root.findViewById(com.biznessapps.layout.R.id.messages_value_view);
        TextView textview1 = (TextView)root.findViewById(com.biznessapps.layout.R.id.posts_value_view);
        TextView textview2 = (TextView)root.findViewById(com.biznessapps.layout.R.id.shares_value_view);
        TextView textview3 = (TextView)root.findViewById(com.biznessapps.layout.R.id.rewards_value_view);
        TextView textview4 = (TextView)root.findViewById(com.biznessapps.layout.R.id.messages_text_view);
        TextView textview5 = (TextView)root.findViewById(com.biznessapps.layout.R.id.posts_text_view);
        TextView textview6 = (TextView)root.findViewById(com.biznessapps.layout.R.id.shares_text_view);
        TextView textview7 = (TextView)root.findViewById(com.biznessapps.layout.R.id.rewards_text_view);
        textview4.setText(com.biznessapps.layout.R.string.messages);
        textview5.setText(com.biznessapps.layout.R.string.fan_wall_posts);
        textview6.setText(com.biznessapps.layout.R.string.shares_number);
        textview7.setText(com.biznessapps.layout.R.string.rewards);
        UserStatsProfile userstatsprofile = UserStatsProfile.getInstance(getActivity());
        textview.setText((new StringBuilder()).append("").append(userstatsprofile.getNumberOfMessages()).toString());
        textview1.setText((new StringBuilder()).append("").append(userstatsprofile.getNumberOfPosts()).toString());
        textview2.setText((new StringBuilder()).append("").append(userstatsprofile.getNumberOfShares()).toString());
        textview3.setText((new StringBuilder()).append("").append(userstatsprofile.getNumberOfRewards()).toString());
        int i = settings.getFeatureTextColor();
        textview1.setTextColor(i);
        textview.setTextColor(i);
        textview2.setTextColor(i);
        textview3.setTextColor(i);
        textview4.setTextColor(i);
        textview5.setTextColor(i);
        textview6.setTextColor(i);
        textview7.setTextColor(i);
    }

    private void initViews()
    {
        listView = (ListView)root.findViewById(com.biznessapps.layout.R.id.list_view);
        accountsButton = (Button)root.findViewById(com.biznessapps.layout.R.id.accounts_button);
        commentsButton = (Button)root.findViewById(com.biznessapps.layout.R.id.comments_button);
        commentsLabel = (TextView)root.findViewById(com.biznessapps.layout.R.id.comments_label);
        updateStatusButton = (Button)root.findViewById(com.biznessapps.layout.R.id.update_status_button);
        updateStatusButton.setOnClickListener(new android.view.View.OnClickListener() {

            final SocialFragment this$0;

            public void onClick(View view)
            {
                view = SocialNetworkManager.getInstance(getActivity()).getLatestLoggedInSocialHandler();
                if (view != null)
                {
                    ShareComponent.showPostCommentDialog(getActivity(), view. new com.biznessapps.common.social.ui.ShareComponent.PostCommentListener() {

                        final _cls1 this$1;
                        final CommonSocialNetworkHandler val$networkHandler;

                        public void onCommentEntered(String s)
                        {
                            networkHandler.publishText(s, new OnSocialPublishListener() {

                                final _cls1 this$2;

                                public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
                                {
                                    if (s1 != null)
                                    {
                                        Log.w("SocialFragment", s1);
                                    }
                                    ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.something_went_wrong));
                                }

                                public void onPublishCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
                                {
                                    UserStatsProfile.getInstance(getActivity()).updateNumberOfShares();
                                }

            
            {
                this$2 = _cls1.this;
                super();
            }
                            });
                        }

            
            {
                this$1 = final__pcls1;
                networkHandler = CommonSocialNetworkHandler.this;
                super();
            }
                    }, view.getCharacterLimit());
                }
            }

            
            {
                this$0 = SocialFragment.this;
                super();
            }
        });
        shareButton = (Button)root.findViewById(com.biznessapps.layout.R.id.share_button);
        shareButton.setOnClickListener(new android.view.View.OnClickListener() {

            final SocialFragment this$0;

            public void onClick(View view)
            {
                ShareComponent.showSharingOptionDialog(getHoldActivity(), new OnSharingCompletedListener() {

                    final _cls2 this$1;

                    public void onSharingCanceled()
                    {
                        initProfileAndListData();
                    }

                    public void onSharingCompleted(int i)
                    {
                        initProfileAndListData();
                    }

                    public void onSharingError(int i, String s, String s1)
                    {
                        initProfileAndListData();
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                });
            }

            
            {
                this$0 = SocialFragment.this;
                super();
            }
        });
        ViewUtils.setRootBgColor(root, settings);
        ViewGroup viewgroup = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.buttons_container);
        commentsLabel.setTextColor(settings.getSectionTextColor());
        commentsLabel.setBackgroundColor(settings.getTransparentSectionBarColor());
        accountsButton.setTextColor(settings.getNavigationTextColor());
        commentsButton.setTextColor(settings.getNavigationTextColor());
        updateStatusButton.setTextColor(settings.getButtonTextColor());
        shareButton.setTextColor(settings.getButtonTextColor());
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), updateStatusButton.getBackground());
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), shareButton.getBackground());
        viewgroup.setBackgroundColor(settings.getNavigationBarColor());
        if (AppCore.getInstance().getAppSettings().shouldHideComments())
        {
            commentsButton.setVisibility(8);
        }
        updateStatusButton.setText(com.biznessapps.layout.R.string.update_status);
        shareButton.setText(com.biznessapps.layout.R.string.share);
        accountsButton.setText(com.biznessapps.layout.R.string.accounts);
        commentsButton.setText(com.biznessapps.layout.R.string.comments);
        commentsLabel.setText(com.biznessapps.layout.R.string.comments);
    }

    private void postNewData()
    {
        Object obj = UserStatsProfile.getInstance(getActivity());
        int i = ((UserStatsProfile) (obj)).getNumberOfMessages();
        int j = ((UserStatsProfile) (obj)).getNumberOfPosts();
        int k = ((UserStatsProfile) (obj)).getNumberOfShares();
        int l = ((UserStatsProfile) (obj)).getNumberOfRewards();
        obj = new AsyncCallback() {

            final SocialFragment this$0;

            public void onError(String s, Throwable throwable)
            {
                super.onError(s, throwable);
            }

            public volatile void onResult(Object obj2)
            {
                onResult((String)obj2);
            }

            public void onResult(String s)
            {
            }

            
            {
                this$0 = SocialFragment.this;
                super();
            }
        };
        Object obj1 = SocialNetworkManager.getInstance(getActivity()).getLatestLoggedInSocialHandler();
        if (obj1 == null)
        {
            return;
        }
        obj1 = String.format("\"%s\"", new Object[] {
            ((CommonSocialNetworkHandler) (obj1)).getUserName()
        });
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        linkedhashmap.put("app_code", AppCore.getInstance().getCachingManager().getAppCode());
        linkedhashmap.put("messages", (new StringBuilder()).append("").append(i).toString());
        linkedhashmap.put("shares", (new StringBuilder()).append("").append(k).toString());
        linkedhashmap.put("rewards", (new StringBuilder()).append("").append(l).toString());
        linkedhashmap.put("fanwallposts", (new StringBuilder()).append("").append(j).toString());
        linkedhashmap.put("device", "android");
        if (obj1 != null)
        {
            linkedhashmap.put("user", String.format("{\"names\":[%s]}", new Object[] {
                obj1
            }));
        }
        linkedhashmap.put("device_token", AppCore.getInstance().getAppSettings().getDeviceId(getActivity()));
        AppHttpUtils.executePostRequest("post_stat.php", linkedhashmap, ((AsyncCallback) (obj)), true);
    }

    private void promptAndLogout(Runnable runnable)
    {
        String s = getString(com.biznessapps.layout.R.string.logout_message);
        ViewUtils.showDialog(getHoldActivity(), s, runnable);
    }

    private void setAdapter(int i)
    {
        initListeners();
        if (i == 1)
        {
            listView.setAdapter(accountsAdapter);
            return;
        } else
        {
            listView.setAdapter(commentsAdapter);
            listView.setOnItemClickListener(null);
            return;
        }
    }

    private void updateButtonSelection(int i)
    {
        boolean flag2 = true;
        boolean flag = false;
        Object obj = accountsButton;
        boolean flag1;
        if (i == 1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        ((Button) (obj)).setSelected(flag1);
        obj = commentsButton;
        if (i == 2)
        {
            flag1 = flag2;
        } else
        {
            flag1 = false;
        }
        ((Button) (obj)).setSelected(flag1);
        obj = commentsLabel;
        if (i == 2)
        {
            i = ((flag) ? 1 : 0);
        } else
        {
            i = 8;
        }
        ((TextView) (obj)).setVisibility(i);
    }

    private void updateUI()
    {
        initProfileAndListData();
    }

    private void updateViewsAndData(int i)
    {
        updateButtonSelection(i);
        setAdapter(i);
    }

    protected boolean canUseCachedData()
    {
        bgUrl = (String)cacher().getData((new StringBuilder()).append("UserStatsViewController").append(tabId).toString());
        return bgUrl != null;
    }

    protected String defineBgUrl(Intent intent)
    {
        return bgUrl;
    }

    protected String getRequestUrl()
    {
        return String.format("user_stats.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected View getViewForBg()
    {
        return root.findViewById(com.biznessapps.layout.R.id.social_root);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.social_layout, (ViewGroup)null);
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        initSettingsData();
        initViews();
        initListeners();
        initProfileAndListData();
        loadData();
        postNewData();
        openCustomDialogs();
        return root;
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    public void onDestroyView()
    {
        SocialNetworkManager.getInstance(getActivity()).setOnSocialStatusChangeListener(null);
        super.onDestroyView();
    }

    protected void preDataLoading(Activity activity)
    {
        tabId = activity.getIntent().getStringExtra("TAB_SPECIAL_ID");
    }

    protected boolean tryParseData(String s)
    {
        bgUrl = JsonParser.parseBackgroundData(s);
        return cacher().saveData((new StringBuilder()).append("UserStatsViewController").append(tabId).toString(), bgUrl);
    }





/*
    static int access$202(SocialFragment socialfragment, int i)
    {
        socialfragment.currentType = i;
        return i;
    }

*/


}
