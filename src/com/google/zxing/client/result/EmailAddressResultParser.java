// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.Map;
import java.util.regex.Pattern;

// Referenced classes of package com.google.zxing.client.result:
//            ResultParser, EmailAddressParsedResult, EmailDoCoMoResultParser, ParsedResult

public final class EmailAddressResultParser extends ResultParser
{

    private static final Pattern COMMA = Pattern.compile(",");

    public EmailAddressResultParser()
    {
    }

    public EmailAddressParsedResult parse(Result result)
    {
        String s1 = getMassagedText(result);
        if (s1.startsWith("mailto:") || s1.startsWith("MAILTO:"))
        {
            String s = s1.substring(7);
            int i = s.indexOf('?');
            result = s;
            if (i >= 0)
            {
                result = s.substring(0, i);
            }
            s = urlDecode(result);
            result = null;
            if (!s.isEmpty())
            {
                result = COMMA.split(s);
            }
            Map map = parseNameValuePairs(s1);
            s1 = null;
            Object obj1 = null;
            CharSequence charsequence = null;
            Object obj = null;
            String s2 = null;
            String s3 = null;
            String as[] = result;
            if (map != null)
            {
                as = result;
                if (result == null)
                {
                    s1 = (String)map.get("to");
                    as = result;
                    if (s1 != null)
                    {
                        as = COMMA.split(s1);
                    }
                }
                s1 = (String)map.get("cc");
                result = obj1;
                if (s1 != null)
                {
                    result = COMMA.split(s1);
                }
                charsequence = (String)map.get("bcc");
                s1 = obj;
                if (charsequence != null)
                {
                    s1 = COMMA.split(charsequence);
                }
                s2 = (String)map.get("subject");
                s3 = (String)map.get("body");
                charsequence = s1;
                s1 = result;
            }
            return new EmailAddressParsedResult(as, s1, charsequence, s2, s3);
        }
        if (!EmailDoCoMoResultParser.isBasicallyValidEmailAddress(s1))
        {
            return null;
        } else
        {
            return new EmailAddressParsedResult(s1);
        }
    }

    public volatile ParsedResult parse(Result result)
    {
        return parse(result);
    }

}
