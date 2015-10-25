// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class dy
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public dy()
    {
        a.put(df.a, "Annuleren");
        a.put(df.b, "American Express");
        a.put(df.c, "Discover");
        a.put(df.d, "JCB");
        a.put(df.e, "MasterCard");
        a.put(df.f, "Visa");
        a.put(df.g, "Gereed");
        a.put(df.h, "CVV");
        a.put(df.i, "Postcode");
        a.put(df.j, "Vervaldatum");
        a.put(df.k, "MM/JJ");
        a.put(df.l, "Houd uw kaart hier.\nScannen gaat automatisch.");
        a.put(df.m, "Toetsenbord\u2026");
        a.put(df.n, "Creditcardnummer");
        a.put(df.o, "Kaartgegevens");
        a.put(df.p, "Met de camera van dit apparaat kunnen geen kaartnummers worden gelezen.");
        a.put(df.q, "Camera apparaat niet beschikbaar.");
        a.put(df.r, "Er is een onverwachte fout opgetreden bij het starten van de camera.");
    }

    public final String a()
    {
        return "nl";
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
