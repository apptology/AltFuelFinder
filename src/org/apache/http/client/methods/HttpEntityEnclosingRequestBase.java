// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.client.methods;

import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.client.utils.CloneUtils;

// Referenced classes of package org.apache.http.client.methods:
//            HttpRequestBase

public abstract class HttpEntityEnclosingRequestBase extends HttpRequestBase
    implements HttpEntityEnclosingRequest
{

    private HttpEntity entity;

    public HttpEntityEnclosingRequestBase()
    {
    }

    public Object clone()
        throws CloneNotSupportedException
    {
        HttpEntityEnclosingRequestBase httpentityenclosingrequestbase = (HttpEntityEnclosingRequestBase)super.clone();
        if (entity != null)
        {
            httpentityenclosingrequestbase.entity = (HttpEntity)CloneUtils.clone(entity);
        }
        return httpentityenclosingrequestbase;
    }

    public boolean expectContinue()
    {
        Header header = getFirstHeader("Expect");
        return header != null && "100-continue".equalsIgnoreCase(header.getValue());
    }

    public HttpEntity getEntity()
    {
        return entity;
    }

    public void setEntity(HttpEntity httpentity)
    {
        entity = httpentity;
    }
}
