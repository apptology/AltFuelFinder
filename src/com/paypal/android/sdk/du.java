// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class du
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public du()
    {
        a.put(df.a, "\uCDE8\uC18C");
        a.put(df.b, "American Express");
        a.put(df.c, "Discover");
        a.put(df.d, "JCB");
        a.put(df.e, "MasterCard");
        a.put(df.f, "Visa");
        a.put(df.g, "\uC644\uB8CC");
        a.put(df.h, "CVV");
        a.put(df.i, "\uC6B0\uD3B8\uBC88\uD638");
        a.put(df.j, "\uC720\uD6A8\uAE30\uAC04");
        a.put(df.k, "MM / YY");
        a.put(df.l, "\uCE74\uB4DC\uB97C \uC5EC\uAE30\uC5D0 \uAC16\uB2E4 \uB300\uC138\uC694.\n\uC790\uB3D9\uC73C\uB85C \uC2A4\uCE94\uB429\uB2C8\uB2E4.");
        a.put(df.m, "\uD0A4\uBCF4\uB4DC\u2026");
        a.put(df.n, "\uCE74\uB4DC \uBC88\uD638");
        a.put(df.o, "\uCE74\uB4DC \uC138\uBD80\uC815\uBCF4");
        a.put(df.p, "\uAE30\uAE30\uAC00 \uCE74\uBA54\uB77C\uB97C \uC774\uC6A9\uD55C \uCE74\uB4DC \uC22B\uC790 \uD310\uB3C5\uC744 \uC9C0\uC6D0\uD558\uC9C0 \uC54A\uC2B5\uB2C8\uB2E4.");
        a.put(df.q, "\uAE30\uAE30\uC5D0\uC11C \uCE74\uBA54\uB77C\uB97C \uC0AC\uC6A9\uD560 \uC218 \uC5C6\uC2B5\uB2C8\uB2E4.");
        a.put(df.r, "\uAE30\uAE30\uC5D0\uC11C \uCE74\uBA54\uB77C\uB97C \uC5EC\uB294 \uB3D9\uC548 \uC608\uC0C1\uCE58 \uBABB\uD55C \uC624\uB958\uAC00 \uBC1C\uC0DD\uD588\uC2B5\uB2C8\uB2E4.");
    }

    public final String a()
    {
        return "ko";
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
