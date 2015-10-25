// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;
import com.biznessapps.common.social.OnSocialPublishListener;
import com.biznessapps.common.social.facebook.FacebookSocialNetworkHandler;
import com.biznessapps.common.social.stats.UserStatsProfile;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.common.social.ui:
//            ShareComponent, OnSharingCompletedListener

static final class stener extends OnCommonSocialLoginListener
{

    final Activity val$activity;
    final OnSharingCompletedListener val$listener;
    final String val$text;

    public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
    {
        super.onError(commonsocialnetworkhandler, s, s1);
        if (val$listener != null)
        {
            val$listener.onSharingError(4, s, s1);
        }
    }

    public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        ShareComponent.showPostCommentDialog(val$activity, new ShareComponent.PostCommentListener() {

            final ShareComponent._cls12 this$0;

            public void onCommentEntered(String s)
            {
                FacebookSocialNetworkHandler.getInstance(activity).publishText(s, new OnSocialPublishListener() {

                    final _cls1 this$1;

                    public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
                    {
                        if (s1 != null)
                        {
                            Log.w("ShareComponent", s1);
                        }
                        ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.something_went_wrong));
                        if (listener != null)
                        {
                            listener.onSharingError(4, s, s1);
                        }
                    }

                    public void onPublishCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
                    {
                        ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.successfully_posted));
                        UserStatsProfile.getInstance(activity).updateNumberOfShares();
                        if (listener != null)
                        {
                            listener.onSharingCompleted(4);
                        }
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                });
            }

            
            {
                this$0 = ShareComponent._cls12.this;
                super();
            }
        }, val$text);
    }

    Listener(Context context, OnSharingCompletedListener onsharingcompletedlistener, Activity activity1, String s)
    {
        val$listener = onsharingcompletedlistener;
        val$activity = activity1;
        val$text = s;
        super(context);
    }
}
