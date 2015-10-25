// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social;


// Referenced classes of package com.biznessapps.common.social:
//            OnSocialPublishListener, CommonSocialNetworkHandler, OnSocialStatusChangeListener

class this._cls0
    implements OnSocialPublishListener
{

    final CommonSocialNetworkHandler this$0;

    public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
    {
        CommonSocialNetworkHandler.access$000(CommonSocialNetworkHandler.this, 2);
        if (CommonSocialNetworkHandler.access$400(CommonSocialNetworkHandler.this) != null)
        {
            CommonSocialNetworkHandler.access$400(CommonSocialNetworkHandler.this).onError(commonsocialnetworkhandler, s, s1);
        }
        if (CommonSocialNetworkHandler.access$200(CommonSocialNetworkHandler.this) != null)
        {
            CommonSocialNetworkHandler.access$200(CommonSocialNetworkHandler.this).onError(commonsocialnetworkhandler, s, s1);
        }
        CommonSocialNetworkHandler.access$402(CommonSocialNetworkHandler.this, null);
    }

    public void onPublishCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        CommonSocialNetworkHandler.access$000(CommonSocialNetworkHandler.this, 2);
        if (CommonSocialNetworkHandler.access$400(CommonSocialNetworkHandler.this) != null)
        {
            CommonSocialNetworkHandler.access$400(CommonSocialNetworkHandler.this).onPublishCompleted(commonsocialnetworkhandler);
        }
        if (CommonSocialNetworkHandler.access$200(CommonSocialNetworkHandler.this) != null)
        {
            CommonSocialNetworkHandler.access$200(CommonSocialNetworkHandler.this).onPublishCompleted(commonsocialnetworkhandler);
        }
        CommonSocialNetworkHandler.access$402(CommonSocialNetworkHandler.this, null);
    }

    ()
    {
        this$0 = CommonSocialNetworkHandler.this;
        super();
    }
}
