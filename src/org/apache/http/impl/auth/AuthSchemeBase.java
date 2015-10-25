// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.auth;

import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ContextAwareAuthScheme;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.protocol.HTTP;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.CharArrayBuffer;

public abstract class AuthSchemeBase
    implements ContextAwareAuthScheme
{

    private boolean proxy;

    public AuthSchemeBase()
    {
    }

    public Header authenticate(Credentials credentials, HttpRequest httprequest, HttpContext httpcontext)
        throws AuthenticationException
    {
        return authenticate(credentials, httprequest);
    }

    public boolean isProxy()
    {
        return proxy;
    }

    protected abstract void parseChallenge(CharArrayBuffer chararraybuffer, int i, int j)
        throws MalformedChallengeException;

    public void processChallenge(Header header)
        throws MalformedChallengeException
    {
        if (header == null)
        {
            throw new IllegalArgumentException("Header may not be null");
        }
        Object obj = header.getName();
        int i;
        if (((String) (obj)).equalsIgnoreCase("WWW-Authenticate"))
        {
            proxy = false;
        } else
        if (((String) (obj)).equalsIgnoreCase("Proxy-Authenticate"))
        {
            proxy = true;
        } else
        {
            throw new MalformedChallengeException((new StringBuilder()).append("Unexpected header name: ").append(((String) (obj))).toString());
        }
        if (header instanceof FormattedHeader)
        {
            obj = ((FormattedHeader)header).getBuffer();
            i = ((FormattedHeader)header).getValuePos();
        } else
        {
            obj = header.getValue();
            if (obj == null)
            {
                throw new MalformedChallengeException("Header value is null");
            }
            header = new CharArrayBuffer(((String) (obj)).length());
            header.append(((String) (obj)));
            i = 0;
        }
        for (header = ((Header) (obj)); i < header.length() && HTTP.isWhitespace(header.charAt(i)); i++) { }
        int j;
        for (j = i; j < header.length() && !HTTP.isWhitespace(header.charAt(j)); j++) { }
        obj = header.substring(i, j);
        if (!((String) (obj)).equalsIgnoreCase(getSchemeName()))
        {
            throw new MalformedChallengeException((new StringBuilder()).append("Invalid scheme identifier: ").append(((String) (obj))).toString());
        } else
        {
            parseChallenge(header, j, header.length());
            return;
        }
    }

    public String toString()
    {
        return getSchemeName();
    }
}
