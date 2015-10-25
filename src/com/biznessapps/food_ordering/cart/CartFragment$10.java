// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.cart;

import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.entities.CartEntity;

// Referenced classes of package com.biznessapps.food_ordering.cart:
//            CartFragment

class this._cls0
    implements Runnable
{

    final CartFragment this$0;

    public void run()
    {
        FoodOrderingManager.getInstance().getCart().clear();
        getHoldActivity().finish();
    }

    ivity()
    {
        this$0 = CartFragment.this;
        super();
    }
}
