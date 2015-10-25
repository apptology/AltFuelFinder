// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import com.paypal.android.sdk.aB;
import com.paypal.android.sdk.ay;
import com.paypal.android.sdk.b;
import com.paypal.android.sdk.by;
import com.paypal.android.sdk.cB;
import com.paypal.android.sdk.cD;
import com.paypal.android.sdk.cz;
import com.paypal.android.sdk.d;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk.payments:
//            h, aL, PayPalService

final class i extends h
{

    public i(PayPalService paypalservice)
    {
        super(new aL(paypalservice));
    }

    protected final void a(String s, Map map)
    {
        if (!a().a().b.c())
        {
            a().a().b = new cz();
        }
        map.put("v49", s);
        map.put("v51", a().c().d().d());
        map.put("v52", (new StringBuilder()).append(cB.a).append(" ").append(cB.d).toString());
        map.put("v53", cB.e);
        map.put("clid", a().b());
        map.put("apid", (new StringBuilder()).append(a().c().d().c()).append("|").append(s).append("|").append(a().f()).toString());
        s = new aB(a().a().b.b(), map, cB.c, cB.b, false);
        a().a(s);
    }

    protected final void a(Map map, cD cd, String s, String s1)
    {
        map.put("g", a().e());
        map.put("vers", (new StringBuilder()).append(cB.a).append(":").append(a().d()).append(":").toString());
        map.put("srce", "msdk");
        map.put("sv", "mobile");
        map.put("bchn", "msdk");
        map.put("adte", "FALSE");
        map.put("bzsr", "mobile");
        if (d.d(s))
        {
            map.put("calc", s);
        }
        if (d.d(s1))
        {
            map.put("prid", s1);
        }
        if (cd.b())
        {
            cd = "cl";
        } else
        {
            cd = "im";
        }
        map.put("e", cd);
    }

    protected final String b()
    {
        return "msdk";
    }
}
