// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import android.content.DialogInterface;
import com.paypal.android.sdk.cK;

// Referenced classes of package com.paypal.android.sdk.payments:
//            bb, PaymentConfirmActivity

final class bc
    implements android.content.DialogInterface.OnClickListener
{

    private bb a;

    bc(bb bb1)
    {
        a = bb1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        a.a.a(i);
        PaymentConfirmActivity.a(a.c, a.b, i);
    }
}
