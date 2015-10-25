// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.client.protocol;

import java.io.IOException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.RequestLine;
import org.apache.http.conn.HttpRoutedConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.protocol.HttpContext;

public class RequestClientConnControl
    implements HttpRequestInterceptor
{

    private static final String PROXY_CONN_DIRECTIVE = "Proxy-Connection";
    private final Log log = LogFactory.getLog(getClass());

    public RequestClientConnControl()
    {
    }

    public void process(HttpRequest httprequest, HttpContext httpcontext)
        throws HttpException, IOException
    {
        if (httprequest == null)
        {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        if (httprequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT"))
        {
            httprequest.setHeader("Proxy-Connection", "Keep-Alive");
        } else
        {
            httpcontext = (HttpRoutedConnection)httpcontext.getAttribute("http.connection");
            if (httpcontext == null)
            {
                log.debug("HTTP connection not set in the context");
                return;
            }
            httpcontext = httpcontext.getRoute();
            if ((httpcontext.getHopCount() == 1 || httpcontext.isTunnelled()) && !httprequest.containsHeader("Connection"))
            {
                httprequest.addHeader("Connection", "Keep-Alive");
            }
            if (httpcontext.getHopCount() == 2 && !httpcontext.isTunnelled() && !httprequest.containsHeader("Proxy-Connection"))
            {
                httprequest.addHeader("Proxy-Connection", "Keep-Alive");
                return;
            }
        }
    }
}
