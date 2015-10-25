// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import android.content.Intent;

// Referenced classes of package com.paypal.android.sdk.payments:
//            C, PaymentActivity, aS, PayPalPayment, 
//            PayPalConfiguration

final class aR extends C
{

    aR(Intent intent, PayPalConfiguration paypalconfiguration)
    {
        super(intent, paypalconfiguration);
    }

    protected final String a()
    {
        return com/paypal/android/sdk/payments/PaymentActivity.getSimpleName();
    }

    final boolean e()
    {
        aS as = new aS(b());
        boolean flag;
        if (as.a() != null && as.a().isProcessable())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(flag, "PaymentActivity.EXTRA_PAYMENT");
        return flag;
    }
}
