// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import android.view.View;

// Referenced classes of package com.paypal.android.sdk.payments:
//            PaymentMethodActivity

final class bm
    implements android.view.View.OnClickListener
{

    private PaymentMethodActivity a;

    bm(PaymentMethodActivity paymentmethodactivity)
    {
        a = paymentmethodactivity;
        super();
    }

    public final void onClick(View view)
    {
        PaymentMethodActivity.a(a);
    }
}
