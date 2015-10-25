// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;


// Referenced classes of package com.paypal.android.sdk.payments:
//            bv, PaymentMethodActivity

final class bw
    implements Runnable
{

    private bv a;

    bw(bv bv1)
    {
        a = bv1;
        super();
    }

    public final void run()
    {
        PaymentMethodActivity.f(a.a);
    }
}
