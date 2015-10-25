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
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthState;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ContextAwareAuthScheme;
import org.apache.http.conn.HttpRoutedConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.protocol.HttpContext;

public class RequestProxyAuthentication
    implements HttpRequestInterceptor
{

    private final Log log = LogFactory.getLog(getClass());

    public RequestProxyAuthentication()
    {
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
        if (!httprequest.containsHeader("Proxy-Authorization")) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Object obj;
        obj = (HttpRoutedConnection)httpcontext.getAttribute("http.connection");
        if (obj == null)
        {
            log.debug("HTTP connection not set in the context");
            return;
        }
        if (((HttpRoutedConnection) (obj)).getRoute().isTunnelled()) goto _L1; else goto _L3
_L3:
        AuthScheme authscheme;
        obj = (AuthState)httpcontext.getAttribute("http.auth.proxy-scope");
        if (obj == null)
        {
            log.debug("Proxy auth state not set in the context");
            return;
        }
        authscheme = ((AuthState) (obj)).getAuthScheme();
        if (authscheme == null) goto _L1; else goto _L4
_L4:
        org.apache.http.auth.Credentials credentials;
        credentials = ((AuthState) (obj)).getCredentials();
        if (credentials == null)
        {
            log.debug("User credentials not available");
            return;
        }
        if (((AuthState) (obj)).getAuthScope() == null && authscheme.isConnectionBased()) goto _L1; else goto _L5
_L5:
        if (!(authscheme instanceof ContextAwareAuthScheme))
        {
            break MISSING_BLOCK_LABEL_235;
        }
        httpcontext = ((ContextAwareAuthScheme)authscheme).authenticate(credentials, httprequest, httpcontext);
_L7:
        httprequest.addHeader(httpcontext);
        return;
        httprequest;
        if (!log.isErrorEnabled()) goto _L1; else goto _L6
_L6:
        log.error((new StringBuilder()).append("Proxy authentication error: ").append(httprequest.getMessage()).toString());
        return;
        httpcontext = authscheme.authenticate(credentials, httprequest);
          goto _L7
    }
}
