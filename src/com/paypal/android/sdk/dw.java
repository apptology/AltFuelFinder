// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class dw
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public dw()
    {
        a.put(df.a, "Batal");
        a.put(df.b, "American Express");
        a.put(df.c, "Discover");
        a.put(df.d, "JCB");
        a.put(df.e, "MasterCard");
        a.put(df.f, "Visa");
        a.put(df.g, "Selesai");
        a.put(df.h, "CVV");
        a.put(df.i, "Poskod");
        a.put(df.j, "Luput");
        a.put(df.k, "BB/TT");
        a.put(df.l, "Pegang kad di sini.\nIa akan mengimbas secara automatik.");
        a.put(df.m, "Papan Kekunci\u2026");
        a.put(df.n, "Nombor Kad");
        a.put(df.o, "Butiran Kad");
        a.put(df.p, "Peranti ini tidak dapat menggunakan kamera untuk membaca nombor kad.");
        a.put(df.q, "Kamera peranti tidak tersedia.");
        a.put(df.r, "Peranti mengalami ralat tidak dijangka semasa membuka kamera.");
    }

    public final String a()
    {
        return "ms";
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
