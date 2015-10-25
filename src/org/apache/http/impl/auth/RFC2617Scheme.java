// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.auth;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.HeaderElement;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.message.BasicHeaderValueParser;
import org.apache.http.message.HeaderValueParser;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;

// Referenced classes of package org.apache.http.impl.auth:
//            AuthSchemeBase

public abstract class RFC2617Scheme extends AuthSchemeBase
{

    private Map params;

    public RFC2617Scheme()
    {
    }

    public String getParameter(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Parameter name may not be null");
        }
        if (params == null)
        {
            return null;
        } else
        {
            return (String)params.get(s.toLowerCase(Locale.ENGLISH));
        }
    }

    protected Map getParameters()
    {
        if (params == null)
        {
            params = new HashMap();
        }
        return params;
    }

    public String getRealm()
    {
        return getParameter("realm");
    }

    protected void parseChallenge(CharArrayBuffer chararraybuffer, int i, int j)
        throws MalformedChallengeException
    {
        chararraybuffer = BasicHeaderValueParser.DEFAULT.parseElements(chararraybuffer, new ParserCursor(i, chararraybuffer.length()));
        if (chararraybuffer.length == 0)
        {
            throw new MalformedChallengeException("Authentication challenge is empty");
        }
        params = new HashMap(chararraybuffer.length);
        j = chararraybuffer.length;
        for (i = 0; i < j; i++)
        {
            HeaderElement headerelement = chararraybuffer[i];
            params.put(headerelement.getName(), headerelement.getValue());
        }

    }
}
