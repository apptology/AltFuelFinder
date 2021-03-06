// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.client.protocol;

import java.io.IOException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.AuthState;
import org.apache.http.client.AuthCache;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.protocol.HttpContext;

public class RequestAuthCache
    implements HttpRequestInterceptor
{

    private final Log log = LogFactory.getLog(getClass());

    public RequestAuthCache()
    {
    }

    private void doPreemptiveAuth(HttpHost httphost, AuthScheme authscheme, AuthState authstate, CredentialsProvider credentialsprovider)
    {
        String s = authscheme.getSchemeName();
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder()).append("Re-using cached '").append(s).append("' auth scheme for ").append(httphost).toString());
        }
        httphost = credentialsprovider.getCredentials(new AuthScope(httphost.getHostName(), httphost.getPort(), AuthScope.ANY_REALM, s));
        if (httphost != null)
        {
            authstate.setAuthScheme(authscheme);
            authstate.setCredentials(httphost);
            return;
        } else
        {
            log.debug("No credentials for preemptive authentication");
            return;
        }
    }

    public void process(HttpRequest httprequest, HttpContext httpcontext)
        throws HttpException, IOException
    {
        if (httprequest == null)
        {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        if (httpcontext == null)
        {
            throw new IllegalArgumentException("HTTP context may not be null");
        }
        Object obj = (AuthCache)httpcontext.getAttribute("http.auth.auth-cache");
        if (obj == null)
        {
            log.debug("Auth cache not set in the context");
        } else
        {
            httprequest = (CredentialsProvider)httpcontext.getAttribute("http.auth.credentials-provider");
            if (httprequest == null)
            {
                log.debug("Credentials provider not set in the context");
                return;
            }
            HttpHost httphost = (HttpHost)httpcontext.getAttribute("http.target_host");
            AuthState authstate = (AuthState)httpcontext.getAttribute("http.auth.target-scope");
            if (httphost != null && authstate != null && authstate.getAuthScheme() == null)
            {
                AuthScheme authscheme = ((AuthCache) (obj)).get(httphost);
                if (authscheme != null)
                {
                    doPreemptiveAuth(httphost, authscheme, authstate, httprequest);
                }
            }
            httphost = (HttpHost)httpcontext.getAttribute("http.proxy_host");
            httpcontext = (AuthState)httpcontext.getAttribute("http.auth.proxy-scope");
            if (httphost != null && httpcontext != null && httpcontext.getAuthScheme() == null)
            {
                obj = ((AuthCache) (obj)).get(httphost);
                if (obj != null)
                {
                    doPreemptiveAuth(httphost, ((AuthScheme) (obj)), httpcontext, httprequest);
                    return;
                }
            }
        }
    }
}
