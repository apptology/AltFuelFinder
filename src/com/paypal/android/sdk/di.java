// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class di
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public di()
    {
        a.put(df.a, "Annuller");
        a.put(df.b, "American Express");
        a.put(df.c, "Discover");
        a.put(df.d, "JCB");
        a.put(df.e, "MasterCard");
        a.put(df.f, "Visa");
        a.put(df.g, "Udf\370rt");
        a.put(df.h, "CVV");
        a.put(df.i, "Postnummer");
        a.put(df.j, "Udl\370ber");
        a.put(df.k, "MM/\305\305");
        a.put(df.l, "Hold kortet her.\nDet scannes automatisk.");
        a.put(df.m, "Tastatur\u2026");
        a.put(df.n, "Kortnummer");
        a.put(df.o, "Kortoplysninger");
        a.put(df.p, "Denne enhed kan ikke anvende kameraet til at l\346se kortnumre.");
        a.put(df.q, "Enhed kamera ikke er tilg\346ngelig.");
        a.put(df.r, "Enheden havde en uventet fejl under \345bning af kamera.");
    }

    public final String a()
    {
        return "da";
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
