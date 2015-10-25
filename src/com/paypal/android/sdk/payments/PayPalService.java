// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.paypal.android.sdk.aB;
import com.paypal.android.sdk.aC;
import com.paypal.android.sdk.aG;
import com.paypal.android.sdk.aw;
import com.paypal.android.sdk.ax;
import com.paypal.android.sdk.ay;
import com.paypal.android.sdk.b;
import com.paypal.android.sdk.bA;
import com.paypal.android.sdk.bB;
import com.paypal.android.sdk.bD;
import com.paypal.android.sdk.bF;
import com.paypal.android.sdk.bI;
import com.paypal.android.sdk.bK;
import com.paypal.android.sdk.bP;
import com.paypal.android.sdk.bR;
import com.paypal.android.sdk.bS;
import com.paypal.android.sdk.bV;
import com.paypal.android.sdk.bY;
import com.paypal.android.sdk.bd;
import com.paypal.android.sdk.bh;
import com.paypal.android.sdk.bn;
import com.paypal.android.sdk.bp;
import com.paypal.android.sdk.br;
import com.paypal.android.sdk.bv;
import com.paypal.android.sdk.bw;
import com.paypal.android.sdk.by;
import com.paypal.android.sdk.bz;
import com.paypal.android.sdk.c;
import com.paypal.android.sdk.cC;
import com.paypal.android.sdk.cD;
import com.paypal.android.sdk.cE;
import com.paypal.android.sdk.ca;
import com.paypal.android.sdk.ce;
import com.paypal.android.sdk.ch;
import com.paypal.android.sdk.cj;
import com.paypal.android.sdk.ck;
import com.paypal.android.sdk.cl;
import com.paypal.android.sdk.cm;
import com.paypal.android.sdk.cn;
import com.paypal.android.sdk.co;
import com.paypal.android.sdk.cp;
import com.paypal.android.sdk.cq;
import com.paypal.android.sdk.cs;
import com.paypal.android.sdk.cv;
import com.paypal.android.sdk.cw;
import com.paypal.android.sdk.cy;
import com.paypal.android.sdk.dc;
import com.paypal.android.sdk.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;

// Referenced classes of package com.paypal.android.sdk.payments:
//            a, d, aD, aG, 
//            aE, PayPalConfiguration, aJ, k, 
//            aH, PayPalItem, aI, aB, 
//            l, D, aK, aF

public final class PayPalService extends Service
{

    public static final String EXTRA_PAYPAL_CONFIGURATION = "com.paypal.android.sdk.paypalConfiguration";
    static final ExecutorService a = bd.a();
    private static final String c = com/paypal/android/sdk/payments/PayPalService.getSimpleName();
    private static Intent t;
    bF b;
    private c d;
    private by e;
    private PayPalConfiguration f;
    private boolean g;
    private a h;
    private a i;
    private k j;
    private String k;
    private ay l;
    private aH m;
    private String n;
    private b o;
    private bA p;
    private List q;
    private boolean r;
    private boolean s;
    private final BroadcastReceiver u = new aD(this);
    private final IBinder v = new com.paypal.android.sdk.payments.aG(this);

    public PayPalService()
    {
        h = new a();
        i = new a();
        j = new d(this);
        q = new ArrayList();
        r = true;
        s = true;
    }

    private boolean A()
    {
        return f != null && e != null;
    }

    private static by B()
    {
        return new by();
    }

    private void C()
    {
        a(new aE(this), false);
    }

    private static ax a(String s1, String s2)
    {
        ax ax1 = new ax();
        ax1.a(s1);
        ax1.a(new HashMap());
        if (s2 != null)
        {
            if (!s2.startsWith("https://"))
            {
                throw new RuntimeException((new StringBuilder()).append(s2).append(" does not start with 'https://', ignoring ").append(s1).toString());
            }
            s1 = s2;
            if (!s2.endsWith("/"))
            {
                (new StringBuilder()).append(s2).append(" does not end with a slash, adding one.");
                s1 = (new StringBuilder()).append(s2).append("/").toString();
            }
            bp bp1;
            for (s2 = bw.d().iterator(); s2.hasNext(); ax1.b().put(bp1.a(), (new StringBuilder()).append(s1).append(bp1.c()).toString()))
            {
                bp1 = (bp)s2.next();
            }

        }
        return ax1;
    }

    static PayPalConfiguration a(PayPalService paypalservice)
    {
        return paypalservice.f;
    }

    static aH a(PayPalService paypalservice, aH ah)
    {
        paypalservice.m = null;
        return null;
    }

    private void a(Intent intent)
    {
        t = intent;
        (new StringBuilder("init:")).append(b(intent));
        if (f == null)
        {
            f = (PayPalConfiguration)intent.getParcelableExtra("com.paypal.android.sdk.paypalConfiguration");
            if (f == null)
            {
                throw new RuntimeException("Missing EXTRA_PAYPAL_CONFIGURATION. To avoid this error, set EXTRA_PAYPAL_CONFIGURATION in both PayPalService, and the initializing activity.");
            }
        }
        if (!f.o())
        {
            throw new RuntimeException("Service extras invalid.  Please check the docs.");
        }
        Object obj1 = f.b();
        Object obj;
        if (aw.c(((String) (obj1))))
        {
            obj = "https://api-m.paypal.com/v1/";
        } else
        if (aw.b(((String) (obj1))))
        {
            obj = "https://api-m.sandbox.paypal.com/v1/";
        } else
        if (aw.a(((String) (obj1))))
        {
            obj = null;
        } else
        if (z() && intent.hasExtra("com.paypal.android.sdk.baseEnvironmentUrl"))
        {
            obj = intent.getStringExtra("com.paypal.android.sdk.baseEnvironmentUrl");
        } else
        {
            throw new RuntimeException((new StringBuilder("Invalid environment selected:")).append(((String) (obj1))).toString());
        }
        p = new bA(o, f.b());
        obj = a(((String) (obj1)), ((String) (obj)));
        if (l == null)
        {
            int i1;
            int j1;
            boolean flag;
            boolean flag1;
            if (z() && intent.hasExtra("com.paypal.android.sdk.mockNetworkDelay"))
            {
                i1 = intent.getIntExtra("com.paypal.android.sdk.mockNetworkDelay", 500);
            } else
            {
                i1 = 500;
            }
            if (z() && intent.hasExtra("com.paypal.android.sdk.mockEnable2fa"))
            {
                flag = intent.getBooleanExtra("com.paypal.android.sdk.mockEnable2fa", false);
            } else
            {
                flag = false;
            }
            if (z() && intent.hasExtra("com.paypal.android.sdk.mock2faPhoneNumberCount"))
            {
                j1 = intent.getIntExtra("com.paypal.android.sdk.mock2faPhoneNumberCount", 1);
            } else
            {
                j1 = 1;
            }
            r = true;
            if (z() && intent.hasExtra("com.paypal.android.sdk.enableAuthenticator"))
            {
                r = intent.getBooleanExtra("com.paypal.android.sdk.enableAuthenticator", true);
            }
            if (z() && intent.hasExtra("com.paypal.android.sdk.enableAuthenticatorSecurity"))
            {
                s = intent.getBooleanExtra("com.paypal.android.sdk.enableAuthenticatorSecurity", true);
            }
            if (z() && intent.hasExtra("com.paypal.android.sdk.enableStageSsl"))
            {
                flag1 = intent.getBooleanExtra("com.paypal.android.sdk.enableStageSsl", true);
            } else
            {
                flag1 = true;
            }
            l = new ay(o, ((ax) (obj)), a());
            l.a(new bR(new aJ(this, (byte)0)));
            obj = new cy(l, i1, flag, j1);
            obj1 = new bh(o, f.b(), a(), l, 0x15f90, a().b(), aC.a(a()), flag1);
            obj = new bn(f.b(), l, ((com.paypal.android.sdk.bf) (obj)), ((bh) (obj1)));
            l.a(((bn) (obj)));
        }
        cE.b(f.a());
        if (e == null)
        {
            e = B();
        }
        if (!f.j())
        {
            clearAllUserData(o.f());
        }
        k = intent.getComponent().getPackageName();
        a(cD.a);
        C();
    }

    private void a(br br1)
    {
        l.b(br1);
    }

    private void a(cD cd, boolean flag, String s1, String s2, String s3)
    {
        j.a(cd, flag, s1, s2, s3);
    }

    static void a(PayPalService paypalservice, br br1)
    {
        paypalservice.e.c = null;
        (new StringBuilder()).append(br1.o()).append(" request error");
        String s1 = br1.q().b();
        Log.e("paypal.sdk", s1);
        paypalservice.b(cD.b, s1, br1.k());
        if (paypalservice.m != null)
        {
            paypalservice.m.a(paypalservice.b(br1));
            paypalservice.m = null;
        }
        paypalservice.g = false;
    }

    static void a(PayPalService paypalservice, cD cd, boolean flag, String s1, String s2, String s3)
    {
        paypalservice.a(cd, flag, s1, s2, null);
    }

    private static boolean a(bI bi)
    {
        return bi != null && bi.c();
    }

    static boolean a(PayPalService paypalservice, boolean flag)
    {
        paypalservice.g = false;
        return false;
    }

    private cs[] a(PayPalItem apaypalitem[])
    {
        if (apaypalitem == null)
        {
            return null;
        }
        cs acs[] = new cs[apaypalitem.length];
        int k1 = apaypalitem.length;
        int j1 = 0;
        for (int i1 = 0; j1 < k1; i1++)
        {
            PayPalItem paypalitem = apaypalitem[j1];
            acs[i1] = new cs(paypalitem.getName(), paypalitem.getQuantity(), paypalitem.getPrice(), paypalitem.getCurrency(), paypalitem.getSku());
            j1++;
        }

        return acs;
    }

    static aH b(PayPalService paypalservice)
    {
        return paypalservice.m;
    }

    private aI b(br br1)
    {
        return new aI(this, br1.q().b(), br1.s(), br1.q().a());
    }

    static aI b(PayPalService paypalservice, br br1)
    {
        return paypalservice.b(br1);
    }

    private static String b(Intent intent)
    {
        if (intent == null)
        {
            return "Intent = null";
        }
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("Intent{");
        stringbuilder.append((new StringBuilder("action:")).append(intent.getAction()).toString());
        stringbuilder.append((new StringBuilder(", cmp:")).append(intent.getComponent()).append(", ").toString());
        if (intent.getExtras() == null)
        {
            stringbuilder.append("null extras");
        } else
        {
            stringbuilder.append("extras:");
            Iterator iterator = intent.getExtras().keySet().iterator();
            while (iterator.hasNext()) 
            {
                String s1 = (String)iterator.next();
                stringbuilder.append((new StringBuilder("(")).append(s1).append(":").append(intent.getExtras().get(s1)).append(")").toString());
            }
        }
        stringbuilder.append("}");
        return stringbuilder.toString();
    }

    private void b(cD cd, String s1, String s2)
    {
        a(cd, false, s1, s2, null);
    }

    static a c(PayPalService paypalservice)
    {
        return paypalservice.h;
    }

    static void c(PayPalService paypalservice, br br1)
    {
        String s1 = br1.q().b();
        Log.e("paypal.sdk", s1);
        paypalservice.b(cD.h, s1, br1.k());
        paypalservice.i.a(paypalservice.b(br1));
    }

    public static void clearAllUserData(Context context)
    {
        Log.w("paypal.sdk", "clearing user data");
        a.submit(new com.paypal.android.sdk.payments.aB(context));
    }

    static bA d(PayPalService paypalservice)
    {
        return paypalservice.p;
    }

    static a e(PayPalService paypalservice)
    {
        return paypalservice.i;
    }

    static b f(PayPalService paypalservice)
    {
        return paypalservice.o;
    }

    static String y()
    {
        return c;
    }

    private static boolean z()
    {
        return "partner".equals("general");
    }

    final c a()
    {
        if (d == null)
        {
            d = new l();
        }
        return d;
    }

    final String a(String s1)
    {
        return o.c(s1);
    }

    final void a(int i1)
    {
        l.b(new cp(l, a(), l.c(), f.k(), e.j, (String)(new ArrayList(e.g.a.keySet())).get(i1)));
    }

    final void a(bY by1, String s1, boolean flag, String s2, boolean flag1, String s3)
    {
        l.b(new cq(l, a(), l.c(), f.k(), by1, s1, e.j, flag, s2, flag1, s3));
    }

    final void a(bY by1, boolean flag, String s1, boolean flag1, String s2)
    {
        l.b(new cq(l, a(), l.c(), f.k(), by1, flag, s1, flag1, s2));
    }

    final void a(cD cd)
    {
        a(cd, false, null, ((String) (null)), null);
    }

    final void a(cD cd, Boolean boolean1)
    {
        a(cd, boolean1.booleanValue(), null, ((String) (null)), null);
    }

    final void a(cD cd, Boolean boolean1, String s1)
    {
        a(cd, boolean1.booleanValue(), null, s1, null);
    }

    final void a(cD cd, String s1)
    {
        a(cd, false, null, s1, null);
    }

    final void a(cD cd, String s1, String s2)
    {
        a(cd, false, null, s1, s2);
    }

    final void a(ca ca, Map map, PayPalItem apaypalitem[], String s1, boolean flag, String s2, String s3, 
            boolean flag1, String s4, String s5, String s6)
    {
        l.b((new ck(l, a(), e.h.b(), e.b(), null, ca, map, a(apaypalitem), s1, flag, s2, n, s3, flag1)).d(s4).e(s5).f(s6));
    }

    final void a(aF af)
    {
        h.a(af);
    }

    final void a(aH ah, boolean flag)
    {
        if (flag)
        {
            e.c = null;
        }
        for (m = ah; g || e.c();)
        {
            return;
        }

        g = true;
        a(cD.b);
        l.b(new cv(f.b(), l, a(), f.k()));
    }

    final void a(String s1, String s2, ca ca, Map map, PayPalItem apaypalitem[], String s3, boolean flag, 
            String s4, String s5, String s6, String s7, String s8, String s9)
    {
        l.b((new cl(l, a(), e.c.b(), s1, s2, s4, ca, map, a(apaypalitem), s3, flag, s5, n, s6)).d(s7).e(s8).f(s9));
    }

    final void a(String s1, String s2, String s3, String s4, int i1, int j1, ca ca, 
            Map map, PayPalItem apaypalitem[], String s5, boolean flag, String s6, String s7, String s8, 
            String s9, String s10)
    {
        if (s3.equalsIgnoreCase("4111111111111111") && aw.b(f.b()))
        {
            s3 = "4444333322221111";
        }
        l.b((new cl(l, a(), e.c.b(), s1, s2, s3, s4, i1, j1, null, ca, map, a(apaypalitem), s5, flag, s6, n, s7)).d(s8).e(s9).f(s10));
    }

    final void a(List list)
    {
        l.b(new cj(l, a(), l.c(), f.k(), e.f.b(), e.j, list));
    }

    final void a(boolean flag, String s1, String s2, JSONObject jsonobject, JSONObject jsonobject1, String s3)
    {
        l.b(new ch(l, a(), e.h.b(), e.b(), flag, s3, n, s1, s2, jsonobject, jsonobject1));
    }

    protected final boolean a(aK ak)
    {
        if (A())
        {
            return true;
        } else
        {
            q.add(ak);
            return false;
        }
    }

    protected final ay b()
    {
        return l;
    }

    final void b(aF af)
    {
        i.a(af);
    }

    protected final by c()
    {
        return e;
    }

    final PayPalConfiguration d()
    {
        return f;
    }

    public final void doDeleteTokenizedCreditCard(String s1, String s2)
    {
        a(new cm(l, a(), s1, s2));
    }

    public final void doTrackingRequest(aB ab)
    {
        if (ab.e)
        {
            a(new cw(l, a(), ab));
            return;
        } else
        {
            a(new cn(l, a(), cC.a(ab)));
            return;
        }
    }

    protected final String e()
    {
        return f.b();
    }

    protected final String f()
    {
        return f.k();
    }

    final void g()
    {
        t();
        h();
        p.b();
        u();
    }

    final void h()
    {
        e.h = null;
        bz.b(f.b());
        e.e = null;
        e.d = null;
    }

    final boolean i()
    {
        return e.c();
    }

    final boolean j()
    {
        by by1 = e;
        return by1.h != null && by1.h.c();
    }

    final boolean k()
    {
        return e.f != null && e.j != null;
    }

    final void l()
    {
        Object obj = p.a();
        if (obj == null)
        {
            h();
            return;
        }
        Object obj1 = e.h;
        bI bi = bz.a(f.b());
        if (!a(((bI) (obj1))) && a(bi))
        {
            e.h = bi;
        }
        obj1 = e;
        if (((bB) (obj)).d())
        {
            if (((bB) (obj)).c().equals(bD.a))
            {
                obj = ((bB) (obj)).b();
            } else
            {
                obj = ((bB) (obj)).a().a(bv.a());
            }
        } else
        {
            obj = null;
        }
        obj1.d = ((String) (obj));
    }

    final void m()
    {
        i.b();
    }

    final void n()
    {
        h.b();
    }

    final void o()
    {
        m = null;
    }

    public final IBinder onBind(Intent intent)
    {
        (new StringBuilder("onBind(")).append(b(intent)).append(")");
        if (!A())
        {
            if (t == null)
            {
                a(intent);
            } else
            {
                a(t);
            }
        }
        return v;
    }

    public final void onCreate()
    {
        Log.w("paypal.sdk", (new StringBuilder()).append(com/paypal/android/sdk/payments/PayPalService.getSimpleName()).append(" created. ").append(a().b()).toString());
        new l();
        o = new b(this, "AndroidBasePrefs");
        bS.a(o);
        bV.a(o);
        n = com.paypal.android.sdk.e.a(a, this, o, "2.9.11");
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("com.paypal.android.sdk.clearAllUserData");
        D.a(this).a(u, intentfilter);
    }

    public final void onDestroy()
    {
        if (l != null)
        {
            l.a();
            l.b();
            l = null;
        }
        try
        {
            D.a(this).a(u);
        }
        catch (Throwable throwable)
        {
            (new StringBuilder("ignoring:")).append(throwable.getMessage());
        }
        (new StringBuilder("service destroyed: ")).append(this);
    }

    public final void onRebind(Intent intent)
    {
        super.onRebind(intent);
        (new StringBuilder("onRebind(")).append(b(intent)).append(")");
    }

    public final int onStartCommand(Intent intent, int i1, int j1)
    {
        (new StringBuilder("onStartCommand(")).append(b(intent)).append(", ").append(i1).append(", ").append(j1).append(")");
        if (!A())
        {
            (new dc(this)).a();
            if (intent == null || intent.getExtras() == null)
            {
                throw new RuntimeException("Service extras required. Please see the docs.");
            }
            a(intent);
        }
        if (q.size() > 0)
        {
            for (intent = q.iterator(); intent.hasNext(); ((aK)intent.next()).a()) { }
            q.clear();
        }
        return 3;
    }

    public final boolean onUnbind(Intent intent)
    {
        (new StringBuilder("onUnbind(")).append(b(intent)).append(")");
        return true;
    }

    final void p()
    {
        l.b(new co(l, a(), l.c(), e.c.b(), f.k()));
    }

    final bB q()
    {
        return p.a();
    }

    final String r()
    {
        return e.d;
    }

    final bF s()
    {
        return p.a(f.k());
    }

    final void t()
    {
        b = s();
        p.c();
        if (b != null && e.c != null)
        {
            doDeleteTokenizedCreditCard(e.c.b(), b.e());
            b = null;
        }
    }

    final void u()
    {
        if (f != null && f.o())
        {
            e = B();
            C();
        }
    }

    protected final String v()
    {
        return k;
    }

    final boolean w()
    {
        return r;
    }

    final boolean x()
    {
        return s;
    }

}
