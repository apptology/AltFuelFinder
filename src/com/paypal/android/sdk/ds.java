// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class ds
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public ds()
    {
        a.put(df.a, "Annulla");
        a.put(df.b, "American Express");
        a.put(df.c, "Discover");
        a.put(df.d, "JCB");
        a.put(df.e, "MasterCard");
        a.put(df.f, "Visa");
        a.put(df.g, "Fine");
        a.put(df.h, "CVV");
        a.put(df.i, "Codice postale");
        a.put(df.j, "Scadenza");
        a.put(df.k, "MM/AA");
        a.put(df.l, "Inquadra la carta.\nLa scansione \350 automatica.");
        a.put(df.m, "Tastiera\u2026");
        a.put(df.n, "Numero di carta");
        a.put(df.o, "Dati carta");
        a.put(df.p, "La fotocamera non legge il numero di carta.");
        a.put(df.q, "Fotocamera non disponibile.");
        a.put(df.r, "Errore inatteso nell\u2019apertura della fotocamera.");
    }

    public final String a()
    {
        return "it";
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
