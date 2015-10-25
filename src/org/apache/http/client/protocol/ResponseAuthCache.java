// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.client.protocol;

import java.io.IOException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthState;
import org.apache.http.client.AuthCache;
import org.apache.http.impl.client.BasicAuthCache;
import org.apache.http.protocol.HttpContext;

public class ResponseAuthCache
    implements HttpResponseInterceptor
{

    private final Log log = LogFactory.getLog(getClass());

    public ResponseAuthCache()
    {
    }

    private void cache(AuthCache authcache, HttpHost httphost, AuthState authstate)
    {
label0:
        {
            AuthScheme authscheme = authstate.getAuthScheme();
            if (authstate.getAuthScope() != null)
            {
                if (authstate.getCredentials() == null)
                {
                    break label0;
                }
                if (log.isDebugEnabled())
                {
                    log.debug((new StringBuilder()).append("Caching '").append(authscheme.getSchemeName()).append("' auth scheme for ").append(httphost).toString());
                }
                authcache.put(httphost, authscheme);
            }
            return;
        }
        authcache.remove(httphost);
    }

    private boolean isCachable(AuthState authstate)
    {
        authstate = authstate.getAuthScheme();
        if (authstate != null && authstate.isComplete())
        {
            if ((authstate = authstate.getSchemeName()).equalsIgnoreCase("Basic") || authstate.equalsIgnoreCase("Digest"))
            {
                return true;
            }
        }
        return false;
    }

    public void process(HttpResponse httpresponse, HttpContext httpcontext)
        throws HttpException, IOException
    {
        if (httpresponse == null)
        {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        if (httpcontext == null)
        {
            throw new IllegalArgumentException("HTTP context may not be null");
        }
        AuthCache authcache = (AuthCache)httpcontext.getAttribute("http.auth.auth-cache");
        HttpHost httphost = (HttpHost)httpcontext.getAttribute("http.target_host");
        AuthState authstate = (AuthState)httpcontext.getAttribute("http.auth.target-scope");
        httpresponse = authcache;
        if (httphost != null)
        {
            httpresponse = authcache;
            if (authstate != null)
            {
                httpresponse = authcache;
                if (isCachable(authstate))
                {
                    httpresponse = authcache;
                    if (authcache == null)
                    {
                        httpresponse = new BasicAuthCache();
                        httpcontext.setAttribute("http.auth.auth-cache", httpresponse);
                    }
                    cache(httpresponse, httphost, authstate);
                }
            }
        }
        httphost = (HttpHost)httpcontext.getAttribute("http.proxy_host");
        authstate = (AuthState)httpcontext.getAttribute("http.auth.proxy-scope");
        if (httphost != null && authstate != null && isCachable(authstate))
        {
            Object obj = httpresponse;
            if (httpresponse == null)
            {
                obj = new BasicAuthCache();
                httpcontext.setAttribute("http.auth.auth-cache", obj);
            }
            cache(((AuthCache) (obj)), httphost, authstate);
        }
    }
}
