// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.client;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.Credentials;
import org.apache.http.client.CredentialsProvider;

public class BasicCredentialsProvider
    implements CredentialsProvider
{

    private final ConcurrentHashMap credMap = new ConcurrentHashMap();

    public BasicCredentialsProvider()
    {
    }

    private static Credentials matchCredentials(Map map, AuthScope authscope)
    {
        Credentials credentials = (Credentials)map.get(authscope);
        Object obj1 = credentials;
        if (credentials == null)
        {
            int i = -1;
            Object obj = null;
            Iterator iterator = map.keySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                obj1 = (AuthScope)iterator.next();
                int j = authscope.match(((AuthScope) (obj1)));
                if (j > i)
                {
                    i = j;
                    obj = obj1;
                }
            } while (true);
            obj1 = credentials;
            if (obj != null)
            {
                obj1 = (Credentials)map.get(obj);
            }
        }
        return ((Credentials) (obj1));
    }

    public void clear()
    {
        credMap.clear();
    }

    public Credentials getCredentials(AuthScope authscope)
    {
        if (authscope == null)
        {
            throw new IllegalArgumentException("Authentication scope may not be null");
        } else
        {
            return matchCredentials(credMap, authscope);
        }
    }

    public void setCredentials(AuthScope authscope, Credentials credentials)
    {
        if (authscope == null)
        {
            throw new IllegalArgumentException("Authentication scope may not be null");
        } else
        {
            credMap.put(authscope, credentials);
            return;
        }
    }

    public String toString()
    {
        return credMap.toString();
    }
}
