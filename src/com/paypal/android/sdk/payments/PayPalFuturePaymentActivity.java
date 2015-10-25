// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;
import com.paypal.android.sdk.cE;
import com.paypal.android.sdk.cG;
import com.paypal.android.sdk.cX;
import com.paypal.android.sdk.d;
import com.paypal.android.sdk.da;
import com.paypal.android.sdk.db;
import com.paypal.android.sdk.dc;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Timer;

// Referenced classes of package com.paypal.android.sdk.payments:
//            ao, PayPalService, FuturePaymentConsentActivity, aq, 
//            aA, PayPalAuthorization, LoginActivity, FuturePaymentInfoActivity, 
//            d, an, aH

public final class PayPalFuturePaymentActivity extends Activity
{

    public static final String EXTRA_RESULT_AUTHORIZATION = "com.paypal.android.sdk.authorization";
    public static final int RESULT_EXTRAS_INVALID = 2;
    private static final String a = com/paypal/android/sdk/payments/PayPalFuturePaymentActivity.getSimpleName();
    private Date b;
    private Timer c;
    private PayPalService d;
    private final ServiceConnection e = new ao(this);
    private boolean f;

    public PayPalFuturePaymentActivity()
    {
    }

    static PayPalService a(PayPalFuturePaymentActivity paypalfuturepaymentactivity, PayPalService paypalservice)
    {
        paypalfuturepaymentactivity.d = paypalservice;
        return paypalservice;
    }

    static aH a(PayPalFuturePaymentActivity paypalfuturepaymentactivity)
    {
        return paypalfuturepaymentactivity.c();
    }

    static String a()
    {
        return a;
    }

    static Timer a(PayPalFuturePaymentActivity paypalfuturepaymentactivity, Timer timer)
    {
        paypalfuturepaymentactivity.c = timer;
        return timer;
    }

    static PayPalService b(PayPalFuturePaymentActivity paypalfuturepaymentactivity)
    {
        return paypalfuturepaymentactivity.d;
    }

    private void b()
    {
        FuturePaymentConsentActivity.a(this, 1, d.d());
    }

    private aH c()
    {
        return new aq(this);
    }

    static void c(PayPalFuturePaymentActivity paypalfuturepaymentactivity)
    {
        if (paypalfuturepaymentactivity.d.d() == null)
        {
            Log.e(a, "Service state invalid.  Did you start the PayPalService?");
            paypalfuturepaymentactivity.setResult(2);
            paypalfuturepaymentactivity.finish();
            return;
        }
        aA aa = new aA(paypalfuturepaymentactivity.getIntent(), paypalfuturepaymentactivity.d.d(), false);
        if (!aa.d())
        {
            Log.e(a, "Service extras invalid.  Please see the docs.");
            paypalfuturepaymentactivity.setResult(2);
            paypalfuturepaymentactivity.finish();
            return;
        }
        if (!aa.e())
        {
            Log.e(a, "Extras invalid.  Please see the docs.");
            paypalfuturepaymentactivity.setResult(2);
            paypalfuturepaymentactivity.finish();
            return;
        }
        if (paypalfuturepaymentactivity.d.i())
        {
            paypalfuturepaymentactivity.b();
            return;
        } else
        {
            Calendar calendar = Calendar.getInstance();
            calendar.add(13, 1);
            paypalfuturepaymentactivity.b = calendar.getTime();
            paypalfuturepaymentactivity.d.a(paypalfuturepaymentactivity.c(), false);
            return;
        }
    }

    static Date d(PayPalFuturePaymentActivity paypalfuturepaymentactivity)
    {
        return paypalfuturepaymentactivity.b;
    }

    static void e(PayPalFuturePaymentActivity paypalfuturepaymentactivity)
    {
        paypalfuturepaymentactivity.b();
    }

    static Timer f(PayPalFuturePaymentActivity paypalfuturepaymentactivity)
    {
        return paypalfuturepaymentactivity.c;
    }

    public final void finish()
    {
        super.finish();
        (new StringBuilder()).append(a).append(".finish");
    }

    protected final void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        (new StringBuilder()).append(a).append(".onActivityResult");
        if (i != 1) goto _L2; else goto _L1
_L1:
        j;
        JVM INSTR tableswitch -1 0: default 56
    //                   -1 89
    //                   0 84;
           goto _L3 _L4 _L5
_L5:
        break; /* Loop/switch isn't completed */
_L3:
        Log.wtf(a, (new StringBuilder("unexpected request code ")).append(i).append(" call it a cancel").toString());
_L2:
        finish();
        return;
_L4:
        if (intent != null)
        {
            intent = (PayPalAuthorization)intent.getParcelableExtra("com.paypal.android.sdk.authorization");
            if (intent != null)
            {
                Intent intent1 = new Intent();
                intent1.putExtra("com.paypal.android.sdk.authorization", intent);
                setResult(-1, intent1);
            } else
            {
                Log.e(a, "result was OK, have data, but no authorization state in bundle, oops");
            }
        } else
        {
            Log.e(a, "result was OK, no intent data, oops");
        }
        if (true) goto _L2; else goto _L6
_L6:
    }

    protected final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        (new StringBuilder()).append(a).append(".onCreate");
        (new dc(this)).a();
        (new db(this)).a();
        (new da(this)).a(Arrays.asList(new String[] {
            com/paypal/android/sdk/payments/PayPalFuturePaymentActivity.getName(), com/paypal/android/sdk/payments/LoginActivity.getName(), com/paypal/android/sdk/payments/FuturePaymentInfoActivity.getName(), com/paypal/android/sdk/payments/FuturePaymentConsentActivity.getName()
        }));
        f = bindService(com.paypal.android.sdk.payments.d.b(this), e, 1);
        com.paypal.android.sdk.d.b(this);
        com.paypal.android.sdk.d.a(this);
        bundle = new cX(this);
        setContentView(((cX) (bundle)).a);
        ((cX) (bundle)).b.setText(cE.a(cG.y));
        com.paypal.android.sdk.payments.d.a(this, null, cG.y);
    }

    protected final Dialog onCreateDialog(int i, Bundle bundle)
    {
        switch (i)
        {
        default:
            return com.paypal.android.sdk.payments.d.a(this, cG.bc, bundle, i);

        case 2: // '\002'
            return com.paypal.android.sdk.payments.d.a(this, new an(this));

        case 3: // '\003'
            return com.paypal.android.sdk.payments.d.a(this, cG.be, bundle, i);
        }
    }

    protected final void onDestroy()
    {
        (new StringBuilder()).append(a).append(".onDestroy");
        if (d != null)
        {
            d.o();
            d.u();
        }
        if (f)
        {
            unbindService(e);
            f = false;
        }
        super.onDestroy();
    }

}
