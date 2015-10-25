// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class dz
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public dz()
    {
        a.put(df.a, "Anuluj");
        a.put(df.b, "American Express");
        a.put(df.c, "Discover");
        a.put(df.d, "JCB");
        a.put(df.e, "MasterCard");
        a.put(df.f, "Visa");
        a.put(df.g, "Gotowe");
        a.put(df.h, "Kod CVV2/CVC2");
        a.put(df.i, "Kod pocztowy");
        a.put(df.j, "Wygasa");
        a.put(df.k, "MM/RR");
        a.put(df.l, "Przytrzymaj kart\u0119 tutaj.\nZostanie ona zeskanowana automatycznie.");
        a.put(df.m, "Klawiatura\u2026");
        a.put(df.n, "Numer karty");
        a.put(df.o, "Dane karty");
        a.put(df.p, "Na tym urz\u0105dzeniu nie mo\u017Cna odczyta\u0107 numeru karty za pomoc\u0105 aparatu.");
        a.put(df.q, "Aparat na tym urz\u0105dzeniu jest niedostepny.");
        a.put(df.r, "Przy otwieraniu aparatu na tym urz\u0105dzeniu wyst\u0105pi\u0142 nieoczekiwany b\u0142\u0105d.");
    }

    public final String a()
    {
        return "pl";
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
