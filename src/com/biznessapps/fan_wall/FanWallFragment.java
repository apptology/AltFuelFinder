// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.AsyncCallback;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.entities.AnalyticEntity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;
import com.biznessapps.common.social.stats.UserStatsProfile;
import com.biznessapps.common.social.ui.SocialLoginPopupView;
import com.biznessapps.gallery.GalleryManager;
import com.biznessapps.gallery.GalleryPreviewActivity;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.biznessapps.fan_wall:
//            FanWallEntity, CommentEntity, NewFanWallAdapter

public class FanWallFragment extends CommonFragment
{

    protected static FanWallEntity info;
    protected ViewGroup accountsContentView;
    protected String commentParentId;
    private EditText commentTextView;
    protected ListView commentsListView;
    private ViewGroup fanWallContainer;
    protected AsyncTask loadDataTask;
    private boolean needToReload;
    protected ViewGroup rootView;
    protected String tabId;
    private boolean useV2Api;
    private boolean wasAnyCommentAdded;

    public FanWallFragment()
    {
    }

    private void addComment(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        String s1 = commentTextView.getText().toString();
        if (StringUtils.isEmpty(s1))
        {
            ViewUtils.showCustomToast(getHoldActivity().getApplicationContext(), getString(com.biznessapps.layout.R.string.fill_required_fields_message));
            return;
        }
        String s2 = cacher().getAppCode();
        String s3 = getIntent().getStringExtra("TAB_SPECIAL_ID");
        String s = commonsocialnetworkhandler.getUserID();
        int i = commonsocialnetworkhandler.getSocialType();
        String s4 = commonsocialnetworkhandler.getUserName();
        if (useV2Api)
        {
            commonsocialnetworkhandler = commentParentId;
            AppHttpUtils.postCommentAsync("comment_post.php", s2, s3, null, i, s, s4, s1, CommonUtils.getMD5Hash(String.format("comment986%sbizapps%s", new Object[] {
                s, Integer.valueOf(i)
            })), commonsocialnetworkhandler, 0.0D, 0.0D, null, getResultCallback());
        } else
        {
            if (i == 3)
            {
                commonsocialnetworkhandler = "";
            } else
            {
                commonsocialnetworkhandler = s;
            }
            commonsocialnetworkhandler = CommonUtils.getMD5Hash(String.format("fan713%s", new Object[] {
                commonsocialnetworkhandler
            }));
            AppHttpUtils.postCommentAsync(getResultCallback(), i, s, commonsocialnetworkhandler, s3, s4, s1, s2, commentParentId, false);
        }
        UserStatsProfile.getInstance(getActivity()).updateNumberOfPosts();
    }

    private android.widget.AdapterView.OnItemClickListener getOnItemClickListener()
    {
        return new android.widget.AdapterView.OnItemClickListener() {

            final FanWallFragment this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                view = (CommentEntity)adapterview.getAdapter().getItem(i);
                if (view != null)
                {
                    adapterview = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FanWallViewController"));
                    adapterview.putExtra("parent_id", view.getId());
                    adapterview.putExtra("ITEM_EXTRA", view);
                    view = getIntent().getStringExtra("TAB_SPECIAL_ID");
                    adapterview.putExtra("TAB_FRAGMENT", "FanWallViewController");
                    adapterview.putExtra("HAS_CHILDS", false);
                    adapterview.putExtra("TAB_SPECIAL_ID", view);
                    adapterview.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.replies));
                    startActivityForResult(adapterview, 0);
                }
            }

            
            {
                this$0 = FanWallFragment.this;
                super();
            }
        };
    }

    private AsyncCallback getResultCallback()
    {
        return new AsyncCallback() {

            final FanWallFragment this$0;

            public void onError(String s, Throwable throwable)
            {
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.error_occured));
            }

            public volatile void onResult(Object obj)
            {
                onResult((String)obj);
            }

            public void onResult(String s)
            {
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.successfully_posted));
                needToReload = true;
                wasAnyCommentAdded = true;
                commentTextView.setText("");
                loadData();
            }

            
            {
                this$0 = FanWallFragment.this;
                super();
            }
        };
    }

    protected boolean canUseCachedData()
    {
        info = (FanWallEntity)cacher().getData((new StringBuilder()).append("FAN_WALL_INFO_PROPERTY").append(commentParentId).toString());
        boolean flag;
        if (info != null && !needToReload)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        needToReload = false;
        return flag;
    }

    protected String defineBgUrl(Intent intent)
    {
        intent = null;
        if (info != null)
        {
            intent = info.getImageUrl();
        }
        return intent;
    }

    protected AnalyticEntity getAnalyticData()
    {
        AnalyticEntity analyticentity = super.getAnalyticData();
        analyticentity.setItemId(getIntent().getStringExtra("parent_id"));
        return analyticentity;
    }

    protected String getRequestUrl()
    {
label0:
        {
            String s = "";
            if (getHoldActivity() != null)
            {
                if (!getIntent().getBooleanExtra("YOUTUBE_MODE", false))
                {
                    break label0;
                }
                s = String.format("fan_wall.php?app_code=%s&yt_id=%s&tab_id=%s&show_all=1", new Object[] {
                    cacher().getAppCode(), commentParentId, tabId
                });
            }
            return s;
        }
        String s1;
        if (useV2Api)
        {
            s1 = "comment_list.php?app_code=%s&parent_id=%s&tab_id=%s&show_all=1";
        } else
        {
            s1 = "fan_wall.php?app_code=%s&parent_id=%s&tab_id=%s&show_all=1";
        }
        return String.format(s1, new Object[] {
            cacher().getAppCode(), commentParentId, tabId
        });
    }

    protected View getViewForBg()
    {
        return fanWallContainer;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    protected void initSettingsData()
    {
        super.initSettingsData();
        useV2Api = getIntent().getBooleanExtra("USE_V2_API", false);
    }

    protected void initViews(ViewGroup viewgroup)
    {
label0:
        {
            accountsContentView = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.choose_accounts_content);
            commentsListView = (ListView)viewgroup.findViewById(com.biznessapps.layout.R.id.comments_list_view);
            rootView = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.fan_wall_root_layout);
            final CommentEntity fanWallItem = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.comments_list_header);
            fanWallItem.setVisibility(0);
            fanWallItem.setBackgroundColor(settings.getEvenRowColor());
            commentTextView = (EditText)fanWallItem.findViewById(com.biznessapps.layout.R.id.comment_text);
            android.text.InputFilter.LengthFilter lengthfilter = new android.text.InputFilter.LengthFilter(250);
            commentTextView.setFilters(new InputFilter[] {
                lengthfilter
            });
            fanWallItem = (Button)fanWallItem.findViewById(com.biznessapps.layout.R.id.event_comment_button);
            commentTextView.setHint(com.biznessapps.layout.R.string.comment_hint);
            fanWallItem.setText(com.biznessapps.layout.R.string.submit);
            CommonUtils.overrideImageColor(settings.getButtonBgColor(), fanWallItem.getBackground());
            fanWallItem.setTextColor(settings.getButtonTextColor());
            fanWallItem.setOnClickListener(new android.view.View.OnClickListener() {

                final FanWallFragment this$0;
                final SocialLoginPopupView val$socialPopupView;

                public void onClick(View view)
                {
                    ViewUtils.closeKeyboard(getApplicationContext(), commentTextView);
                    if (useV2Api)
                    {
                        if (ViewUtils.checkGpsEnabling(getHoldActivity()))
                        {
                            socialPopupView.openLoginDialog();
                        }
                        return;
                    } else
                    {
                        socialPopupView.openLoginDialog();
                        return;
                    }
                }

            
            {
                this$0 = FanWallFragment.this;
                socialPopupView = socialloginpopupview;
                super();
            }
            });
            ViewUtils.setRootBgColor(viewgroup, settings);
            fanWallItem = (CommentEntity)getIntent().getSerializableExtra("ITEM_EXTRA");
            if (fanWallItem != null)
            {
                viewgroup = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.parent_item_container);
                viewgroup.setVisibility(0);
                final String uploadImageUrl = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.fan_wall_name);
                TextView textview = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.fan_wall_comment);
                TextView textview1 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.fan_wall_time_ago);
                Object obj = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.fan_wall_comment_item_image);
                CommonUtils.overrideImageColor(settings.getButtonBgColor(), ((ImageView) (obj)).getBackground());
                viewgroup = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.fan_wall_uploaded_image);
                uploadImageUrl.setText(fanWallItem.getTitle());
                textview.setText(fanWallItem.getComment());
                textview1.setText(DateUtils.getStringInterval(getApplicationContext(), fanWallItem.getDate()));
                uploadImageUrl = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
                uploadImageUrl.setView(((View) (obj)));
                uploadImageUrl.setUrl(fanWallItem.getImageUrl());
                uploadImageUrl.setImageSrc(true);
                uploadImageUrl.setImageFormType(1);
                uploadImageUrl.setImageType(1);
                obj = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
                ((ImageFetcher) (obj)).loadImage(uploadImageUrl);
                uploadImageUrl = fanWallItem.getUploadImageUrl();
                if (!StringUtils.isNotEmpty(uploadImageUrl))
                {
                    break label0;
                }
                ((ImageFetcher) (obj)).loadImage(uploadImageUrl, viewgroup);
                viewgroup.setVisibility(0);
                viewgroup.setOnClickListener(new android.view.View.OnClickListener() {

                    final FanWallFragment this$0;
                    final CommentEntity val$fanWallItem;
                    final String val$uploadImageUrl;

                    public void onClick(View view)
                    {
                        view = new com.biznessapps.gallery.GalleryData.Item();
                        view.setFullUrl(uploadImageUrl);
                        view.setInfo(fanWallItem.getComment());
                        Object obj1 = new ArrayList();
                        ((List) (obj1)).add(view);
                        GalleryManager.getInstance().setGalleryItems(((List) (obj1)));
                        obj1 = new Intent(getApplicationContext(), com/biznessapps/gallery/GalleryPreviewActivity);
                        ((Intent) (obj1)).putExtra("TAB_FRAGMENT", "GALLERY_PREVIEW_FRAGMENT");
                        ((Intent) (obj1)).putExtra("gallery_preview_extra", view);
                        startActivity(((Intent) (obj1)));
                    }

            
            {
                this$0 = FanWallFragment.this;
                uploadImageUrl = s;
                fanWallItem = commententity;
                super();
            }
                });
            }
            return;
        }
        viewgroup.setVisibility(8);
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        switch (j)
        {
        default:
            return;

        case 4: // '\004'
            needToReload = true;
            break;
        }
        loadData();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.fan_wall_layout, null);
        fanWallContainer = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.fan_root_container);
        initSettingsData();
        initViews(root);
        loadData();
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        openCustomDialogs();
        getHoldActivity().addBackPressedListener(new com.biznessapps.common.activities.CommonFragmentActivity.BackPressed() {

            final FanWallFragment this$0;

            public boolean onBackPressed()
            {
                if (wasAnyCommentAdded)
                {
                    getHoldActivity().setResult(4);
                    getHoldActivity().finish();
                }
                return wasAnyCommentAdded;
            }

            
            {
                this$0 = FanWallFragment.this;
                super();
            }
        });
        return root;
    }

    protected void plugListView(Activity activity)
    {
        if (info != null)
        {
            Object obj = info.getComments();
            if (ApiUtils.hasNotData(((List) (obj))))
            {
                ViewUtils.showCustomToast(activity.getApplicationContext(), getString(com.biznessapps.layout.R.string.nothing_found));
            } else
            {
                boolean flag;
                if (commentParentId == null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                obj = new NewFanWallAdapter(activity.getApplicationContext(), ((List) (obj)), flag, settings);
                commentsListView.setDividerHeight(0);
                commentsListView.setAdapter(((android.widget.ListAdapter) (obj)));
                if (activity.getIntent().getBooleanExtra("HAS_CHILDS", true))
                {
                    commentsListView.setOnItemClickListener(getOnItemClickListener());
                    return;
                }
            }
        }
    }

    protected void preDataLoading(Activity activity)
    {
        commentParentId = activity.getIntent().getStringExtra("parent_id");
        tabId = activity.getIntent().getStringExtra("TAB_SPECIAL_ID");
    }

    protected boolean tryParseData(String s)
    {
        if (useV2Api)
        {
            s = JsonParser.parseFanComments(s);
            if (!s.isEmpty())
            {
                info = new FanWallEntity();
            }
            info.setComments(s);
            info.setImageUrl(((CommentEntity)s.get(0)).getBackground());
        } else
        {
            s = JsonParser.parseFanWallData(s);
            if (s != null && !s.isEmpty())
            {
                info = (FanWallEntity)s.get(0);
                cacher().saveData((new StringBuilder()).append("FAN_WALL_INFO_PROPERTY").append(commentParentId).toString(), info);
            }
        }
        return info != null;
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        plugListView(activity);
    }



/*
    static boolean access$002(FanWallFragment fanwallfragment, boolean flag)
    {
        fanwallfragment.wasAnyCommentAdded = flag;
        return flag;
    }

*/





/*
    static boolean access$402(FanWallFragment fanwallfragment, boolean flag)
    {
        fanwallfragment.needToReload = flag;
        return flag;
    }

*/


    // Unreferenced inner class com/biznessapps/fan_wall/FanWallFragment$2

/* anonymous class */
    class _cls2 extends OnCommonSocialLoginListener
    {

        final FanWallFragment this$0;

        public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
        {
            addComment(commonsocialnetworkhandler);
        }

            
            {
                this$0 = FanWallFragment.this;
                super(context);
            }
    }

}
