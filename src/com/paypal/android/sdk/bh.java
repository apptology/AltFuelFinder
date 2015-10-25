// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import android.util.Log;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.apache.http.Header;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpResponseException;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHeader;

// Referenced classes of package com.paypal.android.sdk:
//            bc, bd, aw, aJ, 
//            aN, br, aH, bs, 
//            aI, bk, bp, aK, 
//            b, bl, c, d, 
//            bi, bj, aS

public class bh extends bc
{

    private static final String a = com/paypal/android/sdk/bh.getSimpleName();
    private final b b;
    private final String c;
    private final bs d;
    private final aN e;
    private final aN f;
    private final c g;
    private final ScheduledExecutorService h = Executors.newSingleThreadScheduledExecutor();
    private final ConcurrentLinkedQueue i = new ConcurrentLinkedQueue();

    public bh(b b1, String s, c c1, bs bs1, int j, String s1, String s2, 
            boolean flag)
    {
        boolean flag1 = true;
        super();
        b = b1;
        c = s;
        g = c1;
        d = bs1;
        b1 = bd.a();
        boolean flag2 = aw.d(s);
        if (flag2 && !flag)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag2)
        {
            flag1 = false;
        }
        e = aJ.a(0x15f90, flag, flag1, s1);
        e.a(b1);
        f = aJ.a(0x15f90, false, false, s2);
        f.a(b1);
    }

    static bs a(bh bh1)
    {
        return bh1.d;
    }

    private static String a(String s, String s1)
    {
        String s2 = s;
        if (s1 != null)
        {
            s2 = s;
            if (!s.endsWith("/"))
            {
                s2 = (new StringBuilder()).append(s).append("/").toString();
            }
            s2 = (new StringBuilder()).append(s2).append(s1).toString();
        }
        return s2;
    }

    static void a(bh bh1, br br1, IOException ioexception)
    {
        (new StringBuilder()).append(br1.o()).append(" failure.");
        if (ioexception instanceof HttpResponseException)
        {
            int j = ((HttpResponseException)ioexception).getStatusCode();
            Log.e("paypal.sdk", (new StringBuilder("request failure with http statusCode:")).append(j).append(",exception:").append(ioexception.toString()).toString());
            a(br1, j);
            if (br1.r())
            {
                br1.a(aH.a.toString(), (new StringBuilder()).append(j).append(" http response received.  Response not parsable.").toString(), null);
            }
        } else
        {
            br1.a(new aI(aH.b, ioexception));
        }
        Log.e("paypal.sdk", (new StringBuilder("request failed with server response:")).append(br1.h()).toString());
        bh1.d.a(br1);
    }

    static void a(bh bh1, br br1, String s, aN an, aS as)
    {
        bh1.a(br1, s, an, as);
    }

    private void a(br br1, String s, aN an, aS as)
    {
        switch (bk.a[br1.i().b().ordinal()])
        {
        default:
            throw new RuntimeException((new StringBuilder()).append(br1.i().b()).append(" not supported.").toString());

        case 1: // '\001'
            an.a(b.f(), a(s, br1.g()), a(br1, null), null, as);
            return;

        case 2: // '\002'
            String s1 = br1.g();
            StringEntity stringentity = new StringEntity(s1, Charset.forName("UTF-8").name());
            an.a(b.f(), s, a(br1, s1), stringentity, null, as);
            return;

        case 3: // '\003'
            e.a(b.f(), a(s, br1.g()), a(br1, null), new bl(this, br1, (byte)0));
            break;
        }
    }

    private Header[] a(br br1, String s)
    {
        ArrayList arraylist = new ArrayList();
        java.util.Map.Entry entry;
        for (Iterator iterator = br1.j().entrySet().iterator(); iterator.hasNext(); arraylist.add(new BasicHeader((String)entry.getKey(), (String)entry.getValue())))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        int j;
        int k;
        if (s != null)
        {
            try
            {
                arraylist.add(com.paypal.android.sdk.d.a(g.c(), arraylist, s));
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
            // Misplaced declaration of an exception variable
            catch (String s) { }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        s = (Header[])arraylist.toArray(new Header[0]);
        k = s.length;
        j = 0;
        while (j < k) 
        {
            Header header = s[j];
            if (br1.a())
            {
                (new StringBuilder()).append(br1.o()).append(" header: ").append(header.getName()).append("=").append(header.getValue());
            } else
            {
                (new StringBuilder()).append(br1.o()).append(" header: ").append(header.getName()).append("=").append(header.getValue());
            }
            j++;
        }
        return s;
    }

    static String b(bh bh1)
    {
        return bh1.c;
    }

    static c c(bh bh1)
    {
        return bh1.g;
    }

    static String c()
    {
        return a;
    }

    static aN d(bh bh1)
    {
        return bh1.e;
    }

    static aN e(bh bh1)
    {
        return bh1.f;
    }

    static ConcurrentLinkedQueue f(bh bh1)
    {
        return bh1.i;
    }

    final void a()
    {
        e.a(b.f(), true);
        f.a(b.f(), true);
    }

    final void b()
    {
        e.a().getConnectionManager().closeIdleConnections(1L, TimeUnit.MILLISECONDS);
        f.a().getConnectionManager().closeIdleConnections(1L, TimeUnit.MILLISECONDS);
    }

    public final boolean b(br br1)
    {
        String s;
        if (!b.a())
        {
            br1.a(new aI(aH.b.toString()));
            return false;
        }
        br.l();
        s = br1.a(br1.i());
        int j;
        if (br1.a())
        {
            (new StringBuilder()).append(br1.o()).append(" endpoint: ").append(s);
            (new StringBuilder()).append(br1.o()).append(" request: ").append(br1.g());
        } else
        {
            (new StringBuilder()).append(br1.o()).append(" endpoint: ").append(s);
            (new StringBuilder()).append(br1.o()).append(" request: ").append(br1.g());
        }
        if (!br1.a()) goto _L2; else goto _L1
_L1:
        i.offer(new bi(this, br1, s));
        j = (new Random()).nextInt(190) + 10;
        (new StringBuilder("Delaying tracking execution for ")).append(j).append(" seconds");
        h.schedule(new bj(this), j, TimeUnit.SECONDS);
_L4:
        return true;
_L2:
        try
        {
            a(br1, s, e, new bl(this, br1, (byte)0));
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            br1.a(new aI(aH.d, unsupportedencodingexception));
            return false;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

}
