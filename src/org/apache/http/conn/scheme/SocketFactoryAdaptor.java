// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.conn.scheme;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;

// Referenced classes of package org.apache.http.conn.scheme:
//            SocketFactory, SchemeSocketFactory

class SocketFactoryAdaptor
    implements SocketFactory
{

    private final SchemeSocketFactory factory;

    SocketFactoryAdaptor(SchemeSocketFactory schemesocketfactory)
    {
        factory = schemesocketfactory;
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
        s = new InetSocketAddress(InetAddress.getByName(s), i);
        return factory.connectSocket(socket, s, inetsocketaddress, httpparams);
    }

    public Socket createSocket()
        throws IOException
    {
        BasicHttpParams basichttpparams = new BasicHttpParams();
        return factory.createSocket(basichttpparams);
    }

    public boolean equals(Object obj)
    {
        if (obj == null)
        {
            return false;
        }
        if (this == obj)
        {
            return true;
        }
        if (obj instanceof SocketFactoryAdaptor)
        {
            return factory.equals(((SocketFactoryAdaptor)obj).factory);
        } else
        {
            return factory.equals(obj);
        }
    }

    public SchemeSocketFactory getFactory()
    {
        return factory;
    }

    public int hashCode()
    {
        return factory.hashCode();
    }

    public boolean isSecure(Socket socket)
        throws IllegalArgumentException
    {
        return factory.isSecure(socket);
    }
}
