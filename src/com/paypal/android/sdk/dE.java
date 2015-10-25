// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class dE
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public dE()
    {
        a.put(df.a, "\u0E22\u0E01\u0E40\u0E25\u0E34\u0E01");
        a.put(df.b, "American Express");
        a.put(df.c, "Discover");
        a.put(df.d, "JCB");
        a.put(df.e, "MasterCard");
        a.put(df.f, "Visa");
        a.put(df.g, "\u0E40\u0E2A\u0E23\u0E47\u0E08\u0E41\u0E25\u0E49\u0E27");
        a.put(df.h, "CVV");
        a.put(df.i, "\u0E23\u0E2B\u0E31\u0E2A\u0E44\u0E1B\u0E23\u0E29\u0E13\u0E35\u0E22\u0E4C");
        a.put(df.j, "\u0E2B\u0E21\u0E14\u0E2D\u0E32\u0E22\u0E38");
        a.put(df.k, "\u0E14\u0E14/\u0E1B\u0E1B");
        a.put(df.l, "\u0E16\u0E37\u0E2D\u0E1A\u0E31\u0E15\u0E23\u0E44\u0E27\u0E49\u0E15\u0E23\u0E07\u0E19\u0E35\u0E49\n\u0E40\u0E04\u0E23\u0E37\u0E48\u0E2D\u0E07\u0E08\u0E30\u0E2A\u0E41\u0E01\u0E19\u0E42\u0E14\u0E22\u0E2D\u0E31\u0E15\u0E42\u0E19\u0E21\u0E31\u0E15\u0E34");
        a.put(df.m, "\u0E04\u0E35\u0E22\u0E4C\u0E1A\u0E2D\u0E23\u0E4C\u0E14\u2026");
        a.put(df.n, "\u0E2B\u0E21\u0E32\u0E22\u0E40\u0E25\u0E02\u0E1A\u0E31\u0E15\u0E23");
        a.put(df.o, "\u0E23\u0E32\u0E22\u0E25\u0E30\u0E40\u0E2D\u0E35\u0E22\u0E14\u0E1A\u0E31\u0E15\u0E23");
        a.put(df.p, "\u0E2D\u0E38\u0E1B\u0E01\u0E23\u0E13\u0E4C\u0E44\u0E21\u0E48\u0E2A\u0E32\u0E21\u0E32\u0E23\u0E16\u0E43\u0E0A\u0E49\u0E01\u0E25\u0E49\u0E2D\u0E07\u0E40\u0E1E\u0E37\u0E48\u0E2D\u0E2D\u0E48\u0E32\u0E19\u0E2B\u0E21\u0E32\u0E22\u0E40\u0E25\u0E02\u0E1A\u0E31\u0E15\u0E23\u0E44\u0E14\u0E49");
        a.put(df.q, "\u0E01\u0E25\u0E49\u0E2D\u0E07\u0E02\u0E2D\u0E07\u0E2D\u0E38\u0E1B\u0E01\u0E23\u0E13\u0E4C\u0E44\u0E21\u0E48\u0E1E\u0E23\u0E49\u0E2D\u0E21\u0E43\u0E0A\u0E49\u0E07\u0E32\u0E19");
        a.put(df.r, "\u0E2D\u0E38\u0E1B\u0E01\u0E23\u0E13\u0E4C\u0E1E\u0E1A\u0E02\u0E49\u0E2D\u0E1C\u0E34\u0E14\u0E1E\u0E25\u0E32\u0E14\u0E02\u0E13\u0E30\u0E40\u0E1B\u0E34\u0E14\u0E01\u0E25\u0E49\u0E2D\u0E07");
    }

    public final String a()
    {
        return "th";
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
