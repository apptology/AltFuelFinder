// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.concurrent.ConcurrentLinkedQueue;

// Referenced classes of package com.paypal.android.sdk:
//            bh

final class bj
    implements Runnable
{

    private bh a;

    bj(bh bh1)
    {
        a = bh1;
        super();
    }

    public final void run()
    {
        ((Runnable)bh.f(a).poll()).run();
    }
}
