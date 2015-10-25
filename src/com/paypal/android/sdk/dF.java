// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class dF
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public dF()
    {
        a.put(df.a, "\u0130ptal");
        a.put(df.b, "American Express");
        a.put(df.c, "Discover");
        a.put(df.d, "JCB");
        a.put(df.e, "MasterCard");
        a.put(df.f, "Visa");
        a.put(df.g, "Bitti");
        a.put(df.h, "CVV");
        a.put(df.i, "Posta Kodu");
        a.put(df.j, "Son kullanma tarihi");
        a.put(df.k, "AA/YY");
        a.put(df.l, "Kart\u0131n\u0131z\u0131 buraya tutun.\nOtomatik olarak taranacakt\u0131r.");
        a.put(df.m, "Klavye\u2026");
        a.put(df.n, "Kart Numaras\u0131");
        a.put(df.o, "Kart Ayr\u0131nt\u0131lar\u0131");
        a.put(df.p, "Bu cihaz\u0131n kameras\u0131 kart rakamlar\u0131n\u0131 okuyamaz.");
        a.put(df.q, "Cihaz kameras\u0131 kullan\u0131lam\u0131yor.");
        a.put(df.r, "Cihaz kameray\u0131 a\347arken beklenmedik bir hata verdi.");
    }

    public final String a()
    {
        return "tr";
    }

    public final String a(Enum enum, String s)
    {
        enum = (df)enum;
        s = (new StringBuilder()).append(enum.toString()).append("|").append(s).toString();
        if (b.containsKey(s))
        {
            return (String)b.get(s);
        } else
        {
            return (String)a.get(enum);
        }
    }

}
