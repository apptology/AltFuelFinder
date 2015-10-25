// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.coupons;

import com.biznessapps.api.AsyncCallback;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;

// Referenced classes of package com.biznessapps.coupons:
//            CouponDetailFragment

class this._cls0 extends AsyncCallback
{

    final CouponDetailFragment this$0;

    public volatile void onResult(Object obj)
    {
        onResult((String)obj);
    }

    public void onResult(String s)
    {
        if (getHoldActivity() != null)
        {
            int i;
            if (JsonParser.hasDataError(s))
            {
                i = com.biznessapps.layout.ror;
            } else
            {
                CouponDetailFragment.access$1600(CouponDetailFragment.this);
                i = com.biznessapps.layout.sted;
            }
            ViewUtils.showCustomToast(getApplicationContext(), getString(i));
        }
    }

    ()
    {
        this$0 = CouponDetailFragment.this;
        super();
    }
}
