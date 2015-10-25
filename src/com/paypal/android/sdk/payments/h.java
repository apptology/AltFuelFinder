// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import com.paypal.android.sdk.bv;
import com.paypal.android.sdk.cB;
import com.paypal.android.sdk.cD;
import com.paypal.android.sdk.d;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk.payments:
//            k, aL

abstract class h
    implements k
{

    private aL a;

    protected h(aL al)
    {
        a = al;
    }

    private String a(cD cd, boolean flag)
    {
        String s = (new StringBuilder()).append(cB.b).append(":").append(b()).append(":").append(cd.a()).toString();
        cd = s;
        if (flag)
        {
            cd = (new StringBuilder()).append(s).append("|error").toString();
        }
        return cd;
    }

    protected final aL a()
    {
        return a;
    }

    public final void a(cD cd, boolean flag, String s, String s1, String s2)
    {
        bv.a();
        String s4 = Locale.getDefault().toString();
        HashMap hashmap = new HashMap();
        String s3;
        boolean flag1;
        if (!d.a(s))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        hashmap.put("gn", a(cd, flag1));
        hashmap.put("v31", a(cd, flag1));
        s3 = (new StringBuilder()).append(a(cd, flag1)).append(":").append(cd.a(a.d(), flag)).toString();
        if (flag1)
        {
            s3 = (new StringBuilder()).append(s3).append("|error").toString();
        }
        hashmap.put("c25", s3);
        hashmap.put("v25", "D=c25");
        hashmap.put("c37", (new StringBuilder()).append(cB.a).append("::").toString());
        hashmap.put("c50", s4);
        hashmap.put("c35", "out");
        a(((Map) (hashmap)), cd, s1, s2);
        if (s != null)
        {
            hashmap.put("c29", s);
        }
        a("2.9.11", ((Map) (hashmap)));
    }

    abstract void a(String s, Map map);

    protected void a(Map map, cD cd, String s, String s1)
    {
    }

    protected abstract String b();
}
