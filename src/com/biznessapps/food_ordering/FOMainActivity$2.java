// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering;

import com.biznessapps.food_ordering.entities.CartEntity;
import com.braintreepayments.api.Braintree;

// Referenced classes of package com.biznessapps.food_ordering:
//            FOMainActivity, FoodOrderingManager

class val.clientToken
    implements com.braintreepayments.api.eeSetupFinishedListener
{

    final FOMainActivity this$0;
    final String val$clientToken;

    public void onBraintreeSetupFinished(boolean flag, Braintree braintree, String s, Exception exception)
    {
        if (flag)
        {
            FoodOrderingManager.getInstance().getCart().setClientToken(val$clientToken);
        }
    }

    ty()
    {
        this$0 = final_fomainactivity;
        val$clientToken = String.this;
        super();
    }
}
