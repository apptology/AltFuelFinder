// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import android.util.Log;
import java.io.IOException;
import java.util.Locale;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;

// Referenced classes of package com.paypal.android.sdk:
//            aS, br, bh, c, 
//            d, bs, aN

final class bl extends aS
{

    private final br a;
    private bh b;

    private bl(bh bh1, br br1)
    {
        b = bh1;
        super();
        a = br1;
    }

    bl(bh bh1, br br1, byte byte0)
    {
        this(bh1, br1);
    }

    private String a(String s)
    {
        Locale locale = Locale.US;
        String s1 = (new StringBuilder()).append(a.o()).append(" PayPal Debug-ID: %s [%s, %s]").toString();
        String s2 = bh.b(b);
        StringBuilder stringbuilder = (new StringBuilder()).append(bh.c(b).a()).append(";");
        bh.c(b);
        return String.format(locale, s1, new Object[] {
            s, s2, stringbuilder.append("release").toString()
        });
    }

    public final void a(String s, String s1)
    {
        try
        {
            a.b(s);
            a.c(s1);
            bh.c();
            (new StringBuilder()).append(a.o()).append(" success. response: ").append(a.h());
            if (d.d(s1))
            {
                Log.w("paypal.sdk", a(s1));
            }
            if (a.r())
            {
                bh.a(a);
            }
            bh.a(b).a(a);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Log.e("paypal.sdk", "exception in response handler", s);
        }
        throw s;
    }

    public final void a(Throwable throwable, String s, String s1)
    {
        a.b(s);
        if (d.d(s1))
        {
            Log.w("paypal.sdk", a(s1));
        }
        if (throwable instanceof NoHttpResponseException)
        {
            bh.d(b).a().getConnectionManager().closeExpiredConnections();
            b.b(a);
            return;
        }
        try
        {
            bh.a(b, a, (IOException)throwable);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable)
        {
            Log.e("paypal.sdk", "exception in response handler", throwable);
        }
        throw throwable;
    }
}
