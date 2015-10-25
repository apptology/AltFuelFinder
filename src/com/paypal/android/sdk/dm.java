// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class dm
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public dm()
    {
        a.put(df.a, "Cancel");
        a.put(df.b, "American Express");
        a.put(df.c, "Discover");
        a.put(df.d, "JCB");
        a.put(df.e, "MasterCard");
        a.put(df.f, "Visa");
        a.put(df.g, "Done");
        a.put(df.h, "CVV");
        a.put(df.i, "Postcode");
        a.put(df.j, "Expires");
        a.put(df.k, "MM/YY");
        a.put(df.l, "Hold card here.\nIt will scan automatically.");
        a.put(df.m, "Keyboard\u2026");
        a.put(df.n, "Card Number");
        a.put(df.o, "Card Details");
        a.put(df.p, "This device cannot use the camera to read card numbers.");
        a.put(df.q, "Device camera is unavailable.");
        a.put(df.r, "The device had an unexpected error opening the camera.");
    }

    public final String a()
    {
        return "en_GB";
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
