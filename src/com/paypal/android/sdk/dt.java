// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class dt
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public dt()
    {
        a.put(df.a, "\u30AD\u30E3\u30F3\u30BB\u30EB");
        a.put(df.b, "American Express");
        a.put(df.c, "Discover");
        a.put(df.d, "JCB");
        a.put(df.e, "MasterCard");
        a.put(df.f, "Visa");
        a.put(df.g, "\u5B8C\u4E86");
        a.put(df.h, "\u30AB\u30FC\u30C9\u78BA\u8A8D\u30B3\u30FC\u30C9");
        a.put(df.i, "\u90F5\u4FBF\u756A\u53F7");
        a.put(df.j, "\u6709\u52B9\u671F\u9650");
        a.put(df.k, "MM/YY");
        a.put(df.l, "\u3053\u3053\u3067\u30AB\u30FC\u30C9\u3092\u304A\u6301\u3061\u304F\u3060\u3055\u3044\u3002\n\u81EA\u52D5\u7684\u306B\u30B9\u30AD\u30E3\u30F3\u3055\u308C\u307E\u3059\u3002");
        a.put(df.m, "\u30AD\u30FC\u30DC\u30FC\u30C9\u2026");
        a.put(df.n, "\u30AB\u30FC\u30C9\u756A\u53F7");
        a.put(df.o, "\u30AB\u30FC\u30C9\u306E\u8A73\u7D30");
        a.put(df.p, "\u3053\u306E\u7AEF\u672B\u3067\u306F\u30AB\u30FC\u30C9\u756A\u53F7\u306E\u8AAD\u8FBC\u306B\u30AB\u30E1\u30E9\u3092\u4F7F\u3048\u307E\u305B\u3093\u3002");
        a.put(df.q, "\u7AEF\u672B\u306E\u30AB\u30E1\u30E9\u3092\u4F7F\u7528\u3067\u304D\u307E\u305B\u3093\u3002");
        a.put(df.r, "\u30AB\u30E1\u30E9\u3092\u8D77\u52D5\u4E2D\u306B\u4E88\u671F\u3057\u306A\u3044\u30A8\u30E9\u30FC\u304C\u767A\u751F\u3057\u307E\u3057\u305F\u3002");
    }

    public final String a()
    {
        return "ja";
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
