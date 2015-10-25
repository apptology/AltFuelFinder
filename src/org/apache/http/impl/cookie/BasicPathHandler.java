// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.cookie;

import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;

public class BasicPathHandler
    implements CookieAttributeHandler
{

    public BasicPathHandler()
    {
    }

    public boolean match(Cookie cookie, CookieOrigin cookieorigin)
    {
label0:
        {
            if (cookie == null)
            {
                throw new IllegalArgumentException("Cookie may not be null");
            }
            if (cookieorigin == null)
            {
                throw new IllegalArgumentException("Cookie origin may not be null");
            }
            String s = cookieorigin.getPath();
            cookieorigin = cookie.getPath();
            cookie = cookieorigin;
            if (cookieorigin == null)
            {
                cookie = "/";
            }
            cookieorigin = cookie;
            if (cookie.length() > 1)
            {
                cookieorigin = cookie;
                if (cookie.endsWith("/"))
                {
                    cookieorigin = cookie.substring(0, cookie.length() - 1);
                }
            }
            boolean flag1 = s.startsWith(cookieorigin);
            boolean flag = flag1;
            if (flag1)
            {
                flag = flag1;
                if (s.length() != cookieorigin.length())
                {
                    flag = flag1;
                    if (!cookieorigin.endsWith("/"))
                    {
                        if (s.charAt(cookieorigin.length()) != '/')
                        {
                            break label0;
                        }
                        flag = true;
                    }
                }
            }
            return flag;
        }
        return false;
    }

    public void parse(SetCookie setcookie, String s)
        throws MalformedCookieException
    {
        String s1;
label0:
        {
            if (setcookie == null)
            {
                throw new IllegalArgumentException("Cookie may not be null");
            }
            if (s != null)
            {
                s1 = s;
                if (s.trim().length() != 0)
                {
                    break label0;
                }
            }
            s1 = "/";
        }
        setcookie.setPath(s1);
    }

    public void validate(Cookie cookie, CookieOrigin cookieorigin)
        throws MalformedCookieException
    {
        if (!match(cookie, cookieorigin))
        {
            throw new CookieRestrictionViolationException((new StringBuilder()).append("Illegal path attribute \"").append(cookie.getPath()).append("\". Path of origin: \"").append(cookieorigin.getPath()).append("\"").toString());
        } else
        {
            return;
        }
    }
}
