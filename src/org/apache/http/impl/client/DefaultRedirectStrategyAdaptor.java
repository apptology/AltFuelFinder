// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.client;

import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.RequestLine;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

class DefaultRedirectStrategyAdaptor
    implements RedirectStrategy
{

    private final RedirectHandler handler;

    public DefaultRedirectStrategyAdaptor(RedirectHandler redirecthandler)
    {
        handler = redirecthandler;
    }

    public HttpUriRequest getRedirect(HttpRequest httprequest, HttpResponse httpresponse, HttpContext httpcontext)
        throws ProtocolException
    {
        httpresponse = handler.getLocationURI(httpresponse, httpcontext);
        if (httprequest.getRequestLine().getMethod().equalsIgnoreCase("HEAD"))
        {
            return new HttpHead(httpresponse);
        } else
        {
            return new HttpGet(httpresponse);
        }
    }

    public boolean isRedirected(HttpRequest httprequest, HttpResponse httpresponse, HttpContext httpcontext)
        throws ProtocolException
    {
        return handler.isRedirectRequested(httpresponse, httpcontext);
    }
}
