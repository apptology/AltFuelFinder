// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.BulletSpan;
import android.text.style.URLSpan;
import android.util.Log;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.paypal.android.sdk.N;
import com.paypal.android.sdk.Q;
import com.paypal.android.sdk.R;
import com.paypal.android.sdk.S;
import com.paypal.android.sdk.ay;
import com.paypal.android.sdk.b;
import com.paypal.android.sdk.bK;
import com.paypal.android.sdk.by;
import com.paypal.android.sdk.cD;
import com.paypal.android.sdk.cE;
import com.paypal.android.sdk.cG;
import com.paypal.android.sdk.cH;
import com.paypal.android.sdk.cI;
import com.paypal.android.sdk.co;
import com.paypal.android.sdk.d;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.paypal.android.sdk.payments:
//            r, x, b, FuturePaymentInfoActivity, 
//            q, bE, s, PayPalService, 
//            m, bx, t, u, 
//            d, v, n, PayPalConfiguration, 
//            PayPalOAuthScopes, LoginActivity, J, z, 
//            A, B, PayPalAuthorization, o, 
//            w

abstract class p extends Activity
{

    private static final String d = com/paypal/android/sdk/payments/p.getSimpleName();
    private static final Map l = new r();
    protected PayPalService a;
    protected PayPalOAuthScopes b;
    protected cH c;
    private boolean e;
    private m f;
    private boolean g;
    private boolean h;
    private boolean i;
    private bx j;
    private final ServiceConnection k = new x(this);

    p()
    {
    }

    private void a(int i1, PayPalAuthorization paypalauthorization)
    {
        Intent intent = new Intent();
        intent.putExtra("com.paypal.android.sdk.authorization", paypalauthorization);
        setResult(i1, intent);
    }

    private void a(int i1, String s1, String s2, J j1)
    {
        s1 = new SpannableString(Html.fromHtml((new StringBuilder()).append(s2).append(s1).toString()));
        if (j1 != null)
        {
            s2 = (URLSpan[])s1.getSpans(0, s1.length(), android/text/style/URLSpan);
            if (s2.length > 0)
            {
                s2 = s2[0];
                s1.setSpan(new com.paypal.android.sdk.payments.b(s2, this, com/paypal/android/sdk/payments/FuturePaymentInfoActivity, new q(this), j1), s1.getSpanStart(s2), s1.getSpanEnd(s2), 33);
                s1.removeSpan(s2);
            }
        } else
        {
            a(((SpannableString) (s1)));
        }
        s1.setSpan(new BulletSpan(15), 0, s1.length(), 0);
        c.c[i1].setVisibility(0);
        c.c[i1].setFocusable(true);
        c.c[i1].setNextFocusLeftId((i1 + 100) - 1);
        c.c[i1].setNextFocusRightId(i1 + 100 + 1);
        c.c[i1].setText(s1);
    }

    private void a(SpannableString spannablestring)
    {
        int i1 = 0;
        URLSpan aurlspan[] = (URLSpan[])spannablestring.getSpans(0, spannablestring.length(), android/text/style/URLSpan);
        for (int j1 = aurlspan.length; i1 < j1; i1++)
        {
            URLSpan urlspan = aurlspan[i1];
            spannablestring.setSpan(new bE(urlspan, new s(this)), spannablestring.getSpanStart(urlspan), spannablestring.getSpanEnd(urlspan), 33);
            spannablestring.removeSpan(urlspan);
        }

    }

    private void a(m m1)
    {
        a.c().j = m1.a;
        a.c().f = m1.b;
        a.c().d = m1.c;
        j();
    }

    static void a(p p1)
    {
        p1.k();
    }

    static void a(p p1, cD cd)
    {
        p1.a.a(cd);
    }

    static void a(p p1, co co)
    {
        p1.j = new bx(co);
        p1.getIntent().putExtra("com.paypal.android.sdk.payments.ppAppInfo", p1.j);
        p1.f();
        p1.k();
    }

    static String b()
    {
        return d;
    }

    private void b(SpannableString spannablestring)
    {
        int i1 = 0;
        URLSpan aurlspan[] = (URLSpan[])spannablestring.getSpans(0, spannablestring.length(), android/text/style/URLSpan);
        for (int j1 = aurlspan.length; i1 < j1; i1++)
        {
            URLSpan urlspan = aurlspan[i1];
            spannablestring.setSpan(new bE(urlspan, new t(this)), spannablestring.getSpanStart(urlspan), spannablestring.getSpanEnd(urlspan), 33);
            spannablestring.removeSpan(urlspan);
        }

    }

    static void b(p p1)
    {
        p1.i();
    }

    private void c()
    {
label0:
        {
            if (a != null)
            {
                showDialog(2);
                if (a.i())
                {
                    break label0;
                }
                (new StringBuilder("token is expired, get new one. AccessToken: ")).append(a.c().c);
                a.a(new u(this), true);
            }
            return;
        }
        a.p();
    }

    static void c(p p1)
    {
        p1.e();
    }

    private void d()
    {
        e = bindService(com.paypal.android.sdk.payments.d.b(this), k, 1);
    }

    static void d(p p1)
    {
        (new StringBuilder()).append(d).append(".postBindSetup()");
        (new StringBuilder()).append(d).append(".startLoginIfNeeded (access token: ").append(p1.a.c().h).append(")");
        cH ch;
        boolean flag;
        if (!p1.a.j() && !p1.h)
        {
            (new StringBuilder()).append(d).append(" -- doing the login...");
            p1.h = true;
            p1.e();
            flag = true;
        } else
        {
            flag = false;
        }
        ch = p1.c;
        if (p1.i)
        {
            p1.i = false;
            p1.j();
        }
        if (!p1.g)
        {
            p1.g = true;
            p1.a.a(cD.q);
        }
        com.paypal.android.sdk.payments.d.a(ch.f.b, p1.a.e());
        p1.a.b(new v(p1));
        p1.f();
        if (!flag && p1.j == null)
        {
            p1.c();
        }
    }

    private void e()
    {
        (new StringBuilder()).append(d).append(".doLogin");
        if (n.a(this, a))
        {
            Intent intent = (new Q()).b(a.d().k(), R.b, S.b, a.b().d().e());
            (new StringBuilder("startActivityForResult(")).append(intent).append(", 2").append(")");
            Log.w("paypal.sdk", "requesting code with scope=null from Authenticator.");
            startActivityForResult(intent, 2);
            return;
        } else
        {
            LoginActivity.a(this, 1, null, true, false, b.b(), a.d());
            return;
        }
    }

    static void e(p p1)
    {
        p1.a.a(cD.s);
        p1.finish();
    }

    private void f()
    {
        if (b != null && j != null && a != null)
        {
            Object obj = a.d().l();
            if (j.d() != null)
            {
                obj = j.d();
            }
            String s2 = a.d().m().toString();
            if (j.b() != null)
            {
                s2 = j.b();
            }
            String s3 = a.d().n().toString();
            if (j.c() != null)
            {
                s3 = j.c();
            }
            Object obj1 = String.format(cE.a(cG.V), new Object[] {
                (new StringBuilder("<b>")).append(((String) (obj))).append("</b>").toString()
            });
            String s1;
            int i1;
            int j1;
            int k1;
            if (cE.a)
            {
                s1 = "\u200F";
            } else
            {
                s1 = "";
            }
            c.c[0].setText(Html.fromHtml((new StringBuilder()).append(s1).append(((String) (obj1))).toString()));
            if (cE.a)
            {
                c.c[0].setGravity(5);
            }
            c.c[0].setVisibility(0);
            obj1 = b.a();
            if (((List) (obj1)).contains(N.a.a()) || ((List) (obj1)).contains(N.i.a()) || ((List) (obj1)).contains(N.j.a()))
            {
                a(1, String.format(cE.a(cG.Y), new Object[] {
                    "future-payment-consent", (new StringBuilder("<b>")).append(((String) (obj))).append("</b>").toString(), (new StringBuilder("<b>")).append(((String) (obj))).append("</b>").toString()
                }), s1, J.a);
                j1 = 2;
            } else
            {
                j1 = 1;
            }
            i1 = j1;
            if (((List) (obj1)).contains(N.h.a()))
            {
                a(j1, cE.a(cG.X), s1, null);
                i1 = j1 + 1;
            }
            j1 = i1;
            if (((List) (obj1)).contains(N.k.a()))
            {
                a(i1, cE.a(cG.W), s1, com.paypal.android.sdk.payments.J.b);
                j1 = i1 + 1;
            }
            i1 = j1;
            if (((List) (obj1)).contains(N.l.a()))
            {
                a(j1, String.format(cE.a(cG.ac), new Object[] {
                    "", obj
                }), s1, J.c);
                i1 = j1 + 1;
            }
            j1 = i1;
            if (((List) (obj1)).contains(N.m.a()))
            {
                a(i1, String.format(cE.a(cG.ab), new Object[] {
                    "", obj
                }), s1, com.paypal.android.sdk.payments.J.d);
                j1 = i1 + 1;
            }
            k1 = j1;
            if (((List) (obj1)).contains(N.n.a()))
            {
                a(j1, cE.a(cG.Z), s1, null);
                k1 = j1 + 1;
            }
            i1 = k1;
            if (((List) (obj1)).contains(N.o.a()))
            {
                a(k1, cE.a(cG.U), s1, null);
                i1 = k1 + 1;
            }
            k1 = i1;
            if (!Collections.disjoint(((Collection) (obj1)), N.p))
            {
                if (g().size() > 0)
                {
                    j1 = 1;
                } else
                {
                    j1 = 0;
                }
                k1 = i1;
                if (j1 != 0)
                {
                    a(i1, String.format(cE.a(cG.T), new Object[] {
                        h()
                    }), s1, null);
                    k1 = i1 + 1;
                }
            }
            a(k1, String.format(cE.a(cG.aa), new Object[] {
                (new StringBuilder("<b>")).append(((String) (obj))).append("</b>").toString(), s2, s3
            }), s1, null);
            c.c[k1].setNextFocusRightId(2);
            s3 = cE.a(cG.aD);
            s2 = Locale.getDefault().getCountry().toLowerCase(Locale.US);
            obj = s2;
            if (com.paypal.android.sdk.d.c(s2))
            {
                obj = "us";
            }
            obj = String.format(s3, new Object[] {
                String.format("https://www.paypal.com/%s/cgi-bin/webscr?cmd=p/gen/ua/policy_privacy-outside", new Object[] {
                    obj
                })
            });
            obj = new SpannableString(Html.fromHtml((new StringBuilder()).append(s1).append(((String) (obj))).toString()));
            b(((SpannableString) (obj)));
            c.d.setText(((CharSequence) (obj)));
            c.d.setMovementMethod(LinkMovementMethod.getInstance());
            c.d.setNextFocusLeftId((k1 + 1 + 100) - 1);
            c.d.setNextFocusRightId(1);
            obj = com.paypal.android.sdk.d.b(a.d().a());
            if (obj != null)
            {
                c.e.setText(((CharSequence) (obj)));
                c.e.setVisibility(0);
            }
            c.i.setText(cE.a(cG.F));
            c.g.setOnClickListener(new z(this));
            c.h.setOnClickListener(new A(this));
            c.h.setEnabled(true);
            if (f != null)
            {
                a(f);
                f = null;
                return;
            }
        }
    }

    static void f(p p1)
    {
        p1.a.a(cD.r);
        if (!p1.a.k())
        {
            (new StringBuilder("code/nonce invalid.  code:")).append(p1.a.c().f).append(", nonce:").append(p1.a.c().j);
            com.paypal.android.sdk.payments.d.a(p1, cE.a(cG.aL), 4);
            return;
        } else
        {
            p1.showDialog(2);
            p1.a.a(p1.b.a());
            return;
        }
    }

    private Set g()
    {
        List list = b.a();
        LinkedHashSet linkedhashset = new LinkedHashSet();
        B ab[] = B.values();
        int j1 = ab.length;
        int i1 = 0;
        do
        {
            while (i1 < j1) 
            {
                Object obj = ab[i1];
                if (j.a().contains(((B) (obj)).name()) && list.contains(((N)l.get(obj)).a()))
                {
                    if (obj == B.a)
                    {
                        obj = null;
                    } else
                    if (obj == B.k)
                    {
                        obj = cE.a(cG.G);
                    } else
                    if (obj == B.i)
                    {
                        obj = cE.a(cG.H);
                    } else
                    if (obj == B.j)
                    {
                        obj = cE.a(cG.I);
                    } else
                    if (obj == B.m || obj == B.n || obj == B.o || obj == B.p || obj == B.q || obj == B.r)
                    {
                        obj = cE.a(cG.J);
                    } else
                    if (obj == B.h)
                    {
                        obj = cE.a(cG.K);
                    } else
                    if (obj == com.paypal.android.sdk.payments.B.d)
                    {
                        obj = cE.a(cG.L);
                    } else
                    if (obj == B.l)
                    {
                        obj = cE.a(cG.M);
                    } else
                    if (obj == com.paypal.android.sdk.payments.B.b)
                    {
                        obj = cE.a(cG.N);
                    } else
                    if (obj == B.c)
                    {
                        obj = cE.a(cG.O);
                    } else
                    if (obj == B.g)
                    {
                        obj = cE.a(cG.P);
                    } else
                    if (obj == B.f)
                    {
                        obj = cE.a(cG.Q);
                    } else
                    if (obj == B.s)
                    {
                        obj = cE.a(cG.R);
                    } else
                    if (obj == B.e)
                    {
                        obj = cE.a(cG.S);
                    } else
                    {
                        obj = ((B) (obj)).name();
                    }
                    if (obj != null)
                    {
                        linkedhashset.add(obj);
                    }
                }
                i1++;
            }
            return linkedhashset;
        } while (true);
    }

    private String h()
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = g().iterator();
        boolean flag = true;
        while (iterator.hasNext()) 
        {
            String s1 = (String)iterator.next();
            if (!flag)
            {
                stringbuilder.append(", ");
            } else
            {
                flag = false;
            }
            stringbuilder.append(s1);
        }
        return stringbuilder.toString();
    }

    private void i()
    {
        a(-1, new PayPalAuthorization(a.e(), a.c().f.b(), a.c().d));
        finish();
    }

    private void j()
    {
        String s1 = a.c().f.a();
        if (s1 != null && Arrays.asList(s1.split(" ")).containsAll(b.a()))
        {
            i();
            return;
        } else
        {
            c();
            return;
        }
    }

    private void k()
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

    protected abstract void a();

    public void finish()
    {
        super.finish();
        (new StringBuilder()).append(d).append(".finish");
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        super.onActivityResult(i1, j1, intent);
        (new StringBuilder()).append(d).append(".onActivityResult(").append(i1).append(",").append(j1).append(",").append(intent).append(")");
        switch (i1)
        {
        default:
            Log.e(d, (new StringBuilder("unhandled requestCode ")).append(i1).toString());
            return;

        case 1: // '\001'
            if (j1 == -1)
            {
                if (a == null)
                {
                    i = true;
                    return;
                } else
                {
                    j();
                    return;
                }
            } else
            {
                a(j1, ((PayPalAuthorization) (null)));
                finish();
                return;
            }

        case 2: // '\002'
            break;
        }
        if (j1 == -1)
        {
            intent = o.a(intent.getExtras());
            if (a == null)
            {
                f = intent;
                return;
            } else
            {
                a(intent);
                return;
            }
        } else
        {
            a(j1, ((PayPalAuthorization) (null)));
            finish();
            return;
        }
    }

    public void onBackPressed()
    {
        a.a(cD.s);
        super.onBackPressed();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        (new StringBuilder()).append(d).append(".onCreate");
        if (bundle == null)
        {
            if (!com.paypal.android.sdk.payments.d.a(this))
            {
                finish();
            }
            g = false;
        } else
        {
            g = bundle.getBoolean("pageTrackingSent");
            h = bundle.getBoolean("isLoginActivityStarted");
        }
        a();
        j = (bx)getIntent().getParcelableExtra("com.paypal.android.sdk.payments.ppAppInfo");
        d();
        com.paypal.android.sdk.d.b(this);
        com.paypal.android.sdk.d.a(this);
        c = new cH(this);
        setContentView(c.a);
        com.paypal.android.sdk.payments.d.a(this, c.b, null);
        c.g.setText(cE.a(cG.f));
        c.g.setVisibility(0);
        f();
    }

    protected Dialog onCreateDialog(int i1, Bundle bundle)
    {
        switch (i1)
        {
        default:
            return null;

        case 1: // '\001'
            return com.paypal.android.sdk.payments.d.a(this, cG.bk, bundle);

        case 2: // '\002'
            return com.paypal.android.sdk.payments.d.a(this, cG.aE, cG.bp);

        case 3: // '\003'
            return com.paypal.android.sdk.payments.d.a(this, cG.an, bundle, i1);

        case 4: // '\004'
            return com.paypal.android.sdk.payments.d.a(this, cG.aM, bundle, new w(this));
        }
    }

    protected void onDestroy()
    {
        (new StringBuilder()).append(d).append(".onDestroy");
        if (a != null)
        {
            a.m();
        }
        if (e)
        {
            unbindService(k);
            e = false;
        }
        super.onDestroy();
    }

    protected void onRestart()
    {
        super.onRestart();
        d();
    }

    protected void onResume()
    {
        super.onResume();
        (new StringBuilder()).append(d).append(".onResume");
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("pageTrackingSent", g);
        bundle.putBoolean("isLoginActivityStarted", h);
    }

}
