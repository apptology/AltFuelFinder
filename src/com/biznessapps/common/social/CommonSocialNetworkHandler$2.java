// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social;


// Referenced classes of package com.biznessapps.common.social:
//            OnSocialLogoutListener, CommonSocialNetworkHandler, OnSocialStatusChangeListener, SocialNetworkManager

class this._cls0
    implements OnSocialLogoutListener
{

    final CommonSocialNetworkHandler this$0;

    public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
    {
        CommonSocialNetworkHandler.access$000(CommonSocialNetworkHandler.this, 1);
        if (CommonSocialNetworkHandler.access$300(CommonSocialNetworkHandler.this) != null)
        {
            CommonSocialNetworkHandler.access$300(CommonSocialNetworkHandler.this).onError(commonsocialnetworkhandler, s, s1);
        }
        if (CommonSocialNetworkHandler.access$200(CommonSocialNetworkHandler.this) != null)
        {
            CommonSocialNetworkHandler.access$200(CommonSocialNetworkHandler.this).onError(commonsocialnetworkhandler, s, s1);
        }
        CommonSocialNetworkHandler.access$102(CommonSocialNetworkHandler.this, null);
    }

    public void onLogoffCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        CommonSocialNetworkHandler.access$000(CommonSocialNetworkHandler.this, 1);
        SocialNetworkManager.getInstance(mContext).updateLoggedInSocialHandler(null);
        if (CommonSocialNetworkHandler.access$300(CommonSocialNetworkHandler.this) != null)
        {
            CommonSocialNetworkHandler.access$300(CommonSocialNetworkHandler.this).onLogoffCompleted(commonsocialnetworkhandler);
        }
        if (CommonSocialNetworkHandler.access$200(CommonSocialNetworkHandler.this) != null)
        {
            CommonSocialNetworkHandler.access$200(CommonSocialNetworkHandler.this).onLogoffCompleted(commonsocialnetworkhandler);
        }
        CommonSocialNetworkHandler.access$302(CommonSocialNetworkHandler.this, null);
    }

    ()
    {
        this$0 = CommonSocialNetworkHandler.this;
        super();
    }
}
