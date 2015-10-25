// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.conn.scheme;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

// Referenced classes of package org.apache.http.conn.scheme:
//            SocketFactory, SchemeSocketFactory, HostNameResolver

public class PlainSocketFactory
    implements SocketFactory, SchemeSocketFactory
{

    private final HostNameResolver nameResolver;

    public PlainSocketFactory()
    {
        nameResolver = null;
    }

    public PlainSocketFactory(HostNameResolver hostnameresolver)
    {
        nameResolver = hostnameresolver;
    }

    public static PlainSocketFactory getSocketFactory()
    {
        return new PlainSocketFactory();
    }

    public Socket connectSocket(Socket socket, String s, int i, InetAddress inetaddress, int j, HttpParams httpparams)
        throws IOException, UnknownHostException, ConnectTimeoutException
    {
        InetSocketAddress inetsocketaddress = null;
        if (inetaddress != null || j > 0)
        {
            int k = j;
            if (j < 0)
            {
                k = 0;
            }
            inetsocketaddress = new InetSocketAddress(inetaddress, k);
        }
        if (nameResolver != null)
        {
            s = nameResolver.resolve(s);
        } else
        {
            s = InetAddress.getByName(s);
        }
        return connectSocket(socket, new InetSocketAddress(s, i), inetsocketaddress, httpparams);
    }

    public Socket connectSocket(Socket socket, InetSocketAddress inetsocketaddress, InetSocketAddress inetsocketaddress1, HttpParams httpparams)
        throws IOException, ConnectTimeoutException
    {
        if (inetsocketaddress == null)
        {
            throw new IllegalArgumentException("Remote address may not be null");
        }
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        }
        Socket socket1 = socket;
        if (socket == null)
        {
            socket1 = createSocket();
        }
        if (inetsocketaddress1 != null)
        {
            socket1.setReuseAddress(HttpConnectionParams.getSoReuseaddr(httpparams));
            socket1.bind(inetsocketaddress1);
        }
        int i = HttpConnectionParams.getConnectionTimeout(httpparams);
        int j = HttpConnectionParams.getSoTimeout(httpparams);
        try
        {
            socket1.setSoTimeout(j);
            socket1.connect(inetsocketaddress, i);
        }
        // Misplaced declaration of an exception variable
        catch (Socket socket)
        {
            throw new ConnectTimeoutException((new StringBuilder()).append("Connect to ").append(inetsocketaddress).append(" timed out").toString());
        }
        return socket1;
    }

    public Socket createSocket()
    {
        return new Socket();
    }

    public Socket createSocket(HttpParams httpparams)
    {
        return new Socket();
    }

    public final boolean isSecure(Socket socket)
        throws IllegalArgumentException
    {
        if (socket == null)
        {
            throw new IllegalArgumentException("Socket may not be null.");
        }
        if (socket.isClosed())
        {
            throw new IllegalArgumentException("Socket is closed.");
        } else
        {
            return false;
        }
    }
}
