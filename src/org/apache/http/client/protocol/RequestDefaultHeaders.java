// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.client.protocol;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.RequestLine;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

public class RequestDefaultHeaders
    implements HttpRequestInterceptor
{

    public RequestDefaultHeaders()
    {
    }

    public void process(HttpRequest httprequest, HttpContext httpcontext)
        throws HttpException, IOException
    {
        if (httprequest == null)
        {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        if (!httprequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT")) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if ((httpcontext = (Collection)httprequest.getParams().getParameter("http.default-headers")) != null)
        {
            httpcontext = httpcontext.iterator();
            while (httpcontext.hasNext()) 
            {
                httprequest.addHeader((Header)httpcontext.next());
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }
}
