// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social;


// Referenced classes of package com.biznessapps.common.social:
//            OnSocialActionCompletedListener, CommonSocialNetworkHandler, OnSocialStatusChangeListener

class this._cls0
    implements OnSocialActionCompletedListener
{

    final CommonSocialNetworkHandler this$0;

    public void onActionCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        CommonSocialNetworkHandler.access$000(CommonSocialNetworkHandler.this, 3);
        if (CommonSocialNetworkHandler.access$500(CommonSocialNetworkHandler.this) != null)
        {
            CommonSocialNetworkHandler.access$500(CommonSocialNetworkHandler.this).onActionCompleted(commonsocialnetworkhandler);
        }
        if (CommonSocialNetworkHandler.access$200(CommonSocialNetworkHandler.this) != null)
        {
            CommonSocialNetworkHandler.access$200(CommonSocialNetworkHandler.this).onActionCompleted(commonsocialnetworkhandler);
        }
        CommonSocialNetworkHandler.access$502(CommonSocialNetworkHandler.this, null);
    }

    public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
    {
        CommonSocialNetworkHandler.access$000(CommonSocialNetworkHandler.this, 3);
        if (CommonSocialNetworkHandler.access$500(CommonSocialNetworkHandler.this) != null)
        {
            CommonSocialNetworkHandler.access$500(CommonSocialNetworkHandler.this).onError(commonsocialnetworkhandler, s, s1);
        }
        if (CommonSocialNetworkHandler.access$200(CommonSocialNetworkHandler.this) != null)
        {
            CommonSocialNetworkHandler.access$200(CommonSocialNetworkHandler.this).onError(commonsocialnetworkhandler, s, s1);
        }
        CommonSocialNetworkHandler.access$502(CommonSocialNetworkHandler.this, null);
    }

    er()
    {
        this$0 = CommonSocialNetworkHandler.this;
        super();
    }
}
