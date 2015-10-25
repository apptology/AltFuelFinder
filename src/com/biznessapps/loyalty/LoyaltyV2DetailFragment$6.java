// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.content.Context;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV2DetailFragment

class istener extends OnCommonSocialLoginListener
{

    final LoyaltyV2DetailFragment this$0;

    public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
    {
        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.ect));
    }

    public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        LoyaltyV2DetailFragment.access$500(LoyaltyV2DetailFragment.this);
    }

    andler(Context context)
    {
        this$0 = LoyaltyV2DetailFragment.this;
        super(context);
    }
}
