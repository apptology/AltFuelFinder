// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.camera.scanning;

import java.util.concurrent.ThreadFactory;

// Referenced classes of package com.biznessapps.camera.scanning:
//            InactivityTimer

private static final class <init>
    implements ThreadFactory
{

    public Thread newThread(Runnable runnable)
    {
        runnable = new Thread(runnable);
        runnable.setDaemon(true);
        return runnable;
    }

    private I()
    {
    }

    I(I i)
    {
        this();
    }
}
