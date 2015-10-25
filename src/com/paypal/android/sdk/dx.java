// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class dx
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public dx()
    {
        a.put(df.a, "Avbryt");
        a.put(df.b, "American Express");
        a.put(df.c, "Discover");
        a.put(df.d, "JCB");
        a.put(df.e, "MasterCard");
        a.put(df.f, "Visa");
        a.put(df.g, "Fullf\370rt");
        a.put(df.h, "CVV");
        a.put(df.i, "Postnummer");
        a.put(df.j, "Utl\370per");
        a.put(df.k, "MM/\305\305");
        a.put(df.l, "Hold kortet her.\nDet skannes automatisk.");
        a.put(df.m, "Tastatur \u2026");
        a.put(df.n, "Kortnummer");
        a.put(df.o, "Kortdetaljer");
        a.put(df.p, "Denne enheten kan ikke bruke kameraet til \345 lese kortnumre.");
        a.put(df.q, "Kameraet er utilgjengelig.");
        a.put(df.r, "Det oppstod en uventet feil ved kameraoppstart.");
    }

    public final String a()
    {
        return "nb";
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
