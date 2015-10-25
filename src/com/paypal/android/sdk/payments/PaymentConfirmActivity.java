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
import android.view.View;
import android.widget.ListView;
import com.paypal.android.sdk.Q;
import com.paypal.android.sdk.R;
import com.paypal.android.sdk.S;
import com.paypal.android.sdk.ay;
import com.paypal.android.sdk.b;
import com.paypal.android.sdk.bF;
import com.paypal.android.sdk.bI;
import com.paypal.android.sdk.bT;
import com.paypal.android.sdk.bv;
import com.paypal.android.sdk.by;
import com.paypal.android.sdk.cD;
import com.paypal.android.sdk.cE;
import com.paypal.android.sdk.cG;
import com.paypal.android.sdk.cJ;
import com.paypal.android.sdk.cK;
import com.paypal.android.sdk.cO;
import com.paypal.android.sdk.cV;
import com.paypal.android.sdk.cW;
import com.paypal.android.sdk.ca;
import com.paypal.android.sdk.ck;
import com.paypal.android.sdk.d;
import com.paypal.android.sdk.g;
import io.card.payment.CardType;
import io.card.payment.CreditCard;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.paypal.android.sdk.payments:
//            aZ, PayPalPayment, bj, bA, 
//            aS, PayPalService, bk, n, 
//            PayPalConfiguration, LoginActivity, PayPalPaymentDetails, ShippingAddress, 
//            bd, bb, bf, d, 
//            aX, aW, aT, aY, 
//            bg, bh, bi, aU, 
//            aV, aH

public final class PaymentConfirmActivity extends Activity
{

    private static final String a = com/paypal/android/sdk/payments/PaymentConfirmActivity.getSimpleName();
    private bj b;
    private bA c;
    private boolean d;
    private boolean e;
    private cO f;
    private aS g;
    private bk h;
    private CreditCard i;
    private PayPalService j;
    private final ServiceConnection k = new aZ(this);
    private boolean l;

    public PaymentConfirmActivity()
    {
    }

    private static ca a(PayPalPayment paypalpayment)
    {
        return new ca(new BigDecimal(bT.a(paypalpayment.a().doubleValue(), paypalpayment.d()).trim()), paypalpayment.d());
    }

    static PayPalService a(PaymentConfirmActivity paymentconfirmactivity, PayPalService paypalservice)
    {
        paymentconfirmactivity.j = paypalservice;
        return paypalservice;
    }

    static String a()
    {
        return a;
    }

    private void a(int i1)
    {
        setResult(i1, new Intent());
    }

    static void a(Activity activity, int i1, bk bk1, CreditCard creditcard, PayPalConfiguration paypalconfiguration)
    {
        a(activity, 2, bk1, null, paypalconfiguration, false);
    }

    static void a(Activity activity, int i1, bk bk1, CreditCard creditcard, PayPalConfiguration paypalconfiguration, boolean flag)
    {
        Intent intent = new Intent(activity, com/paypal/android/sdk/payments/PaymentConfirmActivity);
        intent.putExtras(activity.getIntent());
        intent.putExtra("com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_PAYMENT_KIND", bk1);
        intent.putExtra("com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_CREDIT_CARD", creditcard);
        intent.putExtra("com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_RESET_PP_REQUEST_ID", flag);
        intent.putExtra("com.paypal.android.sdk.paypalConfiguration", paypalconfiguration);
        activity.startActivityForResult(intent, i1);
    }

    private void a(Bundle bundle)
    {
        String s = bundle.getString("authAccount");
        String s1 = bundle.getString("authtoken");
        String s2 = bundle.getString("scope");
        long l1 = bundle.getLong("valid_until");
        for (Iterator iterator = bundle.keySet().iterator(); iterator.hasNext();)
        {
            String s3 = (String)iterator.next();
            Object obj = bundle.get(s3);
            if (obj == null)
            {
                String.format("%s:null", new Object[] {
                    s3
                });
            } else
            {
                String.format("%s:%s (%s)", new Object[] {
                    s3, obj.toString(), obj.getClass().getName()
                });
            }
        }

        bundle = new bI(s1, s2, l1, false);
        if (j == null)
        {
            b = new bj(this, s, bundle);
            return;
        } else
        {
            a(s, ((bI) (bundle)));
            return;
        }
    }

    static void a(PaymentConfirmActivity paymentconfirmactivity)
    {
        paymentconfirmactivity.g();
    }

    static void a(PaymentConfirmActivity paymentconfirmactivity, ck ck)
    {
        paymentconfirmactivity.c = new bA(ck, paymentconfirmactivity.g.a().getProvidedShippingAddress());
        paymentconfirmactivity.getIntent().putExtra("com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_PAYMENT_INFO", paymentconfirmactivity.c);
        paymentconfirmactivity.b();
        paymentconfirmactivity.j();
    }

    static void a(PaymentConfirmActivity paymentconfirmactivity, List list, int i1)
    {
        paymentconfirmactivity.g.b().a(i1);
        paymentconfirmactivity.f.a(paymentconfirmactivity, (cJ)list.get(i1));
    }

    static void a(PaymentConfirmActivity paymentconfirmactivity, boolean flag)
    {
        paymentconfirmactivity.a(true);
    }

    private void a(String s)
    {
        f.a(s);
    }

    private void a(String s, bI bi1)
    {
        j.c().d = s;
        a(s);
        j.c().h = bi1;
        if (h != bk.a)
        {
            f.b(true);
        }
    }

    private void a(boolean flag)
    {
        (new StringBuilder()).append(a).append(".doLogin");
        if (n.a(this, j))
        {
            Object obj;
            if (flag)
            {
                obj = R.b;
            } else
            {
                obj = R.a;
            }
            obj = (new Q()).a(j.d().k(), ((R) (obj)), S.a, j.b().d().e());
            (new StringBuilder("startActivityForResult(")).append(obj).append(", 2").append(")");
            Log.w("paypal.sdk", (new StringBuilder("requesting ")).append(((Intent) (obj)).getStringExtra("response_type")).append(" with scope={").append(((Intent) (obj)).getStringExtra("scope")).append("} from Authenticator.").toString());
            startActivityForResult(((Intent) (obj)), 2);
            return;
        } else
        {
            LoginActivity.a(this, 1, j.q(), false, flag, "https://uri.paypal.com/services/payments/basic", j.d());
            return;
        }
    }

    private static Map b(PayPalPayment paypalpayment)
    {
        if (paypalpayment != null)
        {
            HashMap hashmap = new HashMap();
            PayPalPaymentDetails paypalpaymentdetails = paypalpayment.f();
            if (paypalpaymentdetails != null)
            {
                if (paypalpaymentdetails.b() != null)
                {
                    hashmap.put("shipping", bT.a(paypalpaymentdetails.b().doubleValue(), paypalpayment.d()));
                }
                if (paypalpaymentdetails.a() != null)
                {
                    hashmap.put("subtotal", bT.a(paypalpaymentdetails.a().doubleValue(), paypalpayment.d()));
                }
                if (paypalpaymentdetails.c() != null)
                {
                    hashmap.put("tax", bT.a(paypalpaymentdetails.c().doubleValue(), paypalpayment.d()));
                }
            }
            if (!hashmap.isEmpty())
            {
                return hashmap;
            }
        }
        return null;
    }

    private void b()
    {
        if (c != null)
        {
            Object obj = null;
            if (c.b() != null)
            {
                obj = c.b().toJSONObject();
            }
            int i1 = c.h();
            obj = cV.a(((org.json.JSONObject) (obj)), c.a(), c.i());
            if (obj != null && ((ArrayList) (obj)).size() > 0)
            {
                f.f().setVisibility(0);
                f.f().setClickable(true);
                f.a(getApplicationContext(), (cV)((ArrayList) (obj)).get(i1));
                cW cw = new cW(this, ((ArrayList) (obj)), i1);
                (new ListView(this)).setAdapter(cw);
                f.d(new bd(this, cw, ((ArrayList) (obj))));
            } else
            {
                f.f().setClickable(false);
                f.f().setVisibility(8);
            }
            i1 = c.g();
            obj = cJ.a(c.c(), c.d());
            if (obj != null && ((ArrayList) (obj)).size() > 0)
            {
                f.e().setVisibility(0);
                f.e().setClickable(true);
                f.a(getApplicationContext(), (cJ)((ArrayList) (obj)).get(i1));
                cK ck = new cK(this, ((ArrayList) (obj)), i1);
                (new ListView(this)).setAdapter(ck);
                f.c(new bb(this, ck, ((ArrayList) (obj))));
            } else
            {
                f.e().setClickable(false);
                f.e().setVisibility(8);
            }
            f.b(true);
        }
    }

    static void b(PaymentConfirmActivity paymentconfirmactivity)
    {
        (new StringBuilder()).append(a).append(".postBindSetup()");
        boolean flag;
        if (paymentconfirmactivity.h.equals(bk.a))
        {
            android.text.SpannableString spannablestring = com.paypal.android.sdk.d.b(paymentconfirmactivity.j.d().a());
            paymentconfirmactivity.f.a(spannablestring);
        } else
        {
            paymentconfirmactivity.f.a(null);
        }
        if (paymentconfirmactivity.b != null)
        {
            paymentconfirmactivity.a(paymentconfirmactivity.b.a, paymentconfirmactivity.b.b);
            paymentconfirmactivity.b = null;
        }
        if (paymentconfirmactivity.getIntent().getBooleanExtra("com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_RESET_PP_REQUEST_ID", false))
        {
            paymentconfirmactivity.j.c().a();
        }
        flag = paymentconfirmactivity.e();
        if (!paymentconfirmactivity.d)
        {
            paymentconfirmactivity.d = true;
            paymentconfirmactivity.j.a(cD.g);
        }
        paymentconfirmactivity.f();
        paymentconfirmactivity.j.b(new bf(paymentconfirmactivity));
        if (bk.a == paymentconfirmactivity.h && !flag && paymentconfirmactivity.c == null)
        {
            paymentconfirmactivity.i();
        }
    }

    static void b(PaymentConfirmActivity paymentconfirmactivity, List list, int i1)
    {
        paymentconfirmactivity.g.b().b(i1);
        paymentconfirmactivity.f.a(paymentconfirmactivity, (cV)list.get(i1));
    }

    static PayPalService c(PaymentConfirmActivity paymentconfirmactivity)
    {
        return paymentconfirmactivity.j;
    }

    private void c()
    {
        if (j.c().h != null && !j.c().h.a())
        {
            j.c().h = null;
            j.c().d = null;
        }
    }

    static aS d(PaymentConfirmActivity paymentconfirmactivity)
    {
        return paymentconfirmactivity.g;
    }

    private void d()
    {
        l = bindService(com.paypal.android.sdk.payments.d.b(this), k, 1);
    }

    static void e(PaymentConfirmActivity paymentconfirmactivity)
    {
        paymentconfirmactivity.c();
    }

    private boolean e()
    {
        if (h.equals(bk.a) && !j.j() && !e)
        {
            e = true;
            a(false);
            return true;
        } else
        {
            return false;
        }
    }

    private void f()
    {
        PayPalPayment paypalpayment = g.a();
        Object obj1 = bv.a();
        obj1 = bT.a(Locale.getDefault(), ((bv) (obj1)).c().a(), paypalpayment.a().doubleValue(), paypalpayment.d(), true);
        f.a(paypalpayment.b(), ((String) (obj1)));
        if (h == bk.a)
        {
            f.a(true);
            a(j.r());
        } else
        if (h == com.paypal.android.sdk.payments.bk.b || h == bk.c)
        {
            f.a(false);
            Object obj;
            String s;
            String s1;
            int i1;
            int j1;
            if (h == com.paypal.android.sdk.payments.bk.b)
            {
                s = bF.a(i.getRedactedCardNumber());
                i1 = i.expiryMonth;
                j1 = i.expiryYear;
                obj = i.getCardType();
            } else
            {
                obj = j.s();
                s = ((bF) (obj)).d();
                i1 = ((bF) (obj)).f();
                j1 = ((bF) (obj)).g();
                obj = com.paypal.android.sdk.d.a(((bF) (obj)));
            }
            s1 = String.format(Locale.getDefault(), "%02d / %04d", new Object[] {
                Integer.valueOf(i1), Integer.valueOf(j1)
            });
            f.a(s, com.paypal.android.sdk.d.a(this, ((CardType) (obj))), s1);
        } else
        {
            Log.wtf(a, (new StringBuilder("Unknown payment type: ")).append(h.toString()).toString());
            com.paypal.android.sdk.payments.d.a(this, "The payment is not a valid type. Please try again.", 3);
        }
        com.paypal.android.sdk.payments.d.a(f.d(), j.e());
    }

    static void f(PaymentConfirmActivity paymentconfirmactivity)
    {
        paymentconfirmactivity.j();
    }

    static bk g(PaymentConfirmActivity paymentconfirmactivity)
    {
        return paymentconfirmactivity.h;
    }

    private void g()
    {
        aX.a[h.ordinal()];
        JVM INSTR tableswitch 1 3: default 36
    //                   1 45
    //                   2 64
    //                   3 64;
           goto _L1 _L2 _L3 _L3
_L1:
        boolean flag = true;
_L5:
        if (!flag)
        {
            return;
        }
        break MISSING_BLOCK_LABEL_121;
_L2:
        if (!e())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (j.i())
        {
            break; /* Loop/switch isn't completed */
        }
        showDialog(2);
        (new StringBuilder("token is expired, get new one. AccessToken: ")).append(j.c().c);
        j.a(h(), true);
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
        if (true) goto _L1; else goto _L6
_L6:
        showDialog(2);
        if (g == null || g.a() == null || h == bk.a && g.b() == null)
        {
            onBackPressed();
            return;
        }
        PayPalPayment paypalpayment = g.a();
        Object obj = a(paypalpayment);
        Object obj1 = b(paypalpayment);
        Object obj2 = paypalpayment.b();
        boolean flag1 = j.d().j();
        switch (aX.a[h.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            obj1 = g.b();
            obj2 = j;
            String s = ((bA) (obj1)).e();
            String s1 = ((bA) (obj1)).f();
            if (((bA) (obj1)).k())
            {
                obj = ((bA) (obj1)).m();
            } else
            {
                obj = null;
            }
            if (((bA) (obj1)).j())
            {
                obj1 = ((bA) (obj1)).l();
            } else
            {
                obj1 = null;
            }
            ((PayPalService) (obj2)).a(flag1, s, s1, ((org.json.JSONObject) (obj)), ((org.json.JSONObject) (obj1)), paypalpayment.e());
            return;

        case 2: // '\002'
            bF bf1 = j.s();
            String s2 = j.a(bf1.a());
            j.a(j.c().b(), bf1.e(), ((ca) (obj)), ((Map) (obj1)), paypalpayment.g(), ((String) (obj2)), flag1, s2, paypalpayment.e(), paypalpayment.c().toString(), paypalpayment.h(), paypalpayment.i(), paypalpayment.j());
            return;

        case 3: // '\003'
            j.a(j.c().b(), i.getCardType().toString().toLowerCase(Locale.US), i.cardNumber, i.cvv, i.expiryMonth, i.expiryYear, ((ca) (obj)), ((Map) (obj1)), paypalpayment.g(), ((String) (obj2)), flag1, paypalpayment.e(), paypalpayment.c().toString(), paypalpayment.h(), paypalpayment.i(), paypalpayment.j());
            return;
        }
    }

    private aH h()
    {
        return new aW(this);
    }

    static aH h(PaymentConfirmActivity paymentconfirmactivity)
    {
        return paymentconfirmactivity.h();
    }

    static cO i(PaymentConfirmActivity paymentconfirmactivity)
    {
        return paymentconfirmactivity.f;
    }

    private void i()
    {
        if (j != null && j.c().h != null)
        {
            showDialog(2);
            PayPalPayment paypalpayment = g.a();
            ca ca1 = a(paypalpayment);
            Map map = b(paypalpayment);
            String s = paypalpayment.b();
            boolean flag = j.d().j();
            j.a(ca1, map, paypalpayment.g(), s, flag, paypalpayment.e(), paypalpayment.c().toString(), paypalpayment.isEnablePayPalShippingAddressesRetrieval(), paypalpayment.h(), paypalpayment.i(), paypalpayment.j());
            a(j.r());
        }
    }

    private void j()
    {
        try
        {
            dismissDialog(2);
            return;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return;
        }
    }

    static void j(PaymentConfirmActivity paymentconfirmactivity)
    {
        paymentconfirmactivity.i();
    }

    static void k(PaymentConfirmActivity paymentconfirmactivity)
    {
        paymentconfirmactivity.g();
    }

    public final void finish()
    {
        super.finish();
        (new StringBuilder()).append(a).append(".finish");
    }

    protected final void onActivityResult(int i1, int j1, Intent intent)
    {
        super.onActivityResult(i1, j1, intent);
        (new StringBuilder()).append(a).append(".onActivityResult(requestCode:").append(i1).append(", resultCode:").append(j1).append(", data:").append(intent).append(")");
        i1;
        JVM INSTR tableswitch 1 2: default 80
    //                   1 105
    //                   2 147;
           goto _L1 _L2 _L3
_L1:
        Log.e(a, (new StringBuilder("unhandled requestCode ")).append(i1).toString());
_L5:
        return;
_L2:
        if (j1 == -1)
        {
            if (f != null)
            {
                f.b(false);
            }
            if (j != null)
            {
                i();
                return;
            }
        } else
        {
            a(j1);
            finish();
            return;
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        if (j1 == -1)
        {
            f.b(true);
            a(intent.getExtras());
            if (j != null)
            {
                i();
                return;
            }
        } else
        {
            a(j1);
            finish();
            return;
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public final void onBackPressed()
    {
        j.a(cD.i);
        c();
        super.onBackPressed();
    }

    protected final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        (new StringBuilder()).append(a).append(".onCreate");
        d();
        if (bundle == null)
        {
            if (!com.paypal.android.sdk.payments.d.a(this))
            {
                finish();
            }
            d = false;
        } else
        {
            d = bundle.getBoolean("pageTrackingSent");
            e = bundle.getBoolean("isLoginActivityStarted");
        }
        if (getIntent().getExtras() == null)
        {
            onBackPressed();
        } else
        {
            h = (bk)getIntent().getSerializableExtra("com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_PAYMENT_KIND");
            i = (CreditCard)getIntent().getParcelableExtra("com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_CREDIT_CARD");
            g = new aS(getIntent());
            com.paypal.android.sdk.d.b(this);
            com.paypal.android.sdk.d.a(this);
            boolean flag;
            if (h == bk.a)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            f = new cO(this, flag);
            setContentView(f.a());
            com.paypal.android.sdk.payments.d.a(this, f.b(), cG.A);
            f.b(new aT(this));
            f.a(new aY(this));
            if (bk.a == h)
            {
                c = (bA)getIntent().getParcelableExtra("com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_PAYMENT_INFO");
                b();
                return;
            }
        }
    }

    protected final Dialog onCreateDialog(int i1, Bundle bundle)
    {
        switch (i1)
        {
        default:
            return null;

        case 1: // '\001'
            return com.paypal.android.sdk.payments.d.a(this, cG.bq, bundle);

        case 2: // '\002'
            return com.paypal.android.sdk.payments.d.a(this, cG.aE, cG.bp);

        case 3: // '\003'
            return com.paypal.android.sdk.payments.d.a(this, cG.an, bundle, i1);

        case 4: // '\004'
            return com.paypal.android.sdk.payments.d.a(this, cG.aM, bundle, new bg(this));

        case 5: // '\005'
            cE.a(cG.bf);
            break;
        }
        if (bundle != null && com.paypal.android.sdk.d.d(bundle.getString("BUNDLE_ERROR_CODE")))
        {
            String s = bundle.getString("BUNDLE_ERROR_CODE");
            bundle = cG.bh;
            s = cE.a(s);
            cG cg1 = cG.aR;
            cG cg3 = cG.f;
            bh bh1 = new bh(this);
            bi bi1 = new bi(this);
            return (new android.app.AlertDialog.Builder(this)).setIcon(0x1080027).setTitle(cE.a(bundle)).setMessage(s).setPositiveButton(cE.a(cg1), bh1).setNegativeButton(cE.a(cg3), bi1).create();
        } else
        {
            bundle = cG.bh;
            cG cg = cG.bf;
            cG cg2 = cG.aR;
            cG cg4 = cG.f;
            aU au = new aU(this);
            aV av = new aV(this);
            return (new android.app.AlertDialog.Builder(this)).setIcon(0x1080027).setTitle(cE.a(bundle)).setMessage(cE.a(cg)).setPositiveButton(cE.a(cg2), au).setNegativeButton(cE.a(cg4), av).create();
        }
    }

    protected final void onDestroy()
    {
        (new StringBuilder()).append(a).append(".onDestroy");
        if (j != null)
        {
            j.m();
        }
        if (l)
        {
            unbindService(k);
            l = false;
        }
        super.onDestroy();
    }

    protected final void onRestart()
    {
        super.onRestart();
        d();
    }

    protected final void onResume()
    {
        super.onResume();
        (new StringBuilder()).append(a).append(".onResume");
        if (j != null)
        {
            f();
        }
    }

    protected final void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("pageTrackingSent", d);
        bundle.putBoolean("isLoginActivityStarted", e);
    }

    public final void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        (new StringBuilder()).append(a).append(".onWindowFocusChanged");
        f.c();
    }

}
