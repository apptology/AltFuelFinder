// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.coupons;

import android.content.DialogInterface;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.coupons:
//            CouponDetailFragment, CouponEntity

class this._cls0
    implements android.content.Listener
{

    final CouponDetailFragment this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        CouponDetailFragment.access$102(CouponDetailFragment.this, 2);
        CouponDetailFragment.access$800(CouponDetailFragment.this);
        CouponDetailFragment.access$902(CouponDetailFragment.this, CouponDetailFragment.access$000(CouponDetailFragment.this).getCheckinTargetMax());
        CouponDetailFragment.access$000(CouponDetailFragment.this).setCheckinTarget(CouponDetailFragment.access$900(CouponDetailFragment.this));
        CouponDetailFragment.access$000(CouponDetailFragment.this).setLastRedeemedTime(System.currentTimeMillis());
        CouponDetailFragment.access$000(CouponDetailFragment.this).setLastCheckinTime(System.currentTimeMillis());
        CouponDetailFragment.access$1000(CouponDetailFragment.this, CouponDetailFragment.access$000(CouponDetailFragment.this));
        CouponDetailFragment.access$1100(CouponDetailFragment.this);
        ViewUtils.showDialog(getHoldActivity(), com.biznessapps.layout.d);
    }

    ()
    {
        this$0 = CouponDetailFragment.this;
        super();
    }
}
