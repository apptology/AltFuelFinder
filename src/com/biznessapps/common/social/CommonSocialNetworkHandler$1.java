// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social;


// Referenced classes of package com.biznessapps.common.social:
//            OnSocialLoginListener, CommonSocialNetworkHandler, OnSocialStatusChangeListener, SocialNetworkManager

class this._cls0
    implements OnSocialLoginListener
{

    final CommonSocialNetworkHandler this$0;

    public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
    {
        CommonSocialNetworkHandler.access$000(CommonSocialNetworkHandler.this, 0);
        if (CommonSocialNetworkHandler.access$100(CommonSocialNetworkHandler.this) != null)
        {
            CommonSocialNetworkHandler.access$100(CommonSocialNetworkHandler.this).onError(commonsocialnetworkhandler, s, s1);
        }
        if (CommonSocialNetworkHandler.access$200(CommonSocialNetworkHandler.this) != null)
        {
            CommonSocialNetworkHandler.access$200(CommonSocialNetworkHandler.this).onError(commonsocialnetworkhandler, s, s1);
        }
        CommonSocialNetworkHandler.access$102(CommonSocialNetworkHandler.this, null);
    }

    public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        CommonSocialNetworkHandler.access$000(CommonSocialNetworkHandler.this, 0);
        SocialNetworkManager.getInstance(mContext).updateLoggedInSocialHandler(CommonSocialNetworkHandler.this);
        if (CommonSocialNetworkHandler.access$100(CommonSocialNetworkHandler.this) != null)
        {
            CommonSocialNetworkHandler.access$100(CommonSocialNetworkHandler.this).onLoginCompleted(commonsocialnetworkhandler);
        }
        if (CommonSocialNetworkHandler.access$200(CommonSocialNetworkHandler.this) != null)
        {
            CommonSocialNetworkHandler.access$200(CommonSocialNetworkHandler.this).onLoginCompleted(commonsocialnetworkhandler);
        }
        CommonSocialNetworkHandler.access$102(CommonSocialNetworkHandler.this, null);
    }

    ()
    {
        this$0 = CommonSocialNetworkHandler.this;
        super();
    }
}
