// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.conn;

import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.conn.params.ConnRouteParams;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.protocol.HttpContext;

public class DefaultHttpRoutePlanner
    implements HttpRoutePlanner
{

    protected final SchemeRegistry schemeRegistry;

    public DefaultHttpRoutePlanner(SchemeRegistry schemeregistry)
    {
        if (schemeregistry == null)
        {
            throw new IllegalArgumentException("SchemeRegistry must not be null.");
        } else
        {
            schemeRegistry = schemeregistry;
            return;
        }
    }

    public HttpRoute determineRoute(HttpHost httphost, HttpRequest httprequest, HttpContext httpcontext)
        throws HttpException
    {
        if (httprequest == null)
        {
            throw new IllegalStateException("Request must not be null.");
        }
        httpcontext = ConnRouteParams.getForcedRoute(httprequest.getParams());
        if (httpcontext != null)
        {
            return httpcontext;
        }
        if (httphost == null)
        {
            throw new IllegalStateException("Target host must not be null.");
        }
        httpcontext = ConnRouteParams.getLocalAddress(httprequest.getParams());
        httprequest = ConnRouteParams.getDefaultProxy(httprequest.getParams());
        Scheme scheme;
        boolean flag;
        try
        {
            scheme = schemeRegistry.getScheme(httphost.getSchemeName());
        }
        // Misplaced declaration of an exception variable
        catch (HttpHost httphost)
        {
            throw new HttpException(httphost.getMessage());
        }
        flag = scheme.isLayered();
        if (httprequest == null)
        {
            httphost = new HttpRoute(httphost, httpcontext, flag);
        } else
        {
            httphost = new HttpRoute(httphost, httpcontext, httprequest, flag);
        }
        return httphost;
    }
}
