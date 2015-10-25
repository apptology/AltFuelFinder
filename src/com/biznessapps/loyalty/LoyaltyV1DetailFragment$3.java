// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.content.Context;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV1DetailFragment

class istener extends OnCommonSocialLoginListener
{

    final LoyaltyV1DetailFragment this$0;

    public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        LoyaltyV1DetailFragment.access$300(LoyaltyV1DetailFragment.this);
    }

    andler(Context context)
    {
        this$0 = LoyaltyV1DetailFragment.this;
        super(context);
    }
}
