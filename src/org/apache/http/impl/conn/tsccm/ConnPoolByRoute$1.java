// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.conn.tsccm;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.routing.HttpRoute;

// Referenced classes of package org.apache.http.impl.conn.tsccm:
//            PoolEntryRequest, ConnPoolByRoute, WaitingThreadAborter, BasicPoolEntry

class val.state
    implements PoolEntryRequest
{

    final ConnPoolByRoute this$0;
    final WaitingThreadAborter val$aborter;
    final HttpRoute val$route;
    final Object val$state;

    public void abortRequest()
    {
        ConnPoolByRoute.access$000(ConnPoolByRoute.this).lock();
        val$aborter.abort();
        ConnPoolByRoute.access$000(ConnPoolByRoute.this).unlock();
        return;
        Exception exception;
        exception;
        ConnPoolByRoute.access$000(ConnPoolByRoute.this).unlock();
        throw exception;
    }

    public BasicPoolEntry getPoolEntry(long l, TimeUnit timeunit)
        throws InterruptedException, ConnectionPoolTimeoutException
    {
        return getEntryBlocking(val$route, val$state, l, timeunit, val$aborter);
    }

    er()
        throws InterruptedException, ConnectionPoolTimeoutException
    {
        this$0 = final_connpoolbyroute;
        val$aborter = waitingthreadaborter;
        val$route = httproute;
        val$state = Object.this;
        super();
    }
}
