// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.SpannableString;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TextView;

// Referenced classes of package com.paypal.android.sdk:
//            bu, bt, cU, cQ, 
//            cZ, cV, cI, cT, 
//            d, cG, cE, cJ

public final class cO
{

    private ViewGroup a;
    private ViewGroup b;
    private cU c;
    private LinearLayout d;
    private TextView e;
    private LinearLayout f;
    private TextView g;
    private TextView h;
    private cT i;
    private cI j;
    private cU k;
    private cZ l;
    private cZ m;
    private cQ n;

    public cO(Context context, boolean flag)
    {
        b = bu.a(context);
        d = bu.a(b);
        LinearLayout linearlayout = bu.b(d);
        e = new TextView(context);
        bu.a(e, "0dip", "0dip", "0dip", "14dip");
        e.setTextSize(24F);
        e.setTextColor(bt.a);
        linearlayout.addView(e);
        bu.a(e, -2, -2);
        c = new cU(context, "description");
        c.d.setTypeface(bt.r);
        linearlayout.addView(c.a);
        bu.a(c.a);
        bu.a(linearlayout);
        if (flag)
        {
            n = new cQ(context);
            linearlayout.addView(n.a());
            bu.a(linearlayout);
            l = new cZ(context);
            linearlayout.addView(l.a());
        } else
        {
            i = new cT(context);
            linearlayout.addView(i.a);
            bu.a(i.a);
            bu.a(linearlayout);
            k = new cU(context, "00 / 0000");
            linearlayout.addView(k.a);
            bu.a(k.a);
        }
        m = new cZ(context);
        m.a(context, new cV());
        linearlayout.addView(m.a());
        g = new TextView(context);
        g.setId(43002);
        bu.b(g);
        linearlayout.addView(g);
        bu.a(g, -1, -2);
        bu.b(g, null, "20dip", null, "10dip");
        g.setVisibility(8);
        f = bu.a(context, true, 43001, linearlayout);
        h = new TextView(context);
        bu.a(h);
        h.setText("init");
        f.addView(h);
        j = new cI(context);
        d.addView(j.a);
        bu.a(j.a, -2, -2);
        bu.a(j.a, 17, 1.0F);
        a = b;
    }

    public final View a()
    {
        return a;
    }

    public final void a(Context context, cJ cj)
    {
        if (l != null)
        {
            l.a(context, cj);
        }
    }

    public final void a(Context context, cV cv)
    {
        if (m != null)
        {
            m.a(context, cv);
        }
    }

    public final void a(SpannableString spannablestring)
    {
        if (com.paypal.android.sdk.d.d(spannablestring))
        {
            g.setText(spannablestring);
            g.setVisibility(0);
            return;
        } else
        {
            g.setVisibility(8);
            return;
        }
    }

    public final void a(android.view.View.OnClickListener onclicklistener)
    {
        if (n != null)
        {
            n.a(onclicklistener);
        }
    }

    public final void a(String s)
    {
        n.a(s);
    }

    public final void a(String s, Bitmap bitmap, String s1)
    {
        i.b.setText(s);
        i.c.setImageBitmap(bitmap);
        k.c.setText(s1);
    }

    public final void a(String s, String s1)
    {
        c.d.setText(s);
        c.c.setText(s1);
    }

    public final void a(boolean flag)
    {
        if (flag)
        {
            if (com.paypal.android.sdk.d.b())
            {
                h.setText(cE.a(cG.a));
            } else
            {
                h.setText(cE.a(cG.E));
            }
            n.b();
            return;
        } else
        {
            h.setText(cE.a(cG.C));
            i.a.setVisibility(0);
            k.a.setVisibility(0);
            k.d.setText(cE.a(cG.ah));
            return;
        }
    }

    public final TextView b()
    {
        return e;
    }

    public final void b(android.view.View.OnClickListener onclicklistener)
    {
        f.setOnClickListener(onclicklistener);
    }

    public final void b(boolean flag)
    {
        if (f != null)
        {
            f.setEnabled(flag);
        }
    }

    public final void c()
    {
        c.a();
    }

    public final void c(android.view.View.OnClickListener onclicklistener)
    {
        if (l != null)
        {
            l.a(onclicklistener);
        }
    }

    public final TextView d()
    {
        return j.b;
    }

    public final void d(android.view.View.OnClickListener onclicklistener)
    {
        if (m != null)
        {
            m.a(onclicklistener);
        }
    }

    public final View e()
    {
        if (l != null)
        {
            return l.a();
        } else
        {
            return null;
        }
    }

    public final View f()
    {
        if (m != null)
        {
            return m.a();
        } else
        {
            return null;
        }
    }
}
