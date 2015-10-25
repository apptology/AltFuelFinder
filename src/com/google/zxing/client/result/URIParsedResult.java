// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.client.result;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.google.zxing.client.result:
//            ParsedResult, ParsedResultType, ResultParser

public final class URIParsedResult extends ParsedResult
{

    private static final Pattern USER_IN_HOST = Pattern.compile(":/*([^/@]+)@[^/]+");
    private final String title;
    private final String uri;

    public URIParsedResult(String s, String s1)
    {
        super(ParsedResultType.URI);
        uri = massageURI(s);
        title = s1;
    }

    private static boolean isColonFollowedByPortNumber(String s, int i)
    {
        int k = i + 1;
        int j = s.indexOf('/', k);
        i = j;
        if (j < 0)
        {
            i = s.length();
        }
        return ResultParser.isSubstringOfDigits(s, k, i - k);
    }

    private static String massageURI(String s)
    {
        String s1 = s.trim();
        int i = s1.indexOf(':');
        if (i < 0)
        {
            s = (new StringBuilder()).append("http://").append(s1).toString();
        } else
        {
            s = s1;
            if (isColonFollowedByPortNumber(s1, i))
            {
                return (new StringBuilder()).append("http://").append(s1).toString();
            }
        }
        return s;
    }

    public String getDisplayResult()
    {
        StringBuilder stringbuilder = new StringBuilder(30);
        maybeAppend(title, stringbuilder);
        maybeAppend(uri, stringbuilder);
        return stringbuilder.toString();
    }

    public String getTitle()
    {
        return title;
    }

    public String getURI()
    {
        return uri;
    }

    public boolean isPossiblyMaliciousURI()
    {
        return USER_IN_HOST.matcher(uri).find();
    }

}
