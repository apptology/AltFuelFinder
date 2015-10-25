// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;

// Referenced classes of package com.paypal.android.sdk:
//            aS, br, bh, aN

final class bm extends aS
{

    private final br a;
    private bh b;

    private bm(bh bh1, br br1)
    {
        b = bh1;
        super();
        a = br1;
    }

    bm(bh bh1, br br1, byte byte0)
    {
        this(bh1, br1);
    }

    public final void a(String s, String s1)
    {
        a.b(s);
        bh.c();
        (new StringBuilder()).append(a.o()).append(" success");
    }

    public final void a(Throwable throwable, String s)
    {
        a.b(s);
        if (throwable instanceof NoHttpResponseException)
        {
            bh.e(b).a().getConnectionManager().closeExpiredConnections();
            b.b(a);
            return;
        } else
        {
            bh.c();
            (new StringBuilder()).append(a.o()).append(" failure: ").append(throwable.getMessage());
            return;
        }
    }
}
