// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.client.protocol;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.protocol.HttpContext;

public class ResponseProcessCookies
    implements HttpResponseInterceptor
{

    private final Log log = LogFactory.getLog(getClass());

    public ResponseProcessCookies()
    {
    }

    private void processCookies(HeaderIterator headeriterator, CookieSpec cookiespec, CookieOrigin cookieorigin, CookieStore cookiestore)
    {
_L4:
        org.apache.http.Header header;
        if (!headeriterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        header = headeriterator.nextHeader();
        Iterator iterator = cookiespec.parse(header, cookieorigin).iterator();
_L1:
        Cookie cookie;
        if (!iterator.hasNext())
        {
            continue; /* Loop/switch isn't completed */
        }
        cookie = (Cookie)iterator.next();
        cookiespec.validate(cookie, cookieorigin);
        cookiestore.addCookie(cookie);
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder()).append("Cookie accepted: \"").append(cookie).append("\". ").toString());
        }
          goto _L1
        MalformedCookieException malformedcookieexception1;
        malformedcookieexception1;
        if (!log.isWarnEnabled()) goto _L1; else goto _L2
_L2:
        log.warn((new StringBuilder()).append("Cookie rejected: \"").append(cookie).append("\". ").append(malformedcookieexception1.getMessage()).toString());
          goto _L1
        MalformedCookieException malformedcookieexception;
        malformedcookieexception;
        if (log.isWarnEnabled())
        {
            log.warn((new StringBuilder()).append("Invalid cookie header: \"").append(header).append("\". ").append(malformedcookieexception.getMessage()).toString());
        }
        if (true) goto _L4; else goto _L3
_L3:
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
        CookieSpec cookiespec = (CookieSpec)httpcontext.getAttribute("http.cookie-spec");
        if (cookiespec == null)
        {
            log.debug("Cookie spec not specified in HTTP context");
        } else
        {
            CookieStore cookiestore = (CookieStore)httpcontext.getAttribute("http.cookie-store");
            if (cookiestore == null)
            {
                log.debug("Cookie store not specified in HTTP context");
                return;
            }
            httpcontext = (CookieOrigin)httpcontext.getAttribute("http.cookie-origin");
            if (httpcontext == null)
            {
                log.debug("Cookie origin not specified in HTTP context");
                return;
            }
            processCookies(httpresponse.headerIterator("Set-Cookie"), cookiespec, httpcontext, cookiestore);
            if (cookiespec.getVersion() > 0)
            {
                processCookies(httpresponse.headerIterator("Set-Cookie2"), cookiespec, httpcontext, cookiestore);
                return;
            }
        }
    }
}
