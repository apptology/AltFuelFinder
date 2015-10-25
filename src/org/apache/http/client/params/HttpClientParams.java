// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.client.params;

import org.apache.http.params.HttpParams;

public class HttpClientParams
{

    private HttpClientParams()
    {
    }

    public static String getCookiePolicy(HttpParams httpparams)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        }
        String s = (String)httpparams.getParameter("http.protocol.cookie-policy");
        httpparams = s;
        if (s == null)
        {
            httpparams = "best-match";
        }
        return httpparams;
    }

    public static boolean isAuthenticating(HttpParams httpparams)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else
        {
            return httpparams.getBooleanParameter("http.protocol.handle-authentication", true);
        }
    }

    public static boolean isRedirecting(HttpParams httpparams)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else
        {
            return httpparams.getBooleanParameter("http.protocol.handle-redirects", true);
        }
    }

    public static void setAuthenticating(HttpParams httpparams, boolean flag)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else
        {
            httpparams.setBooleanParameter("http.protocol.handle-authentication", flag);
            return;
        }
    }

    public static void setCookiePolicy(HttpParams httpparams, String s)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else
        {
            httpparams.setParameter("http.protocol.cookie-policy", s);
            return;
        }
    }

    public static void setRedirecting(HttpParams httpparams, boolean flag)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else
        {
            httpparams.setBooleanParameter("http.protocol.handle-redirects", flag);
            return;
        }
    }
}
