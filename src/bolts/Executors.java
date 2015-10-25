// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package bolts;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

final class Executors
{

    static final int CORE_POOL_SIZE;
    private static final int CPU_COUNT;
    static final long KEEP_ALIVE_TIME = 1L;
    static final int MAX_POOL_SIZE;
    static final int MAX_QUEUE_SIZE = 128;

    private Executors()
    {
    }

    public static void allowCoreThreadTimeout(ThreadPoolExecutor threadpoolexecutor, boolean flag)
    {
        if (android.os.Build.VERSION.SDK_INT >= 9)
        {
            threadpoolexecutor.allowCoreThreadTimeOut(flag);
        }
    }

    public static ExecutorService newCachedThreadPool()
    {
        ThreadPoolExecutor threadpoolexecutor = new ThreadPoolExecutor(CORE_POOL_SIZE, MAX_POOL_SIZE, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(128));
        allowCoreThreadTimeout(threadpoolexecutor, true);
        return threadpoolexecutor;
    }

    public static ExecutorService newCachedThreadPool(ThreadFactory threadfactory)
    {
        threadfactory = new ThreadPoolExecutor(CORE_POOL_SIZE, MAX_POOL_SIZE, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(128), threadfactory);
        allowCoreThreadTimeout(threadfactory, true);
        return threadfactory;
    }

    static 
    {
        CPU_COUNT = Runtime.getRuntime().availableProcessors();
        CORE_POOL_SIZE = CPU_COUNT + 1;
        MAX_POOL_SIZE = CPU_COUNT * 2 + 1;
    }
}
