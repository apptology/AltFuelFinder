// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.cart;

import android.view.View;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.food_ordering.cart:
//            CartFragment

class val.hasPayments
    implements android.view.tener
{

    final CartFragment this$0;
    final boolean val$hasPayments;

    public void onClick(View view)
    {
        if (val$hasPayments)
        {
            CartFragment.access$500(CartFragment.this);
            return;
        } else
        {
            ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.ment_not_available));
            return;
        }
    }

    ()
    {
        this$0 = final_cartfragment;
        val$hasPayments = Z.this;
        super();
    }
}
