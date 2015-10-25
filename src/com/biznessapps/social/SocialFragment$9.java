// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.social;

import android.content.Context;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;

// Referenced classes of package com.biznessapps.social:
//            SocialFragment

class cialLoginListener extends OnCommonSocialLoginListener
{

    final SocialFragment this$0;

    public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        SocialFragment.access$000(SocialFragment.this);
    }

    alNetworkHandler(Context context)
    {
        this$0 = SocialFragment.this;
        super(context);
    }
}
