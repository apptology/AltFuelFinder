// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.facebook;

import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnSocialActionCompletedListener;
import com.biznessapps.common.social.OnSocialLoginListener;

// Referenced classes of package com.biznessapps.common.social.facebook:
//            FacebookSocialNetworkHandler

class this._cls0
    implements OnSocialActionCompletedListener
{

    final FacebookSocialNetworkHandler this$0;

    public void onActionCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        FacebookSocialNetworkHandler.access$800(FacebookSocialNetworkHandler.this).onLoginCompleted(commonsocialnetworkhandler);
    }

    public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
    {
        FacebookSocialNetworkHandler.access$700(FacebookSocialNetworkHandler.this).onError(commonsocialnetworkhandler, s, s1);
    }

    ()
    {
        this$0 = FacebookSocialNetworkHandler.this;
        super();
    }
}
