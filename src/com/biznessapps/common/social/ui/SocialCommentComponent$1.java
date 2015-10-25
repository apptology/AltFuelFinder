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

class val.rootContainer
    implements android.view.lCommentComponent._cls1
{

    final SocialCommentComponent this$0;
    final Activity val$activity;
    final ViewGroup val$rootContainer;

    public void onClick(View view)
    {
        SocialCommentComponent.access$002(SocialCommentComponent.this, new SocialLoginPopupView(val$activity, val$rootContainer, new OnCommonSocialLoginListener(val$activity) {

            final SocialCommentComponent._cls1 this$1;

            public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                showCommentDialog(commonsocialnetworkhandler);
            }

            
            {
                this$1 = SocialCommentComponent._cls1.this;
                super(context);
            }
        }));
        SocialCommentComponent.access$000(SocialCommentComponent.this).openLoginDialog();
    }

    <init>()
    {
        this$0 = final_socialcommentcomponent;
        val$activity = activity1;
        val$rootContainer = ViewGroup.this;
        super();
    }
}
