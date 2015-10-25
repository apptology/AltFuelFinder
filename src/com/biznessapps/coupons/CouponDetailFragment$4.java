// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.coupons;

import android.view.View;
import com.biznessapps.common.social.ui.ShareComponent;

// Referenced classes of package com.biznessapps.coupons:
//            CouponDetailFragment

class this._cls0
    implements android.view.Fragment._cls4
{

    final CouponDetailFragment this$0;

    public void onClick(View view)
    {
        ShareComponent.showSharingOptionDialog(getHoldActivity());
    }

    ()
    {
        this$0 = CouponDetailFragment.this;
        super();
    }
}
