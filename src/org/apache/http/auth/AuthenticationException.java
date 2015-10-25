// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.auth;

import org.apache.http.ProtocolException;

public class AuthenticationException extends ProtocolException
{

    private static final long serialVersionUID = 0xa1b6bffa6595de18L;

    public AuthenticationException()
    {
    }

    public AuthenticationException(String s)
    {
        super(s);
    }

    public AuthenticationException(String s, Throwable throwable)
    {
        super(s, throwable);
    }
}
