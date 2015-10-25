// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.coupons;

import android.content.Intent;
import com.biznessapps.location.LocationView;

// Referenced classes of package com.biznessapps.coupons:
//            CouponDetailFragment

class this._cls0
    implements Runnable
{

    final CouponDetailFragment this$0;

    public void run()
    {
        Intent intent = new Intent(getApplicationContext(), com/biznessapps/location/LocationView);
        intent.putExtra("COUPON_EXTRA", CouponDetailFragment.access$000(CouponDetailFragment.this));
        startActivity(intent);
    }

    ()
    {
        this$0 = CouponDetailFragment.this;
        super();
    }
}
