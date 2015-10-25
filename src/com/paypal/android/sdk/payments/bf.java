// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import android.content.Intent;
import android.os.Bundle;
import com.paypal.android.sdk.by;
import com.paypal.android.sdk.cE;
import com.paypal.android.sdk.cG;
import com.paypal.android.sdk.cO;
import com.paypal.android.sdk.ck;

// Referenced classes of package com.paypal.android.sdk.payments:
//            aF, PaymentConfirmActivity, PayPalService, aI, 
//            aX, bk, d, ProofOfPayment, 
//            PaymentConfirmation, aS

final class bf
    implements aF
{

    private PaymentConfirmActivity a;

    bf(PaymentConfirmActivity paymentconfirmactivity)
    {
        a = paymentconfirmactivity;
        super();
    }

    public final void a(aI ai)
    {
        PaymentConfirmActivity.c(a).c().a();
        PaymentConfirmActivity.f(a);
        if (ai.a() && !"UNAUTHORIZED_PAYMENT".equals(ai.b))
        {
            switch (aX.a[PaymentConfirmActivity.g(a).ordinal()])
            {
            default:
                return;

            case 1: // '\001'
                d.a(a, cE.a(cG.aL), 4);
                return;

            case 2: // '\002'
            case 3: // '\003'
                a.showDialog(2);
                break;
            }
            PaymentConfirmActivity.a();
            (new StringBuilder("server thinks token is expired, get new one. AccessToken: ")).append(PaymentConfirmActivity.c(a).c().c);
            PaymentConfirmActivity.c(a).a(PaymentConfirmActivity.h(a), true);
            return;
        }
        switch (aX.a[PaymentConfirmActivity.g(a).ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            Bundle bundle = new Bundle();
            bundle.putString("BUNDLE_ERROR_CODE", ai.b);
            a.showDialog(5, bundle);
            return;

        case 2: // '\002'
        case 3: // '\003'
            PaymentConfirmActivity.i(a).b(true);
            break;
        }
        d.a(a, cE.a(ai.b), 1);
    }

    public final void a(Object obj)
    {
        if (obj instanceof ProofOfPayment)
        {
            obj = (ProofOfPayment)obj;
            obj = new PaymentConfirmation(PaymentConfirmActivity.c(a).e(), PaymentConfirmActivity.d(a).a(), ((ProofOfPayment) (obj)));
            Intent intent = a.getIntent();
            intent.putExtra("com.paypal.android.sdk.paymentConfirmation", ((android.os.Parcelable) (obj)));
            PaymentConfirmActivity.e(a);
            a.setResult(-1, intent);
            a.finish();
        } else
        if (obj instanceof ck)
        {
            PaymentConfirmActivity.a(a, (ck)obj);
            return;
        }
    }
}
