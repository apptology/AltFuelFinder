// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.conn;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetAddress;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.protocol.HttpContext;

// Referenced classes of package org.apache.http.impl.conn:
//            ConnectionShutdownException

public abstract class AbstractClientConnAdapter
    implements ManagedClientConnection, HttpContext
{

    private volatile ClientConnectionManager connManager;
    private volatile long duration;
    private volatile boolean markedReusable;
    private volatile boolean released;
    private volatile OperatedClientConnection wrappedConnection;

    protected AbstractClientConnAdapter(ClientConnectionManager clientconnectionmanager, OperatedClientConnection operatedclientconnection)
    {
        connManager = clientconnectionmanager;
        wrappedConnection = operatedclientconnection;
        markedReusable = false;
        released = false;
        duration = 0x7fffffffffffffffL;
    }

    public void abortConnection()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = released;
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        released = true;
        unmarkReusable();
        Exception exception;
        try
        {
            shutdown();
        }
        catch (IOException ioexception) { }
        if (connManager != null)
        {
            connManager.releaseConnection(this, duration, TimeUnit.MILLISECONDS);
        }
        if (true) goto _L1; else goto _L3
_L3:
        exception;
        throw exception;
    }

    protected final void assertNotAborted()
        throws InterruptedIOException
    {
        if (isReleased())
        {
            throw new InterruptedIOException("Connection has been shut down");
        } else
        {
            return;
        }
    }

    protected final void assertValid(OperatedClientConnection operatedclientconnection)
        throws ConnectionShutdownException
    {
        if (isReleased() || operatedclientconnection == null)
        {
            throw new ConnectionShutdownException();
        } else
        {
            return;
        }
    }

    protected void detach()
    {
        this;
        JVM INSTR monitorenter ;
        wrappedConnection = null;
        connManager = null;
        duration = 0x7fffffffffffffffL;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void flush()
        throws IOException
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        operatedclientconnection.flush();
    }

    public Object getAttribute(String s)
    {
        this;
        JVM INSTR monitorenter ;
        OperatedClientConnection operatedclientconnection;
        operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        if (!(operatedclientconnection instanceof HttpContext)) goto _L2; else goto _L1
_L1:
        s = ((String) (((HttpContext)operatedclientconnection).getAttribute(s)));
_L4:
        this;
        JVM INSTR monitorexit ;
        return s;
_L2:
        s = null;
        if (true) goto _L4; else goto _L3
_L3:
        s;
        throw s;
    }

    public InetAddress getLocalAddress()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        return operatedclientconnection.getLocalAddress();
    }

    public int getLocalPort()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        return operatedclientconnection.getLocalPort();
    }

    protected ClientConnectionManager getManager()
    {
        return connManager;
    }

    public HttpConnectionMetrics getMetrics()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        return operatedclientconnection.getMetrics();
    }

    public InetAddress getRemoteAddress()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        return operatedclientconnection.getRemoteAddress();
    }

    public int getRemotePort()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        return operatedclientconnection.getRemotePort();
    }

    public SSLSession getSSLSession()
    {
        Object obj = getWrappedConnection();
        assertValid(((OperatedClientConnection) (obj)));
        if (isOpen())
        {
            if ((obj = ((OperatedClientConnection) (obj)).getSocket()) instanceof SSLSocket)
            {
                return ((SSLSocket)obj).getSession();
            }
        }
        return null;
    }

    public int getSocketTimeout()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        return operatedclientconnection.getSocketTimeout();
    }

    protected OperatedClientConnection getWrappedConnection()
    {
        return wrappedConnection;
    }

    public boolean isMarkedReusable()
    {
        return markedReusable;
    }

    public boolean isOpen()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        if (operatedclientconnection == null)
        {
            return false;
        } else
        {
            return operatedclientconnection.isOpen();
        }
    }

    protected boolean isReleased()
    {
        return released;
    }

    public boolean isResponseAvailable(int i)
        throws IOException
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        return operatedclientconnection.isResponseAvailable(i);
    }

    public boolean isSecure()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        return operatedclientconnection.isSecure();
    }

    public boolean isStale()
    {
        OperatedClientConnection operatedclientconnection;
        if (!isReleased())
        {
            if ((operatedclientconnection = getWrappedConnection()) != null)
            {
                return operatedclientconnection.isStale();
            }
        }
        return true;
    }

    public void markReusable()
    {
        markedReusable = true;
    }

    public void receiveResponseEntity(HttpResponse httpresponse)
        throws HttpException, IOException
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        unmarkReusable();
        operatedclientconnection.receiveResponseEntity(httpresponse);
    }

    public HttpResponse receiveResponseHeader()
        throws HttpException, IOException
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        unmarkReusable();
        return operatedclientconnection.receiveResponseHeader();
    }

    public void releaseConnection()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = released;
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        released = true;
        if (connManager != null)
        {
            connManager.releaseConnection(this, duration, TimeUnit.MILLISECONDS);
        }
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public Object removeAttribute(String s)
    {
        this;
        JVM INSTR monitorenter ;
        OperatedClientConnection operatedclientconnection;
        operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        if (!(operatedclientconnection instanceof HttpContext)) goto _L2; else goto _L1
_L1:
        s = ((String) (((HttpContext)operatedclientconnection).removeAttribute(s)));
_L4:
        this;
        JVM INSTR monitorexit ;
        return s;
_L2:
        s = null;
        if (true) goto _L4; else goto _L3
_L3:
        s;
        throw s;
    }

    public void sendRequestEntity(HttpEntityEnclosingRequest httpentityenclosingrequest)
        throws HttpException, IOException
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        unmarkReusable();
        operatedclientconnection.sendRequestEntity(httpentityenclosingrequest);
    }

    public void sendRequestHeader(HttpRequest httprequest)
        throws HttpException, IOException
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        unmarkReusable();
        operatedclientconnection.sendRequestHeader(httprequest);
    }

    public void setAttribute(String s, Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        if (operatedclientconnection instanceof HttpContext)
        {
            ((HttpContext)operatedclientconnection).setAttribute(s, obj);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public void setIdleDuration(long l, TimeUnit timeunit)
    {
        if (l > 0L)
        {
            duration = timeunit.toMillis(l);
            return;
        } else
        {
            duration = -1L;
            return;
        }
    }

    public void setSocketTimeout(int i)
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        operatedclientconnection.setSocketTimeout(i);
    }

    public void unmarkReusable()
    {
        markedReusable = false;
    }
}
