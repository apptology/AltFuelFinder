// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.paypal.android.sdk:
//            aE, br, aF

public class aD
{

    private static final String a = com/paypal/android/sdk/aD.getSimpleName();
    private final List b = new ArrayList();

    public aD()
    {
    }

    public final void a()
    {
        List list = b;
        list;
        JVM INSTR monitorenter ;
        aE ae;
        for (Iterator iterator = b.iterator(); iterator.hasNext(); b.remove(ae))
        {
            ae = (aE)iterator.next();
        }

        break MISSING_BLOCK_LABEL_55;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
    }

    public final void a(aF af)
    {
label0:
        {
            synchronized (b)
            {
                Iterator iterator = b.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                } while (((aE)iterator.next()).a != af);
                (new StringBuilder("Ignoring attempt to re-register listener ")).append(af);
            }
            return;
        }
        b.add(new aE(this, af));
        list;
        JVM INSTR monitorexit ;
        return;
        af;
        list;
        JVM INSTR monitorexit ;
        throw af;
    }

    public final void a(br br1, long l)
    {
        (new StringBuilder("dispatching ")).append(br1.o());
        if (br1.p() >= 0L) goto _L2; else goto _L1
_L1:
        (new StringBuilder("discarding ")).append(br1.o());
_L4:
        return;
_L2:
        ArrayList arraylist = new ArrayList();
        List list = b;
        list;
        JVM INSTR monitorenter ;
        for (Iterator iterator1 = b.iterator(); iterator1.hasNext(); arraylist.add(0, (aE)iterator1.next())) { }
        break MISSING_BLOCK_LABEL_110;
        br1;
        list;
        JVM INSTR monitorexit ;
        throw br1;
        list;
        JVM INSTR monitorexit ;
        Iterator iterator = arraylist.iterator();
        while (iterator.hasNext()) 
        {
            ((aE)iterator.next()).a.a(br1);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

}
