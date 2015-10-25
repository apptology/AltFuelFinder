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
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

// Referenced classes of package org.apache.http.impl.client:
//            RedirectLocations

public class DefaultRedirectStrategy
    implements RedirectStrategy
{

    public static final String REDIRECT_LOCATIONS = "http.protocol.redirect-locations";
    private final Log log = LogFactory.getLog(getClass());

    public DefaultRedirectStrategy()
    {
    }

    protected URI createLocationURI(String s)
        throws ProtocolException
    {
        URI uri;
        try
        {
            uri = new URI(s);
        }
        catch (URISyntaxException urisyntaxexception)
        {
            throw new ProtocolException((new StringBuilder()).append("Invalid redirect URI: ").append(s).toString(), urisyntaxexception);
        }
        return uri;
    }

    public URI getLocationURI(HttpRequest httprequest, HttpResponse httpresponse, HttpContext httpcontext)
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
        obj = ((Header) (obj)).getValue();
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder()).append("Redirect requested to location '").append(((String) (obj))).append("'").toString());
        }
        obj = createLocationURI(((String) (obj)));
        HttpParams httpparams = httpresponse.getParams();
        httpresponse = ((HttpResponse) (obj));
        if (!((URI) (obj)).isAbsolute())
        {
            if (httpparams.isParameterTrue("http.protocol.reject-relative-redirect"))
            {
                throw new ProtocolException((new StringBuilder()).append("Relative redirect location '").append(obj).append("' not allowed").toString());
            }
            httpresponse = (HttpHost)httpcontext.getAttribute("http.target_host");
            if (httpresponse == null)
            {
                throw new IllegalStateException("Target host not available in the HTTP context");
            }
            try
            {
                httpresponse = URIUtils.resolve(URIUtils.rewriteURI(new URI(httprequest.getRequestLine().getUri()), httpresponse, true), ((URI) (obj)));
            }
            // Misplaced declaration of an exception variable
            catch (HttpRequest httprequest)
            {
                throw new ProtocolException(httprequest.getMessage(), httprequest);
            }
        }
        if (httpparams.isParameterFalse("http.protocol.allow-circular-redirects"))
        {
            obj = (RedirectLocations)httpcontext.getAttribute("http.protocol.redirect-locations");
            httprequest = ((HttpRequest) (obj));
            if (obj == null)
            {
                httprequest = new RedirectLocations();
                httpcontext.setAttribute("http.protocol.redirect-locations", httprequest);
            }
            if (httpresponse.getFragment() != null)
            {
                try
                {
                    httpcontext = URIUtils.rewriteURI(httpresponse, new HttpHost(httpresponse.getHost(), httpresponse.getPort(), httpresponse.getScheme()), true);
                }
                // Misplaced declaration of an exception variable
                catch (HttpRequest httprequest)
                {
                    throw new ProtocolException(httprequest.getMessage(), httprequest);
                }
            } else
            {
                httpcontext = httpresponse;
            }
            if (httprequest.contains(httpcontext))
            {
                throw new CircularRedirectException((new StringBuilder()).append("Circular redirect to '").append(httpcontext).append("'").toString());
            }
            httprequest.add(httpcontext);
        }
        return httpresponse;
    }

    public HttpUriRequest getRedirect(HttpRequest httprequest, HttpResponse httpresponse, HttpContext httpcontext)
        throws ProtocolException
    {
        httpresponse = getLocationURI(httprequest, httpresponse, httpcontext);
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
        int i;
        if (httpresponse == null)
        {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        i = httpresponse.getStatusLine().getStatusCode();
        httprequest = httprequest.getRequestLine().getMethod();
        httpresponse = httpresponse.getFirstHeader("location");
        i;
        JVM INSTR tableswitch 301 307: default 92
    //                   301 118
    //                   302 94
    //                   303 138
    //                   304 92
    //                   305 92
    //                   306 92
    //                   307 118;
           goto _L1 _L2 _L3 _L4 _L1 _L1 _L1 _L2
_L1:
        return false;
_L3:
        if ((httprequest.equalsIgnoreCase("GET") || httprequest.equalsIgnoreCase("HEAD")) && httpresponse != null)
        {
            return true;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (httprequest.equalsIgnoreCase("GET") || httprequest.equalsIgnoreCase("HEAD"))
        {
            return true;
        }
        if (true) goto _L1; else goto _L4
_L4:
        return true;
    }
}
