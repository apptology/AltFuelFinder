// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.paypal.android.sdk:
//            am, ak

public class al
{

    private List a;
    private List b;

    private al()
    {
        a = Collections.synchronizedList(new ArrayList());
        b = Collections.synchronizedList(new ArrayList());
    }

    al(byte byte0)
    {
        this();
    }

    public static al a()
    {
        return am.a();
    }

    private void b()
    {
        if (b.isEmpty())
        {
            break MISSING_BLOCK_LABEL_81;
        }
        this;
        JVM INSTR monitorenter ;
        if (!b.isEmpty())
        {
            ak ak1 = (ak)b.get(0);
            b.remove(0);
            a.add(ak1);
            (new Thread(ak1)).start();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void a(ak ak1)
    {
        b.add(ak1);
        if (a.size() < 3)
        {
            b();
        }
    }

    public final void b(ak ak1)
    {
        a.remove(ak1);
        b();
    }

    static 
    {
        com/paypal/android/sdk/al.getSimpleName();
    }
}
