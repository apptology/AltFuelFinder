// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.conn.tsccm;

import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;

// Referenced classes of package org.apache.http.impl.conn.tsccm:
//            ThreadSafeClientConnManager, PoolEntryRequest, BasicPooledConnAdapter

class val.route
    implements ClientConnectionRequest
{

    final ThreadSafeClientConnManager this$0;
    final PoolEntryRequest val$poolRequest;
    final HttpRoute val$route;

    public void abortRequest()
    {
        val$poolRequest.abortRequest();
    }

    public ManagedClientConnection getConnection(long l, TimeUnit timeunit)
        throws InterruptedException, ConnectionPoolTimeoutException
    {
        if (val$route == null)
        {
            throw new IllegalArgumentException("Route may not be null.");
        }
        if (ThreadSafeClientConnManager.access$000(ThreadSafeClientConnManager.this).isDebugEnabled())
        {
            ThreadSafeClientConnManager.access$000(ThreadSafeClientConnManager.this).debug((new StringBuilder()).append("Get connection: ").append(val$route).append(", timeout = ").append(l).toString());
        }
        timeunit = val$poolRequest.getPoolEntry(l, timeunit);
        return new BasicPooledConnAdapter(ThreadSafeClientConnManager.this, timeunit);
    }

    ()
        throws ConnectionPoolTimeoutException, InterruptedException
    {
        this$0 = final_threadsafeclientconnmanager;
        val$poolRequest = poolentryrequest;
        val$route = HttpRoute.this;
        super();
    }
}
