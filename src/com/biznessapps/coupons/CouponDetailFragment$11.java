// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.coupons;

import android.view.View;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.coupons:
//            CouponDetailFragment, CouponEntity

class this._cls0
    implements android.view.ragment._cls11
{

    final CouponDetailFragment this$0;

    public void onClick(View view)
    {
        view = CouponDetailFragment.access$000(CouponDetailFragment.this);
        boolean flag;
        if (!CouponDetailFragment.access$000(CouponDetailFragment.this).isSelected())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        view.setSelected(flag);
        ViewUtils.updateTurnOnOffViewState(CouponDetailFragment.access$000(CouponDetailFragment.this).isSelected(), CouponDetailFragment.access$1300(CouponDetailFragment.this), CouponDetailFragment.access$1400(CouponDetailFragment.this), CouponDetailFragment.access$1500(CouponDetailFragment.this));
    }

    ()
    {
        this$0 = CouponDetailFragment.this;
        super();
    }
}
