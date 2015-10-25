// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.google.zxing.client.result:
//            AbstractDoCoMoResultParser, EmailAddressParsedResult, ParsedResult

public final class EmailDoCoMoResultParser extends AbstractDoCoMoResultParser
{

    private static final Pattern ATEXT_ALPHANUMERIC = Pattern.compile("[a-zA-Z0-9@.!#$%&'*+\\-/=?^_`{|}~]+");

    public EmailDoCoMoResultParser()
    {
    }

    static boolean isBasicallyValidEmailAddress(String s)
    {
        return s != null && ATEXT_ALPHANUMERIC.matcher(s).matches() && s.indexOf('@') >= 0;
    }

    public EmailAddressParsedResult parse(Result result)
    {
        result = getMassagedText(result);
        if (result.startsWith("MATMSG:")) goto _L2; else goto _L1
_L1:
        String as[];
        return null;
_L2:
        if ((as = matchDoCoMoPrefixedField("TO:", result, true)) != null)
        {
            int j = as.length;
            int i = 0;
label0:
            do
            {
label1:
                {
                    if (i >= j)
                    {
                        break label1;
                    }
                    if (!isBasicallyValidEmailAddress(as[i]))
                    {
                        break label0;
                    }
                    i++;
                }
            } while (true);
        }
        if (true) goto _L1; else goto _L3
_L3:
        return new EmailAddressParsedResult(as, null, null, matchSingleDoCoMoPrefixedField("SUB:", result, false), matchSingleDoCoMoPrefixedField("BODY:", result, false));
    }

    public volatile ParsedResult parse(Result result)
    {
        return parse(result);
    }

}
