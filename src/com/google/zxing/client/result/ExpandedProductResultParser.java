// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.zxing.client.result:
//            ResultParser, ExpandedProductParsedResult, ParsedResult

public final class ExpandedProductResultParser extends ResultParser
{

    public ExpandedProductResultParser()
    {
    }

    private static String findAIvalue(int i, String s)
    {
        if (s.charAt(i) == '(') goto _L2; else goto _L1
_L1:
        return null;
_L2:
        StringBuilder stringbuilder;
        s = s.substring(i + 1);
        stringbuilder = new StringBuilder();
        i = 0;
label0:
        do
        {
label1:
            {
                if (i >= s.length())
                {
                    break label1;
                }
                char c = s.charAt(i);
                if (c == ')')
                {
                    return stringbuilder.toString();
                }
                if (c < '0' || c > '9')
                {
                    break label0;
                }
                stringbuilder.append(c);
                i++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return stringbuilder.toString();
    }

    private static String findValue(int i, String s)
    {
        StringBuilder stringbuilder;
        stringbuilder = new StringBuilder();
        s = s.substring(i);
        i = 0;
_L8:
        if (i >= s.length()) goto _L2; else goto _L1
_L1:
        char c = s.charAt(i);
        if (c != '(') goto _L4; else goto _L3
_L3:
        if (findAIvalue(i, s) != null) goto _L2; else goto _L5
_L5:
        stringbuilder.append('(');
_L6:
        i++;
        continue; /* Loop/switch isn't completed */
_L4:
        stringbuilder.append(c);
        if (true) goto _L6; else goto _L2
_L2:
        return stringbuilder.toString();
        if (true) goto _L8; else goto _L7
_L7:
    }

    public ExpandedProductParsedResult parse(Result result)
    {
        if (result.getBarcodeFormat() != BarcodeFormat.RSS_EXPANDED)
        {
            return null;
        }
        String s4 = getMassagedText(result);
        Result result8 = null;
        Result result7 = null;
        Result result6 = null;
        Result result5 = null;
        Result result4 = null;
        Result result3 = null;
        Result result2 = null;
        Result result1 = null;
        String s1 = null;
        String s2 = null;
        Object obj = null;
        String s = null;
        String s3 = null;
        HashMap hashmap = new HashMap();
        for (int i = 0; i < s4.length();)
        {
            String s5 = findAIvalue(i, s4);
            if (s5 == null)
            {
                return null;
            }
            i += s5.length() + 2;
            result = findValue(i, s4);
            i += result.length();
            if (s5.equalsIgnoreCase("00"))
            {
                result7 = result;
            } else
            if (s5.equalsIgnoreCase("01"))
            {
                result8 = result;
            } else
            if (s5.equalsIgnoreCase("10"))
            {
                result6 = result;
            } else
            if (s5.equalsIgnoreCase("11"))
            {
                result5 = result;
            } else
            if (s5.equalsIgnoreCase("13"))
            {
                result4 = result;
            } else
            if (s5.equalsIgnoreCase("15"))
            {
                result3 = result;
            } else
            if (s5.equalsIgnoreCase("17"))
            {
                result2 = result;
            } else
            if (s5.equalsIgnoreCase("3100") || s5.equalsIgnoreCase("3101") || s5.equalsIgnoreCase("3102") || s5.equalsIgnoreCase("3103") || s5.equalsIgnoreCase("3104") || s5.equalsIgnoreCase("3105") || s5.equalsIgnoreCase("3106") || s5.equalsIgnoreCase("3107") || s5.equalsIgnoreCase("3108") || s5.equalsIgnoreCase("3109"))
            {
                s1 = "KG";
                s2 = s5.substring(3);
                result1 = result;
            } else
            if (s5.equalsIgnoreCase("3200") || s5.equalsIgnoreCase("3201") || s5.equalsIgnoreCase("3202") || s5.equalsIgnoreCase("3203") || s5.equalsIgnoreCase("3204") || s5.equalsIgnoreCase("3205") || s5.equalsIgnoreCase("3206") || s5.equalsIgnoreCase("3207") || s5.equalsIgnoreCase("3208") || s5.equalsIgnoreCase("3209"))
            {
                s1 = "LB";
                s2 = s5.substring(3);
                result1 = result;
            } else
            if (s5.equalsIgnoreCase("3920") || s5.equalsIgnoreCase("3921") || s5.equalsIgnoreCase("3922") || s5.equalsIgnoreCase("3923"))
            {
                s = s5.substring(3);
                obj = result;
            } else
            if (s5.equalsIgnoreCase("3930") || s5.equalsIgnoreCase("3931") || s5.equalsIgnoreCase("3932") || s5.equalsIgnoreCase("3933"))
            {
                if (result.length() < 4)
                {
                    return null;
                }
                obj = result.substring(3);
                s3 = result.substring(0, 3);
                s = s5.substring(3);
            } else
            {
                hashmap.put(s5, result);
            }
        }

        return new ExpandedProductParsedResult(s4, result8, result7, result6, result5, result4, result3, result2, result1, s1, s2, ((String) (obj)), s, s3, hashmap);
    }

    public volatile ParsedResult parse(Result result)
    {
        return parse(result);
    }
}
