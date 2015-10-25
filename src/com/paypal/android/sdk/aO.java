// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.protocol.HttpContext;

// Referenced classes of package com.paypal.android.sdk:
//            aN

final class aO
    implements HttpRequestInterceptor
{

    private aN a;

    aO(aN an)
    {
        a = an;
        super();
    }

    public final void process(HttpRequest httprequest, HttpContext httpcontext)
    {
        if (!httprequest.containsHeader("Accept-Encoding"))
        {
            httprequest.addHeader("Accept-Encoding", "gzip");
        }
        String s;
        for (httpcontext = aN.a(a).keySet().iterator(); httpcontext.hasNext(); httprequest.addHeader(s, (String)aN.a(a).get(s)))
        {
            s = (String)httpcontext.next();
        }

    }
}
