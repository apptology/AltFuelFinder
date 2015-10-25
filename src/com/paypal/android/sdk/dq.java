// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class dq
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public dq()
    {
        a.put(df.a, "\u05D1\u05D9\u05D8\u05D5\u05DC");
        a.put(df.b, "\u05D0\u05DE\u05E8\u05D9\u05E7\u05DF \u05D0\u05E7\u05E1\u05E4\u05E8\u05E1");
        a.put(df.c, "Discover\u200F");
        a.put(df.d, "JCB\u200F");
        a.put(df.e, "\u05DE\u05D0\u05E1\u05D8\u05E8\u05E7\u05D0\u05E8\u05D3");
        a.put(df.f, "\u05D5\u05D9\u05D6\u05D4");
        a.put(df.g, "\u05D1\u05D5\u05E6\u05E2");
        a.put(df.h, "\u05E7\u05D5\u05D3 \u05D0\u05D9\u05DE\u05D5\u05EA \u05DB\u05E8\u05D8\u05D9\u05E1");
        a.put(df.i, "\u05DE\u05D9\u05E7\u05D5\u05D3");
        a.put(df.j, "\u05EA\u05D0\u05E8\u05D9\u05DA \u05EA\u05E4\u05D5\u05D2\u05D4");
        a.put(df.k, "MM/YY\u200F");
        a.put(df.l, "\u05D4\u05D7\u05D6\u05E7 \u05D0\u05EA \u05D4\u05DB\u05E8\u05D8\u05D9\u05E1 \u05DB\u05D0\u05DF.\n\u05D4\u05E1\u05E8\u05D9\u05E7\u05D4 \u05EA\u05EA\u05D1\u05E6\u05E2 \u05D1\u05D0\u05D5\u05E4\u05DF \u05D0\u05D5\u05D8\u05D5\u05DE\u05D8\u05D9.");
        a.put(df.m, "\u05DE\u05E7\u05DC\u05D3\u05EA\u2026");
        a.put(df.n, "\u05DE\u05E1\u05E4\u05E8 \u05DB\u05E8\u05D8\u05D9\u05E1");
        a.put(df.o, "\u05E4\u05E8\u05D8\u05D9 \u05DB\u05E8\u05D8\u05D9\u05E1");
        a.put(df.p, "\u05D4\u05DE\u05DB\u05E9\u05D9\u05E8 \u05D0\u05D9\u05E0\u05D5 \u05DE\u05E1\u05D5\u05D2\u05DC \u05DC\u05D4\u05E9\u05EA\u05DE\u05E9 \u05D1\u05DE\u05E6\u05DC\u05DE\u05D4 \u05DC\u05E7\u05E8\u05D9\u05D0\u05EA \u05DE\u05E1\u05E4\u05E8\u05D9 \u05DB\u05E8\u05D8\u05D9\u05E1.");
        a.put(df.q, "\u05DE\u05E6\u05DC\u05DE\u05EA \u05D4\u05DE\u05DB\u05E9\u05D9\u05E8 \u05D0\u05D9\u05E0\u05D4 \u05D6\u05DE\u05D9\u05E0\u05D4.");
        a.put(df.r, "\u05D4\u05DE\u05DB\u05E9\u05D9\u05E8 \u05E0\u05EA\u05E7\u05DC \u05D1\u05E9\u05D2\u05D9\u05D0\u05D4 \u05D1\u05DC\u05EA\u05D9 \u05E6\u05E4\u05D5\u05D9\u05D4 \u05D1\u05D6\u05DE\u05DF \u05D4\u05E4\u05E2\u05DC\u05EA \u05D4\u05DE\u05E6\u05DC\u05DE\u05D4.");
    }

    public final String a()
    {
        return "he";
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
