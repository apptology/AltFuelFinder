// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import com.biznessapps.common.social.CommonSocialNetworkHandler;

// Referenced classes of package com.biznessapps.common.social.ui:
//            SocialCommentComponent

class val.socialHandler
    implements tListener
{

    final SocialCommentComponent this$0;
    final CommonSocialNetworkHandler val$socialHandler;

    public void onCommentEntered(String s)
    {
        SocialCommentComponent.access$100(SocialCommentComponent.this, val$socialHandler, s);
    }

    tListener()
    {
        this$0 = final_socialcommentcomponent;
        val$socialHandler = CommonSocialNetworkHandler.this;
        super();
    }
}
