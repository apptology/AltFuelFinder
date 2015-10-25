// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.conn;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.params.HttpParams;

// Referenced classes of package org.apache.http.impl.conn:
//            SchemeRegistryFactory, DefaultClientConnectionOperator, AbstractPooledConnAdapter, AbstractPoolEntry

public class SingleClientConnManager
    implements ClientConnectionManager
{
    protected class ConnAdapter extends AbstractPooledConnAdapter
    {

        final SingleClientConnManager this$0;

        protected ConnAdapter(PoolEntry poolentry, HttpRoute httproute)
        {
            this$0 = SingleClientConnManager.this;
            super(SingleClientConnManager.this, poolentry);
            markReusable();
            poolentry.route = httproute;
        }
    }

    protected class PoolEntry extends AbstractPoolEntry
    {

        final SingleClientConnManager this$0;

        protected void close()
            throws IOException
        {
            shutdownEntry();
            if (connection.isOpen())
            {
                connection.close();
            }
        }

        protected void shutdown()
            throws IOException
        {
            shutdownEntry();
            if (connection.isOpen())
            {
                connection.shutdown();
            }
        }

        protected PoolEntry()
        {
            this$0 = SingleClientConnManager.this;
            super(connOperator, null);
        }
    }


    public static final String MISUSE_MESSAGE = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one.";
    protected final boolean alwaysShutDown;
    protected final ClientConnectionOperator connOperator;
    protected long connectionExpiresTime;
    protected volatile boolean isShutDown;
    protected long lastReleaseTime;
    private final Log log;
    protected ConnAdapter managedConn;
    protected final SchemeRegistry schemeRegistry;
    protected PoolEntry uniquePoolEntry;

    public SingleClientConnManager()
    {
        this(SchemeRegistryFactory.createDefault());
    }

    public SingleClientConnManager(SchemeRegistry schemeregistry)
    {
        log = LogFactory.getLog(getClass());
        if (schemeregistry == null)
        {
            throw new IllegalArgumentException("Scheme registry must not be null.");
        } else
        {
            schemeRegistry = schemeregistry;
            connOperator = createConnectionOperator(schemeregistry);
            uniquePoolEntry = new PoolEntry();
            managedConn = null;
            lastReleaseTime = -1L;
            alwaysShutDown = false;
            isShutDown = false;
            return;
        }
    }

    public SingleClientConnManager(HttpParams httpparams, SchemeRegistry schemeregistry)
    {
        this(schemeregistry);
    }

    protected final void assertStillUp()
        throws IllegalStateException
    {
        if (isShutDown)
        {
            throw new IllegalStateException("Manager is shut down.");
        } else
        {
            return;
        }
    }

    public void closeExpiredConnections()
    {
        this;
        JVM INSTR monitorenter ;
        if (System.currentTimeMillis() >= connectionExpiresTime)
        {
            closeIdleConnections(0L, TimeUnit.MILLISECONDS);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void closeIdleConnections(long l, TimeUnit timeunit)
    {
        this;
        JVM INSTR monitorenter ;
        assertStillUp();
        if (timeunit != null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        throw new IllegalArgumentException("Time unit must not be null.");
        timeunit;
        this;
        JVM INSTR monitorexit ;
        throw timeunit;
        long l1;
        long l2;
        if (managedConn != null || !uniquePoolEntry.connection.isOpen())
        {
            break MISSING_BLOCK_LABEL_81;
        }
        l1 = System.currentTimeMillis();
        l = timeunit.toMillis(l);
        l2 = lastReleaseTime;
        if (l2 > l1 - l)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        uniquePoolEntry.close();
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        timeunit;
        log.debug("Problem closing idle connection.", timeunit);
          goto _L1
    }

    protected ClientConnectionOperator createConnectionOperator(SchemeRegistry schemeregistry)
    {
        return new DefaultClientConnectionOperator(schemeregistry);
    }

    protected void finalize()
        throws Throwable
    {
        shutdown();
        super.finalize();
        return;
        Exception exception;
        exception;
        super.finalize();
        throw exception;
    }

    public ManagedClientConnection getConnection(HttpRoute httproute, Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        if (httproute != null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        throw new IllegalArgumentException("Route may not be null.");
        httproute;
        this;
        JVM INSTR monitorexit ;
        throw httproute;
        assertStillUp();
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder()).append("Get connection for route ").append(httproute).toString());
        }
        if (managedConn != null)
        {
            throw new IllegalStateException("Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one.");
        }
        boolean flag;
        boolean flag1;
        flag = false;
        flag1 = false;
        closeExpiredConnections();
        if (!uniquePoolEntry.connection.isOpen()) goto _L2; else goto _L1
_L1:
        obj = uniquePoolEntry.tracker;
        if (obj == null) goto _L4; else goto _L3
_L3:
        boolean flag2 = ((RouteTracker) (obj)).toRoute().equals(httproute);
        if (flag2) goto _L5; else goto _L4
_L4:
        flag1 = true;
_L6:
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        flag = true;
        uniquePoolEntry.shutdown();
_L7:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_166;
        }
        uniquePoolEntry = new PoolEntry();
        managedConn = new ConnAdapter(uniquePoolEntry, httproute);
        httproute = managedConn;
        this;
        JVM INSTR monitorexit ;
        return httproute;
_L5:
        flag1 = false;
          goto _L6
_L2:
        flag = true;
          goto _L6
        obj;
        log.debug("Problem shutting down connection.", ((Throwable) (obj)));
          goto _L7
    }

    public SchemeRegistry getSchemeRegistry()
    {
        return schemeRegistry;
    }

    public void releaseConnection(ManagedClientConnection managedclientconnection, long l, TimeUnit timeunit)
    {
        this;
        JVM INSTR monitorenter ;
        assertStillUp();
        if (!(managedclientconnection instanceof ConnAdapter))
        {
            throw new IllegalArgumentException("Connection class mismatch, connection not obtained from this manager.");
        }
        break MISSING_BLOCK_LABEL_28;
        managedclientconnection;
        this;
        JVM INSTR monitorexit ;
        throw managedclientconnection;
        Object obj;
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder()).append("Releasing connection ").append(managedclientconnection).toString());
        }
        managedclientconnection = (ConnAdapter)managedclientconnection;
        obj = ((ConnAdapter) (managedclientconnection)).poolEntry;
        if (obj != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        obj = managedclientconnection.getManager();
        if (obj == null || obj == this)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        throw new IllegalArgumentException("Connection not obtained from this manager.");
        if (managedclientconnection.isOpen() && (alwaysShutDown || !managedclientconnection.isMarkedReusable()))
        {
            if (log.isDebugEnabled())
            {
                log.debug("Released connection open but not reusable.");
            }
            managedclientconnection.shutdown();
        }
        managedclientconnection.detach();
        managedConn = null;
        lastReleaseTime = System.currentTimeMillis();
        if (l <= 0L)
        {
            break MISSING_BLOCK_LABEL_202;
        }
        connectionExpiresTime = timeunit.toMillis(l) + lastReleaseTime;
        continue; /* Loop/switch isn't completed */
        connectionExpiresTime = 0x7fffffffffffffffL;
        continue; /* Loop/switch isn't completed */
        Object obj1;
        obj1;
        if (log.isDebugEnabled())
        {
            log.debug("Exception shutting down released connection.", ((Throwable) (obj1)));
        }
        managedclientconnection.detach();
        managedConn = null;
        lastReleaseTime = System.currentTimeMillis();
        if (l <= 0L)
        {
            break MISSING_BLOCK_LABEL_279;
        }
        connectionExpiresTime = timeunit.toMillis(l) + lastReleaseTime;
        continue; /* Loop/switch isn't completed */
        connectionExpiresTime = 0x7fffffffffffffffL;
        if (true) goto _L1; else goto _L3
_L3:
        obj1;
        managedclientconnection.detach();
        managedConn = null;
        lastReleaseTime = System.currentTimeMillis();
        if (l <= 0L) goto _L5; else goto _L4
_L4:
        connectionExpiresTime = timeunit.toMillis(l) + lastReleaseTime;
_L7:
        throw obj1;
_L5:
        connectionExpiresTime = 0x7fffffffffffffffL;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public final ClientConnectionRequest requestConnection(final HttpRoute route, final Object state)
    {
        return new ClientConnectionRequest() {

            final SingleClientConnManager this$0;
            final HttpRoute val$route;
            final Object val$state;

            public void abortRequest()
            {
            }

            public ManagedClientConnection getConnection(long l, TimeUnit timeunit)
            {
                return SingleClientConnManager.this.getConnection(route, state);
            }

            
            {
                this$0 = SingleClientConnManager.this;
                route = httproute;
                state = obj;
                super();
            }
        };
    }

    protected void revokeConnection()
    {
        this;
        JVM INSTR monitorenter ;
        ConnAdapter connadapter = managedConn;
        if (connadapter != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        managedConn.detach();
        uniquePoolEntry.shutdown();
        continue; /* Loop/switch isn't completed */
        Object obj;
        obj;
        log.debug("Problem while shutting down connection.", ((Throwable) (obj)));
        if (true) goto _L1; else goto _L3
_L3:
        obj;
        throw obj;
    }

    public void shutdown()
    {
        this;
        JVM INSTR monitorenter ;
        isShutDown = true;
        if (managedConn != null)
        {
            managedConn.detach();
        }
        if (uniquePoolEntry != null)
        {
            uniquePoolEntry.shutdown();
        }
        uniquePoolEntry = null;
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        Object obj;
        obj;
        log.debug("Problem while shutting down manager.", ((Throwable) (obj)));
        uniquePoolEntry = null;
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        throw obj;
        obj;
        uniquePoolEntry = null;
        throw obj;
    }
}
