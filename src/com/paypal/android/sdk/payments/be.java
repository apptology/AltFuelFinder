// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import android.content.DialogInterface;
import com.paypal.android.sdk.cW;

// Referenced classes of package com.paypal.android.sdk.payments:
//            bd, PaymentConfirmActivity

final class be
    implements android.content.DialogInterface.OnClickListener
{

    private bd a;

    be(bd bd1)
    {
        a = bd1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        a.a.a(i);
        PaymentConfirmActivity.b(a.c, a.b, i);
    }
}
