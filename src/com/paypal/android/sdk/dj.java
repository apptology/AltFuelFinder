// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class dj
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public dj()
    {
        a.put(df.a, "Abbrechen");
        a.put(df.b, "American Express");
        a.put(df.c, "Discover");
        a.put(df.d, "JCB");
        a.put(df.e, "MasterCard");
        a.put(df.f, "Visa");
        a.put(df.g, "Fertig");
        a.put(df.h, "Kartenpr\374fnr.");
        a.put(df.i, "PLZ");
        a.put(df.j, "G\374ltig bis");
        a.put(df.k, "MM/JJ");
        a.put(df.l, "Kreditkarte hierhin halten.\nSie wird automatisch gelesen.");
        a.put(df.m, "Tastatur\u2026");
        a.put(df.n, "Kartennummer");
        a.put(df.o, "Kreditkartendetails");
        a.put(df.p, "Dieses Ger\344t kann mit der Kamera keine Kreditkartennummern lesen.");
        a.put(df.q, "Die Kamera ist nicht verf\374gbar.");
        a.put(df.r, "Beim \326ffnen der Kamera ist ein unerwarteter Fehler aufgetreten.");
    }

    public final String a()
    {
        return "de";
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
