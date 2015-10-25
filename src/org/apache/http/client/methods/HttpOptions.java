// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.client.methods;

import java.net.URI;
import java.util.HashSet;
import java.util.Set;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpResponse;

// Referenced classes of package org.apache.http.client.methods:
//            HttpRequestBase

public class HttpOptions extends HttpRequestBase
{

    public static final String METHOD_NAME = "OPTIONS";

    public HttpOptions()
    {
    }

    public HttpOptions(String s)
    {
        setURI(URI.create(s));
    }

    public HttpOptions(URI uri)
    {
        setURI(uri);
    }

    public Set getAllowedMethods(HttpResponse httpresponse)
    {
        if (httpresponse == null)
        {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        httpresponse = httpresponse.headerIterator("Allow");
        HashSet hashset = new HashSet();
        while (httpresponse.hasNext()) 
        {
            HeaderElement aheaderelement[] = httpresponse.nextHeader().getElements();
            int j = aheaderelement.length;
            int i = 0;
            while (i < j) 
            {
                hashset.add(aheaderelement[i].getName());
                i++;
            }
        }
        return hashset;
    }

    public String getMethod()
    {
        return "OPTIONS";
    }
}
