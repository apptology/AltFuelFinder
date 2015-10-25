// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.conn;

import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;

public final class SchemeRegistryFactory
{

    public SchemeRegistryFactory()
    {
    }

    public static SchemeRegistry createDefault()
    {
        SchemeRegistry schemeregistry = new SchemeRegistry();
        schemeregistry.register(new Scheme("http", 80, PlainSocketFactory.getSocketFactory()));
        schemeregistry.register(new Scheme("https", 443, SSLSocketFactory.getSocketFactory()));
        return schemeregistry;
    }
}
