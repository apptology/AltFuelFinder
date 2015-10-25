// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.Set;

// Referenced classes of package com.paypal.android.sdk:
//            j, cG, y, cF, 
//            aH, d

public final class cE
{

    public static boolean a;
    private static final j b;
    private static Set c = new cF();

    public static String a(cG cg)
    {
        return b.a(cg);
    }

    public static String a(String s)
    {
        if (s.equals(aH.b.toString()))
        {
            return b.a(cG.aK);
        }
        if (s.equals(aH.a.toString()))
        {
            return b.a("INTERNAL_SERVICE_ERROR", cG.aQ);
        }
        if (s.equals(aH.c.toString()))
        {
            return b.a(cG.bu);
        } else
        {
            return b.a(s, cG.aQ);
        }
    }

    public static void b(String s)
    {
        b.a(s);
        boolean flag;
        if (d.d(s) && c.contains(s))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }

    public static String c(String s)
    {
        String s2 = b.a();
        String s1 = s2;
        if (!s2.contains("_"))
        {
            s1 = (new StringBuilder()).append(s2).append("_").append(s).toString();
        }
        return s1;
    }

    static 
    {
        b = new j(com/paypal/android/sdk/cG, y.a);
    }
}
