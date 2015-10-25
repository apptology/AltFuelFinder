// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.client.methods;

import java.io.IOException;
import java.net.URI;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.client.utils.CloneUtils;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ConnectionReleaseTrigger;
import org.apache.http.message.AbstractHttpMessage;
import org.apache.http.message.BasicRequestLine;
import org.apache.http.message.HeaderGroup;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

// Referenced classes of package org.apache.http.client.methods:
//            HttpUriRequest, AbortableHttpRequest

public abstract class HttpRequestBase extends AbstractHttpMessage
    implements HttpUriRequest, AbortableHttpRequest, Cloneable
{

    private Lock abortLock;
    private boolean aborted;
    private ClientConnectionRequest connRequest;
    private ConnectionReleaseTrigger releaseTrigger;
    private URI uri;

    public HttpRequestBase()
    {
        abortLock = new ReentrantLock();
    }

    public void abort()
    {
        abortLock.lock();
        boolean flag = aborted;
        if (!flag) goto _L2; else goto _L1
_L1:
        abortLock.unlock();
_L4:
        return;
_L2:
        ClientConnectionRequest clientconnectionrequest;
        ConnectionReleaseTrigger connectionreleasetrigger;
        aborted = true;
        clientconnectionrequest = connRequest;
        connectionreleasetrigger = releaseTrigger;
        abortLock.unlock();
        if (clientconnectionrequest != null)
        {
            clientconnectionrequest.abortRequest();
        }
        if (connectionreleasetrigger == null) goto _L4; else goto _L3
_L3:
        try
        {
            connectionreleasetrigger.abortConnection();
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
        Exception exception;
        exception;
        abortLock.unlock();
        throw exception;
    }

    public Object clone()
        throws CloneNotSupportedException
    {
        HttpRequestBase httprequestbase = (HttpRequestBase)super.clone();
        httprequestbase.abortLock = new ReentrantLock();
        httprequestbase.aborted = false;
        httprequestbase.releaseTrigger = null;
        httprequestbase.connRequest = null;
        httprequestbase.headergroup = (HeaderGroup)CloneUtils.clone(headergroup);
        httprequestbase.params = (HttpParams)CloneUtils.clone(params);
        return httprequestbase;
    }

    public abstract String getMethod();

    public ProtocolVersion getProtocolVersion()
    {
        return HttpProtocolParams.getVersion(getParams());
    }

    public RequestLine getRequestLine()
    {
        Object obj;
        String s1;
        ProtocolVersion protocolversion;
label0:
        {
            s1 = getMethod();
            protocolversion = getProtocolVersion();
            obj = getURI();
            String s = null;
            if (obj != null)
            {
                s = ((URI) (obj)).toASCIIString();
            }
            if (s != null)
            {
                obj = s;
                if (s.length() != 0)
                {
                    break label0;
                }
            }
            obj = "/";
        }
        return new BasicRequestLine(s1, ((String) (obj)), protocolversion);
    }

    public URI getURI()
    {
        return uri;
    }

    public boolean isAborted()
    {
        return aborted;
    }

    public void setConnectionRequest(ClientConnectionRequest clientconnectionrequest)
        throws IOException
    {
        abortLock.lock();
        if (aborted)
        {
            throw new IOException("Request already aborted");
        }
        break MISSING_BLOCK_LABEL_38;
        clientconnectionrequest;
        abortLock.unlock();
        throw clientconnectionrequest;
        releaseTrigger = null;
        connRequest = clientconnectionrequest;
        abortLock.unlock();
        return;
    }

    public void setReleaseTrigger(ConnectionReleaseTrigger connectionreleasetrigger)
        throws IOException
    {
        abortLock.lock();
        if (aborted)
        {
            throw new IOException("Request already aborted");
        }
        break MISSING_BLOCK_LABEL_38;
        connectionreleasetrigger;
        abortLock.unlock();
        throw connectionreleasetrigger;
        connRequest = null;
        releaseTrigger = connectionreleasetrigger;
        abortLock.unlock();
        return;
    }

    public void setURI(URI uri1)
    {
        uri = uri1;
    }
}
