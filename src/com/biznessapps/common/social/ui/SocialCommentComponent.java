// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.AsyncCallback;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.DataSource;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;
import com.biznessapps.constants.AppConstants;
import com.biznessapps.events.EventCommentsAdapter;
import com.biznessapps.fan_wall.CommentEntity;
import com.biznessapps.social.SocialFragment;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.biznessapps.common.social.ui:
//            ShareComponent, SocialLoginPopupView

public class SocialCommentComponent
    implements AppConstants
{
    public static interface CommentActionListener
    {

        public abstract void onCommentAdded();
    }


    private Activity activity;
    private CommentActionListener commentActionListener;
    private String commentId;
    private TextView commentsLabel;
    private boolean enableListViewScroll;
    private ViewGroup rootContainer;
    private UiSettings settings;
    private SocialLoginPopupView socialLoginPopupView;
    private String tabId;
    private int timestampType;

    public SocialCommentComponent(Activity activity1, ViewGroup viewgroup, String s, String s1, UiSettings uisettings, int i)
    {
        this(activity1, viewgroup, s, s1, false, uisettings, i);
    }

    public SocialCommentComponent(final Activity activity, final ViewGroup rootContainer, String s, String s1, boolean flag, UiSettings uisettings, int i)
    {
        enableListViewScroll = true;
        settings = uisettings;
        this.activity = activity;
        commentId = s;
        tabId = s1;
        this.rootContainer = rootContainer;
        timestampType = i;
        if (flag)
        {
            s = (ViewGroup)rootContainer.findViewById(com.biznessapps.layout.R.id.comments_list_top_header);
            s.setBackgroundColor(uisettings.getTransparentSectionBarColor());
            if (flag)
            {
                i = 0;
            } else
            {
                i = 8;
            }
            s.setVisibility(i);
            commentsLabel = (TextView)s.findViewById(com.biznessapps.layout.R.id.comments_label);
            commentsLabel.setText(activity.getString(com.biznessapps.layout.R.string.comments));
            commentsLabel.setTextColor(uisettings.getSectionTextColor());
            s = (Button)s.findViewById(com.biznessapps.layout.R.id.post_comment_button);
        } else
        {
            s = (ViewGroup)rootContainer.findViewById(com.biznessapps.layout.R.id.comments_list_header);
            s.setBackgroundColor(uisettings.getTransparentSectionBarColor());
            s = (Button)s.findViewById(com.biznessapps.layout.R.id.post_comment_button);
        }
        s.setText(activity.getString(com.biznessapps.layout.R.string.post_comment));
        s.setTextColor(uisettings.getButtonTextColor());
        CommonUtils.overrideImageColor(uisettings.getButtonBgColor(), s.getBackground());
        s.setOnClickListener(new android.view.View.OnClickListener() {

            final SocialCommentComponent this$0;
            final Activity val$activity;
            final ViewGroup val$rootContainer;

            public void onClick(View view)
            {
                socialLoginPopupView = new SocialLoginPopupView(activity, rootContainer, new OnCommonSocialLoginListener(activity) {

                    final _cls1 this$1;

                    public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
                    {
                        showCommentDialog(commonsocialnetworkhandler);
                    }

            
            {
                this$1 = _cls1.this;
                super(context);
            }
                });
                socialLoginPopupView.openLoginDialog();
            }

            
            {
                this$0 = SocialCommentComponent.this;
                activity = activity1;
                rootContainer = viewgroup;
                super();
            }
        });
    }

    private void addComment(CommonSocialNetworkHandler commonsocialnetworkhandler, String s)
    {
        String s1;
        String s2;
label0:
        {
            if (activity != null)
            {
                s1 = cacher().getAppCode();
                s2 = activity.getIntent().getStringExtra("TAB_SPECIAL_ID");
                if (!StringUtils.isEmpty(s))
                {
                    break label0;
                }
                ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.fill_required_fields_message));
            }
            return;
        }
        if (!StringUtils.checkTextFieldsOnEmpty(new String[] {
    s2, s1
}))
        {
            postComment(activity, commonsocialnetworkhandler, "comment_post.php", "comment986%sbizapps%s", s1, s2, s, getResultCallback(null));
            return;
        } else
        {
            closeActivityWithResult(com.biznessapps.layout.R.string.error_occured);
            return;
        }
    }

    private CachingManager cacher()
    {
        return AppCore.getInstance().getCachingManager();
    }

    private void closeActivityWithResult(int i)
    {
        if (activity != null)
        {
            ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(i));
        }
    }

    private AsyncCallback getResultCallback(CommentEntity commententity)
    {
        AsyncCallback asynccallback = new AsyncCallback() {

            final SocialCommentComponent this$0;

            public void onError(String s, Throwable throwable)
            {
                closeActivityWithResult(com.biznessapps.layout.R.string.error_occured);
            }

            public volatile void onResult(Object obj)
            {
                onResult((String)obj);
            }

            public void onResult(String s)
            {
                if (activity != null)
                {
                    s = (CommentEntity)getMeta();
                    s.setTimeStamp(System.currentTimeMillis() / 1000L);
                    SocialFragment.addComment(s);
                    closeActivityWithResult(com.biznessapps.layout.R.string.successfully_posted);
                    loadCommentsData();
                    if (commentActionListener != null)
                    {
                        commentActionListener.onCommentAdded();
                    }
                }
            }

            
            {
                this$0 = SocialCommentComponent.this;
                super();
            }
        };
        asynccallback.setMeta(commententity);
        return asynccallback;
    }

    private void postComment(Activity activity1, CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1, String s2, String s3, String s4, 
            AsyncCallback asynccallback)
    {
        if (commonsocialnetworkhandler != null)
        {
            activity1 = commentId;
            String s5 = commonsocialnetworkhandler.getUserID();
            String s6 = commonsocialnetworkhandler.getUserName();
            String s7 = commonsocialnetworkhandler.getUserProfileURL();
            int i = commonsocialnetworkhandler.getSocialType();
            commonsocialnetworkhandler = CommonUtils.getMD5Hash(String.format(s1, new Object[] {
                s5, Integer.valueOf(i)
            }));
            asynccallback.setMeta(new CommentEntity(System.currentTimeMillis(), s6, s4, s7));
            AppHttpUtils.postCommentAsync(s, s2, s3, activity1, i, s5, s6, s4, commonsocialnetworkhandler, null, 0.0D, 0.0D, null, asynccallback);
        }
    }

    public SocialLoginPopupView getSocialLoginPopupView()
    {
        return socialLoginPopupView;
    }

    public void loadCommentsData()
    {
        Context context = activity.getApplicationContext();
        RefreshableListView refreshablelistview = (RefreshableListView)rootContainer.findViewById(com.biznessapps.layout.R.id.comments_list_view);
        (new AsyncTask() {

            final SocialCommentComponent this$0;
            final Context val$appContext;
            final CachingManager val$cacher;
            final RefreshableListView val$listView;

            protected volatile Object doInBackground(Object aobj[])
            {
                return doInBackground((Void[])aobj);
            }

            protected transient List doInBackground(Void avoid[])
            {
                Object obj = null;
                avoid = String.format("comment_list.php?app_code=%s&id=%s&tab_id=%s&show_all=1", new Object[] {
                    cacher.getAppCode(), commentId, tabId
                });
                List list = JsonParser.parseFanComments(DataSource.getInstance().getData(avoid));
                avoid = obj;
                if (list != null)
                {
                    avoid = obj;
                    if (!list.isEmpty())
                    {
                        avoid = list;
                        cacher.saveData((new StringBuilder()).append("FAN_WALL_INFO_PROPERTY").append(commentId).toString(), avoid);
                    }
                }
                return avoid;
            }

            protected volatile void onPostExecute(Object obj)
            {
                onPostExecute((List)obj);
            }

            protected void onPostExecute(List list)
            {
label0:
                {
                    super.onPostExecute(list);
                    if (list != null)
                    {
                        LinkedList linkedlist = new LinkedList();
                        CommentEntity commententity;
                        for (list = list.iterator(); list.hasNext(); linkedlist.add(ViewUtils.getWrappedItem(commententity, linkedlist, settings)))
                        {
                            commententity = (CommentEntity)list.next();
                            commententity.setImageId(com.biznessapps.layout.R.drawable.comment_default_icon);
                        }

                        int i;
                        if (linkedlist.isEmpty() || linkedlist.size() == 1 && StringUtils.isEmpty(((CommentEntity)linkedlist.get(0)).getId()))
                        {
                            i = 1;
                        } else
                        {
                            i = 0;
                        }
                        if (i == 0)
                        {
                            list = new EventCommentsAdapter(appContext, timestampType, linkedlist, settings);
                            listView.setAdapter(list);
                        }
                        if (commentsLabel != null)
                        {
                            if (i != 0)
                            {
                                i = 0;
                            } else
                            {
                                i = linkedlist.size();
                            }
                            commentsLabel.setText((new StringBuilder()).append(i).append(" ").append(appContext.getString(com.biznessapps.layout.R.string.comments)).toString());
                        }
                        if (enableListViewScroll)
                        {
                            break label0;
                        }
                        listView.setExpandOn(true);
                    }
                    return;
                }
                listView.setExpandOn(false);
            }

            
            {
                this$0 = SocialCommentComponent.this;
                cacher = cachingmanager;
                appContext = context;
                listView = refreshablelistview;
                super();
            }
        }).execute(new Void[0]);
    }

    public void setCommentActionListener(CommentActionListener commentactionlistener)
    {
        commentActionListener = commentactionlistener;
    }

    public void setEnableListViewScroll(boolean flag)
    {
        enableListViewScroll = flag;
    }

    public void showCommentDialog(final CommonSocialNetworkHandler socialHandler)
    {
        ShareComponent.showPostCommentDialog(activity, new ShareComponent.PostCommentListener() {

            final SocialCommentComponent this$0;
            final CommonSocialNetworkHandler val$socialHandler;

            public void onCommentEntered(String s)
            {
                addComment(socialHandler, s);
            }

            
            {
                this$0 = SocialCommentComponent.this;
                socialHandler = commonsocialnetworkhandler;
                super();
            }
        }, com.biznessapps.layout.R.string.post_comment, com.biznessapps.layout.R.string.done, null, 250);
    }



/*
    static SocialLoginPopupView access$002(SocialCommentComponent socialcommentcomponent, SocialLoginPopupView socialloginpopupview)
    {
        socialcommentcomponent.socialLoginPopupView = socialloginpopupview;
        return socialloginpopupview;
    }

*/










}
