// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class dr
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public dr()
    {
        a.put(df.a, "H\346tta vi\360");
        a.put(df.b, "American Express");
        a.put(df.c, "Discover");
        a.put(df.d, "JCB");
        a.put(df.e, "MasterCard");
        a.put(df.f, "Visa");
        a.put(df.g, "Loki\360");
        a.put(df.h, "CVV");
        a.put(df.i, "P\363stn\372mer");
        a.put(df.j, "Rennur \372t");
        a.put(df.k, "MM/\301\301");
        a.put(df.l, "Haltu kortinu kyrru h\351r.\n\336a\360 ver\360ur sj\341lvirkt skanna\360.");
        a.put(df.m, "Lyklabor\360\u2026");
        a.put(df.n, "Kortan\372mar");
        a.put(df.o, "Kortauppl\375singar");
        a.put(df.p, "\336etta t\346ki getur ekki nota\360 myndav\351lina til a\360 lesa af n\372mer af kortinu.");
        a.put(df.q, "Ekki n\346st samband vi\360 myndav\351lina.");
        a.put(df.r, "Upp kom villa vi\360 a\360 opna myndav\351lina..");
    }

    public final String a()
    {
        return "is";
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
