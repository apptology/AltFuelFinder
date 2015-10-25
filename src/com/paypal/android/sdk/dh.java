// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class dh
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public dh()
    {
        a.put(df.a, "\u0625\u0644\u063A\u0627\u0621");
        a.put(df.b, "American Express\u200F");
        a.put(df.c, "Discover\u200F");
        a.put(df.d, "JCB\u200F");
        a.put(df.e, "MasterCard\u200F");
        a.put(df.f, "Visa\u200F");
        a.put(df.g, "\u062A\u0645");
        a.put(df.h, "CVV\u200F");
        a.put(df.i, "\u0627\u0644\u0631\u0645\u0632 \u0627\u0644\u0628\u0631\u064A\u062F\u064A");
        a.put(df.j, "\u062A\u0627\u0631\u064A\u062E \u0627\u0646\u062A\u0647\u0627\u0621 \u0627\u0644\u0635\u0644\u0627\u062D\u064A\u0629");
        a.put(df.k, "MM/YY\u200F");
        a.put(df.l, "\u0627\u0645\u0633\u0643 \u0627\u0644\u0628\u0637\u0627\u0642\u0629 \u0647\u0646\u0627.\n \u0633\u062A\u0645\u0633\u062D \u062A\u0644\u0642\u0627\u0626\u064A\u0627.");
        a.put(df.m, "\u0644\u0648\u062D\u0629 \u0627\u0644\u0645\u0641\u0627\u062A\u064A\u062D\u2026");
        a.put(df.n, "\u0631\u0642\u0645 \u0627\u0644\u0628\u0637\u0627\u0642\u0629");
        a.put(df.o, "\u062A\u0641\u0627\u0635\u064A\u0644 \u0627\u0644\u0628\u0637\u0627\u0642\u0629");
        a.put(df.p, "\u0647\u0630\u0627 \u0627\u0644\u062C\u0647\u0627\u0632 \u0644\u0627 \u064A\u0645\u0643\u0646\u0647 \u0627\u0633\u062A\u0639\u0645\u0627\u0644 \u0627\u0644\u0643\u0627\u0645\u064A\u0631\u0627 \u0644\u0642\u0631\u0627\u0621\u0629 \u0623\u0631\u0642\u0627\u0645 \u0627\u0644\u0628\u0637\u0627\u0642\u0629.");
        a.put(df.q, "\u0643\u0627\u0645\u064A\u0631\u0627 \u0627\u0644\u062C\u0647\u0627\u0632 \u063A\u064A\u0631 \u0645\u062A\u0627\u062D\u0629.");
        a.put(df.r, "\u0627\u0644\u062C\u0647\u0627\u0632 \u062D\u062F\u062B \u0628\u0647 \u062E\u0637\u0627 \u063A\u064A\u0631 \u0645\u062A\u0648\u0642\u0639 \u0639\u0646\u062F \u0641\u062A\u062D \u0627\u0644\u0643\u0627\u0645\u064A\u0631\u0627.");
    }

    public final String a()
    {
        return "ar";
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
