// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class dp
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public dp()
    {
        a.put(df.a, "Annuler");
        a.put(df.b, "American Express");
        a.put(df.c, "Discover");
        a.put(df.d, "JCB");
        a.put(df.e, "MasterCard");
        a.put(df.f, "Visa");
        a.put(df.g, "OK");
        a.put(df.h, "Crypto.");
        a.put(df.i, "Code postal");
        a.put(df.j, "Date d\u2019expiration");
        a.put(df.k, "MM/AA");
        a.put(df.l, "Maintenez la carte \340 cet endroit.\nElle va \352tre automatiquement scann\351e.");
        a.put(df.m, "Clavier\u2026");
        a.put(df.n, "N\272 de carte");
        a.put(df.o, "Carte");
        a.put(df.p, "Cet appareil ne peut pas utiliser l\u2019appareil photo pour lire les num\351ros de carte.");
        a.put(df.q, "L\u2019appareil photo n\u2019est pas disponible.");
        a.put(df.r, "Une erreur s\u2019est produite en ouvrant l\u2019appareil photo.");
    }

    public final String a()
    {
        return "fr";
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
