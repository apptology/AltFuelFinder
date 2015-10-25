// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.conn.scheme;

import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;

// Referenced classes of package org.apache.http.conn.scheme:
//            SchemeSocketFactoryAdaptor, LayeredSchemeSocketFactory, LayeredSocketFactory

class LayeredSchemeSocketFactoryAdaptor extends SchemeSocketFactoryAdaptor
    implements LayeredSchemeSocketFactory
{

    private final LayeredSocketFactory factory;

    LayeredSchemeSocketFactoryAdaptor(LayeredSocketFactory layeredsocketfactory)
    {
        super(layeredsocketfactory);
        factory = layeredsocketfactory;
    }

    public Socket createLayeredSocket(Socket socket, String s, int i, boolean flag)
        throws IOException, UnknownHostException
    {
        return factory.createSocket(socket, s, i, flag);
    }
}
