// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.coupons;


// Referenced classes of package com.biznessapps.coupons:
//            CouponsListFragment, CouponEntity

class this._cls0
    implements com.biznessapps.common.activities..BackPressed
{

    final CouponsListFragment this$0;

    public boolean onBackPressed()
    {
        if (CouponsListFragment.access$000(CouponsListFragment.this) != null)
        {
            CouponsListFragment.access$000(CouponsListFragment.this).setUseAgain(true);
        }
        return false;
    }

    ntActivity.BackPressed()
    {
        this$0 = CouponsListFragment.this;
        super();
    }
}
