// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.client;

import org.apache.http.protocol.HttpContext;

public interface UserTokenHandler
{

    public abstract Object getUserToken(HttpContext httpcontext);
}
