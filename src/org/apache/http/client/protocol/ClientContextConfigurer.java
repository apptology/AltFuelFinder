// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.client.protocol;

import java.util.List;
import org.apache.http.auth.AuthSchemeRegistry;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.cookie.CookieSpecRegistry;
import org.apache.http.protocol.HttpContext;

// Referenced classes of package org.apache.http.client.protocol:
//            ClientContext

public class ClientContextConfigurer
    implements ClientContext
{

    private final HttpContext context;

    public ClientContextConfigurer(HttpContext httpcontext)
    {
        if (httpcontext == null)
        {
            throw new IllegalArgumentException("HTTP context may not be null");
        } else
        {
            context = httpcontext;
            return;
        }
    }

    public void setAuthSchemePref(List list)
    {
        context.setAttribute("http.auth.scheme-pref", list);
    }

    public void setAuthSchemeRegistry(AuthSchemeRegistry authschemeregistry)
    {
        context.setAttribute("http.authscheme-registry", authschemeregistry);
    }

    public void setCookieSpecRegistry(CookieSpecRegistry cookiespecregistry)
    {
        context.setAttribute("http.cookiespec-registry", cookiespecregistry);
    }

    public void setCookieStore(CookieStore cookiestore)
    {
        context.setAttribute("http.cookie-store", cookiestore);
    }

    public void setCredentialsProvider(CredentialsProvider credentialsprovider)
    {
        context.setAttribute("http.auth.credentials-provider", credentialsprovider);
    }
}
