// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONException;

// Referenced classes of package com.paypal.android.sdk:
//            bh, br, aw, bo, 
//            bs, aI, aH, bf

public class bn extends Thread
{

    private static final String a = com/paypal/android/sdk/bn.getSimpleName();
    private bs b;
    private String c;
    private List d;
    private boolean e;
    private bf f;
    private bh g;

    public bn(String s, bs bs1, bf bf, bh bh1)
    {
        d = Collections.synchronizedList(new LinkedList());
        c = s;
        b = bs1;
        f = bf;
        g = bh1;
        start();
    }

    public final void a()
    {
        if (!e)
        {
            g.a();
            e = true;
            synchronized (d)
            {
                d.notifyAll();
            }
            interrupt();
            while (isAlive()) 
            {
                try
                {
                    Thread.sleep(10L);
                    (new StringBuilder("Waiting for ")).append(getClass().getSimpleName()).append(" to die");
                }
                // Misplaced declaration of an exception variable
                catch (Object obj) { }
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void a(br br1)
    {
        synchronized (d)
        {
            d.add(br1);
            (new StringBuilder("Queued ")).append(br1.o());
            d.notifyAll();
        }
        return;
        br1;
        list;
        JVM INSTR monitorexit ;
        throw br1;
    }

    public void run()
    {
        (new StringBuilder("Starting ")).append(getClass().getSimpleName());
_L3:
        if (e)
        {
            break MISSING_BLOCK_LABEL_217;
        }
        Object obj1 = d;
        obj1;
        JVM INSTR monitorenter ;
        boolean flag = d.isEmpty();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        d.wait();
        Object obj = null;
_L1:
        obj1;
        JVM INSTR monitorexit ;
        if (obj != null)
        {
            try
            {
                ((br) (obj)).a(((br) (obj)).b());
            }
            // Misplaced declaration of an exception variable
            catch (Object obj1)
            {
                Log.e("paypal.sdk", "Exception computing request", ((Throwable) (obj1)));
                ((br) (obj)).a(new aI(aH.c.toString(), "JSON Exception in computeRequest", ((JSONException) (obj1)).getMessage()));
            }
            // Misplaced declaration of an exception variable
            catch (Object obj1)
            {
                Log.e("paypal.sdk", "Exception computing request", ((Throwable) (obj1)));
                ((br) (obj)).a(new aI(aH.c.toString(), "Unsupported encoding", ((UnsupportedEncodingException) (obj1)).getMessage()));
            }
            if (aw.a(c))
            {
                obj1 = f;
            } else
            {
                obj1 = g;
            }
            if (!((bo) (obj1)).b(((br) (obj))))
            {
                b.a(((br) (obj)));
            }
        }
        continue; /* Loop/switch isn't completed */
        obj;
        obj = null;
          goto _L1
        obj = (br)d.remove(0);
          goto _L1
        obj;
        obj1;
        JVM INSTR monitorexit ;
        throw obj;
        (new StringBuilder()).append(getClass().getSimpleName()).append(" exiting");
        g.b();
        return;
        if (true) goto _L3; else goto _L2
_L2:
    }

}
