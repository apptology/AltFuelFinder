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
import com.biznessapps.common.social.stats.UserStatsProfile;
import com.biznessapps.common.social.twitter.TwitterSocialNetworkHandler;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.common.social.ui:
//            ShareComponent, OnSharingCompletedListener

class this._cls0
    implements ommentListener
{

    final stener.onSharingCompleted this$0;

    public void onCommentEntered(String s)
    {
        TwitterSocialNetworkHandler.getInstance(activity).publishText(s, new OnSocialPublishListener() {

            final ShareComponent._cls13._cls1 this$1;

            public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s1, String s2)
            {
                if (s2 != null)
                {
                    Log.w("ShareComponent", s2);
                }
                ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.something_went_wrong));
                if (listener != null)
                {
                    listener.onSharingError(8, s1, s2);
                }
            }

            public void onPublishCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.successfully_posted));
                UserStatsProfile.getInstance(activity).updateNumberOfShares();
                if (listener != null)
                {
                    listener.onSharingCompleted(8);
                }
            }

            
            {
                this$1 = ShareComponent._cls13._cls1.this;
                super();
            }
        });
    }

    ener()
    {
        this$0 = this._cls0.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/common/social/ui/ShareComponent$13

/* anonymous class */
    static final class ShareComponent._cls13 extends OnCommonSocialLoginListener
    {

        final Activity val$activity;
        final OnSharingCompletedListener val$listener;
        final String val$text;

        public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
        {
            super.onError(commonsocialnetworkhandler, s, s1);
            if (listener != null)
            {
                listener.onSharingError(8, s, s1);
            }
        }

        public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
        {
            ShareComponent.showPostCommentDialog(activity, new ShareComponent._cls13._cls1(), text, 140);
        }

            
            {
                activity = activity1;
                listener = onsharingcompletedlistener;
                text = s;
                super(context);
            }
    }

}
