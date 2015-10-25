// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.coupons;

import android.content.Intent;
import com.biznessapps.common.activities.CommonFragmentActivity;

// Referenced classes of package com.biznessapps.coupons:
//            CouponDetailFragment

class this._cls0
    implements com.biznessapps.common.activities.BackPressed
{

    final CouponDetailFragment this$0;

    public boolean onBackPressed()
    {
        CommonFragmentActivity commonfragmentactivity = getHoldActivity();
        if (commonfragmentactivity != null)
        {
            Intent intent = new Intent();
            intent.putExtra("COUPON_EXTRA", CouponDetailFragment.access$000(CouponDetailFragment.this));
            commonfragmentactivity.setResult(1, intent);
            commonfragmentactivity.finish();
        }
        return true;
    }

    tActivity()
    {
        this$0 = CouponDetailFragment.this;
        super();
    }
}
