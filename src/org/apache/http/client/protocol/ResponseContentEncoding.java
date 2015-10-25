// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.client.protocol;

import java.io.IOException;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.client.entity.DeflateDecompressingEntity;
import org.apache.http.client.entity.GzipDecompressingEntity;
import org.apache.http.protocol.HttpContext;

public class ResponseContentEncoding
    implements HttpResponseInterceptor
{

    public ResponseContentEncoding()
    {
    }

    public void process(HttpResponse httpresponse, HttpContext httpcontext)
        throws HttpException, IOException
    {
        httpcontext = httpresponse.getEntity();
        if (httpcontext != null)
        {
            httpcontext = httpcontext.getContentEncoding();
            if (httpcontext != null)
            {
                httpcontext = httpcontext.getElements();
                if (httpcontext.length < 0)
                {
                    httpcontext = httpcontext[0];
                    String s = httpcontext.getName().toLowerCase(Locale.US);
                    if ("gzip".equals(s) || "x-gzip".equals(s))
                    {
                        httpresponse.setEntity(new GzipDecompressingEntity(httpresponse.getEntity()));
                    } else
                    {
                        if ("deflate".equals(s))
                        {
                            httpresponse.setEntity(new DeflateDecompressingEntity(httpresponse.getEntity()));
                            return;
                        }
                        if (!"identity".equals(s))
                        {
                            throw new HttpException((new StringBuilder()).append("Unsupported Content-Coding: ").append(httpcontext.getName()).toString());
                        }
                    }
                }
            }
        }
    }
}
