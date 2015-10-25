// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import android.app.AlertDialog;
import android.view.View;
import com.paypal.android.sdk.cE;
import com.paypal.android.sdk.cG;
import com.paypal.android.sdk.cK;
import java.util.ArrayList;

// Referenced classes of package com.paypal.android.sdk.payments:
//            bc, PaymentConfirmActivity

final class bb
    implements android.view.View.OnClickListener
{

    final cK a;
    final ArrayList b;
    final PaymentConfirmActivity c;

    bb(PaymentConfirmActivity paymentconfirmactivity, cK ck, ArrayList arraylist)
    {
        c = paymentconfirmactivity;
        a = ck;
        b = arraylist;
        super();
    }

    public final void onClick(View view)
    {
        view = new android.app.AlertDialog.Builder(view.getContext());
        view.setTitle(cE.a(cG.aC)).setAdapter(a, new bc(this));
        view.create().show();
    }
}
