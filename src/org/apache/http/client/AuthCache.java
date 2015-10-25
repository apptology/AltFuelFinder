// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.client;

import org.apache.http.HttpHost;
import org.apache.http.auth.AuthScheme;

public interface AuthCache
{

    public abstract void clear();

    public abstract AuthScheme get(HttpHost httphost);

    public abstract void put(HttpHost httphost, AuthScheme authscheme);

    public abstract void remove(HttpHost httphost);
}
