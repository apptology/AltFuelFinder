// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.client;

import java.net.URI;
import java.net.URISyntaxException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.client.CircularRedirectException;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

// Referenced classes of package org.apache.http.impl.client:
//            RedirectLocations

public class DefaultRedirectHandler
    implements RedirectHandler
{

    private static final String REDIRECT_LOCATIONS = "http.protocol.redirect-locations";
    private final Log log = LogFactory.getLog(getClass());

    public DefaultRedirectHandler()
    {
    }

    public URI getLocationURI(HttpResponse httpresponse, HttpContext httpcontext)
        throws ProtocolException
    {
        if (httpresponse == null)
        {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        Object obj = httpresponse.getFirstHeader("location");
        if (obj == null)
        {
            throw new ProtocolException((new StringBuilder()).append("Received redirect response ").append(httpresponse.getStatusLine()).append(" but no location header").toString());
        }
        Object obj1 = ((Header) (obj)).getValue();
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder()).append("Redirect requested to location '").append(((String) (obj1))).append("'").toString());
        }
        try
        {
            obj = new URI(((String) (obj1)));
        }
        // Misplaced declaration of an exception variable
        catch (HttpResponse httpresponse)
        {
            throw new ProtocolException((new StringBuilder()).append("Invalid redirect URI: ").append(((String) (obj1))).toString(), httpresponse);
        }
        obj1 = httpresponse.getParams();
        httpresponse = ((HttpResponse) (obj));
        if (!((URI) (obj)).isAbsolute())
        {
            if (((HttpParams) (obj1)).isParameterTrue("http.protocol.reject-relative-redirect"))
            {
                throw new ProtocolException((new StringBuilder()).append("Relative redirect location '").append(obj).append("' not allowed").toString());
            }
            httpresponse = (HttpHost)httpcontext.getAttribute("http.target_host");
            if (httpresponse == null)
            {
                throw new IllegalStateException("Target host not available in the HTTP context");
            }
            HttpRequest httprequest = (HttpRequest)httpcontext.getAttribute("http.request");
            try
            {
                httpresponse = URIUtils.resolve(URIUtils.rewriteURI(new URI(httprequest.getRequestLine().getUri()), httpresponse, true), ((URI) (obj)));
            }
            // Misplaced declaration of an exception variable
            catch (HttpResponse httpresponse)
            {
                throw new ProtocolException(httpresponse.getMessage(), httpresponse);
            }
        }
        if (((HttpParams) (obj1)).isParameterFalse("http.protocol.allow-circular-redirects"))
        {
            obj1 = (RedirectLocations)httpcontext.getAttribute("http.protocol.redirect-locations");
            RedirectLocations redirectlocations = ((RedirectLocations) (obj1));
            if (obj1 == null)
            {
                redirectlocations = new RedirectLocations();
                httpcontext.setAttribute("http.protocol.redirect-locations", redirectlocations);
            }
            if (httpresponse.getFragment() != null)
            {
                try
                {
                    httpcontext = URIUtils.rewriteURI(httpresponse, new HttpHost(httpresponse.getHost(), httpresponse.getPort(), httpresponse.getScheme()), true);
                }
                // Misplaced declaration of an exception variable
                catch (HttpResponse httpresponse)
                {
                    throw new ProtocolException(httpresponse.getMessage(), httpresponse);
                }
            } else
            {
                httpcontext = httpresponse;
            }
            if (redirectlocations.contains(httpcontext))
            {
                throw new CircularRedirectException((new StringBuilder()).append("Circular redirect to '").append(httpcontext).append("'").toString());
            }
            redirectlocations.add(httpcontext);
        }
        return httpresponse;
    }

    public boolean isRedirectRequested(HttpResponse httpresponse, HttpContext httpcontext)
    {
        if (httpresponse == null)
        {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        httpresponse.getStatusLine().getStatusCode();
        JVM INSTR tableswitch 301 307: default 68
    //                   301 70
    //                   302 70
    //                   303 112
    //                   304 68
    //                   305 68
    //                   306 68
    //                   307 70;
           goto _L1 _L2 _L2 _L3 _L1 _L1 _L1 _L2
_L1:
        return false;
_L2:
        if ((httpresponse = ((HttpRequest)httpcontext.getAttribute("http.request")).getRequestLine().getMethod()).equalsIgnoreCase("GET") || httpresponse.equalsIgnoreCase("HEAD"))
        {
            return true;
        }
          goto _L1
_L3:
        return true;
    }
}
