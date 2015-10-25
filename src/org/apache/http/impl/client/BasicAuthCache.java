// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.client;

import java.util.HashMap;
import org.apache.http.HttpHost;
import org.apache.http.auth.AuthScheme;
import org.apache.http.client.AuthCache;

public class BasicAuthCache
    implements AuthCache
{

    private final HashMap map = new HashMap();

    public BasicAuthCache()
    {
    }

    public void clear()
    {
        map.clear();
    }

    public AuthScheme get(HttpHost httphost)
    {
        if (httphost == null)
        {
            throw new IllegalArgumentException("HTTP host may not be null");
        } else
        {
            return (AuthScheme)map.get(httphost);
        }
    }

    public void put(HttpHost httphost, AuthScheme authscheme)
    {
        if (httphost == null)
        {
            throw new IllegalArgumentException("HTTP host may not be null");
        } else
        {
            map.put(httphost, authscheme);
            return;
        }
    }

    public void remove(HttpHost httphost)
    {
        if (httphost == null)
        {
            throw new IllegalArgumentException("HTTP host may not be null");
        } else
        {
            map.remove(httphost);
            return;
        }
    }

    public String toString()
    {
        return map.toString();
    }
}
