// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.coupons;

import android.content.Context;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;

// Referenced classes of package com.biznessapps.coupons:
//            CouponDetailFragment

class nListener extends OnCommonSocialLoginListener
{

    final CouponDetailFragment this$0;

    public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        CouponDetailFragment.access$800(CouponDetailFragment.this);
    }

    kHandler(Context context)
    {
        this$0 = CouponDetailFragment.this;
        super(context);
    }
}
