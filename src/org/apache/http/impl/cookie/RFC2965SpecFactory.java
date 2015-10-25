// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.cookie;

import java.util.Collection;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecFactory;
import org.apache.http.params.HttpParams;

// Referenced classes of package org.apache.http.impl.cookie:
//            RFC2965Spec

public class RFC2965SpecFactory
    implements CookieSpecFactory
{

    public RFC2965SpecFactory()
    {
    }

    public CookieSpec newInstance(HttpParams httpparams)
    {
        if (httpparams != null)
        {
            String as[] = null;
            Collection collection = (Collection)httpparams.getParameter("http.protocol.cookie-datepatterns");
            if (collection != null)
            {
                as = (String[])collection.toArray(new String[collection.size()]);
            }
            return new RFC2965Spec(as, httpparams.getBooleanParameter("http.protocol.single-cookie-header", false));
        } else
        {
            return new RFC2965Spec();
        }
    }
}
