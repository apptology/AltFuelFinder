// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.social;

import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnSocialStatusChangeListener;

// Referenced classes of package com.biznessapps.social:
//            SocialFragment

class atusChangeListener extends OnSocialStatusChangeListener
{

    final SocialFragment this$0;

    public void onActionCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        SocialFragment.access$100(SocialFragment.this);
    }

    public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
    {
        SocialFragment.access$100(SocialFragment.this);
    }

    public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        SocialFragment.access$100(SocialFragment.this);
    }

    public void onLogoffCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        SocialFragment.access$100(SocialFragment.this);
    }

    public void onPublishCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        SocialFragment.access$100(SocialFragment.this);
    }

    alNetworkHandler()
    {
        this$0 = SocialFragment.this;
        super();
    }
}
