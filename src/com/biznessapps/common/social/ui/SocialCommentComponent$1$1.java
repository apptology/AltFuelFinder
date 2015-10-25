// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;

// Referenced classes of package com.biznessapps.common.social.ui:
//            SocialCommentComponent, SocialLoginPopupView

class nit> extends OnCommonSocialLoginListener
{

    final CommentDialog this$1;

    public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        showCommentDialog(commonsocialnetworkhandler);
    }

    l.rootContainer(Context context)
    {
        this$1 = this._cls1.this;
        super(context);
    }

    // Unreferenced inner class com/biznessapps/common/social/ui/SocialCommentComponent$1

/* anonymous class */
    class SocialCommentComponent._cls1
        implements android.view.View.OnClickListener
    {

        final SocialCommentComponent this$0;
        final Activity val$activity;
        final ViewGroup val$rootContainer;

        public void onClick(View view)
        {
            SocialCommentComponent.access$002(SocialCommentComponent.this, new SocialLoginPopupView(activity, rootContainer, new SocialCommentComponent._cls1._cls1(activity)));
            SocialCommentComponent.access$000(SocialCommentComponent.this).openLoginDialog();
        }

            
            {
                this$0 = final_socialcommentcomponent;
                activity = activity1;
                rootContainer = ViewGroup.this;
                super();
            }
    }

}
