// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class dD
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public dD()
    {
        a.put(df.a, "Avbryt");
        a.put(df.b, "American Express");
        a.put(df.c, "Discover");
        a.put(df.d, "JCB");
        a.put(df.e, "MasterCard");
        a.put(df.f, "Visa");
        a.put(df.g, "Klart");
        a.put(df.h, "CVV");
        a.put(df.i, "Postnummer");
        a.put(df.j, "G\345r ut");
        a.put(df.k, "MM/\305\305");
        a.put(df.l, "H\345ll kortet h\344r.\nDet skannas automatiskt.");
        a.put(df.m, "Tangentbord \u2026");
        a.put(df.n, "Kortnummer");
        a.put(df.o, "Kortinformation");
        a.put(df.p, "Den h\344r enheten kan inte anv\344nda kameran till att l\344sa kortnummer.");
        a.put(df.q, "Enhetens kamera \344r inte tillg\344nglig.");
        a.put(df.r, "Ett ov\344ntat fel uppstod n\344r enheten skulle \366ppna kameran.");
    }

    public final String a()
    {
        return "sv";
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
