// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import java.util.Calendar;
import java.util.Date;
import java.util.Timer;

// Referenced classes of package com.paypal.android.sdk.payments:
//            aH, PaymentActivity, aQ, d, 
//            aI

final class aP
    implements aH
{

    final PaymentActivity a;

    aP(PaymentActivity paymentactivity)
    {
        a = paymentactivity;
        super();
    }

    public final void a()
    {
        Date date = Calendar.getInstance().getTime();
        if (PaymentActivity.d(a).compareTo(date) > 0)
        {
            long l = PaymentActivity.d(a).getTime() - date.getTime();
            PaymentActivity.a();
            (new StringBuilder("Delaying ")).append(l).append(" miliseconds so user doesn't see flicker.");
            PaymentActivity.a(a, new Timer());
            PaymentActivity.f(a).schedule(new aQ(this), l);
            return;
        } else
        {
            PaymentActivity.e(a);
            return;
        }
    }

    public final void a(aI ai)
    {
        d.a(a, ai, 1, 2, 3);
    }
}
