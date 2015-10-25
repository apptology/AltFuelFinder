// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.camera.scanning;

import android.app.Activity;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.biznessapps.camera.scanning:
//            FinishListener

final class InactivityTimer
{
    private static final class DaemonThreadFactory
        implements ThreadFactory
    {

        public Thread newThread(Runnable runnable)
        {
            runnable = new Thread(runnable);
            runnable.setDaemon(true);
            return runnable;
        }

        private DaemonThreadFactory()
        {
        }

    }


    private static final int INACTIVITY_DELAY_SECONDS = 300;
    private final Activity activity;
    private ScheduledFuture inactivityFuture;
    private final ScheduledExecutorService inactivityTimer = Executors.newSingleThreadScheduledExecutor(new DaemonThreadFactory());

    InactivityTimer(Activity activity1)
    {
        inactivityFuture = null;
        activity = activity1;
        onActivity();
    }

    private void cancel()
    {
        if (inactivityFuture != null)
        {
            inactivityFuture.cancel(true);
            inactivityFuture = null;
        }
    }

    void onActivity()
    {
        cancel();
        inactivityFuture = inactivityTimer.schedule(new FinishListener(activity), 300L, TimeUnit.SECONDS);
    }

    void shutdown()
    {
        cancel();
        inactivityTimer.shutdown();
    }
}
