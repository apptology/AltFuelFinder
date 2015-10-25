// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

// Referenced classes of package com.paypal.android.sdk.payments:
//            PaymentActivity, aG, aO, PayPalService

final class aN
    implements ServiceConnection
{

    final PaymentActivity a;

    aN(PaymentActivity paymentactivity)
    {
        a = paymentactivity;
        super();
    }

    public final void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        (new StringBuilder()).append(PaymentActivity.a()).append(".onServiceConnected");
        if (a.isFinishing())
        {
            (new StringBuilder()).append(PaymentActivity.a()).append(".onServiceConnected exit - isFinishing");
        } else
        {
            PaymentActivity.a(a, ((aG)ibinder).a);
            if (PaymentActivity.b(a).a(new aO(this)))
            {
                PaymentActivity.c(a);
                return;
            }
        }
    }

    public final void onServiceDisconnected(ComponentName componentname)
    {
        PaymentActivity.a(a, null);
        PaymentActivity.a();
    }
}
