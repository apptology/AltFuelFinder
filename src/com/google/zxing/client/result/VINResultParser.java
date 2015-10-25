// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.google.zxing.client.result:
//            ResultParser, VINParsedResult, ParsedResult

public final class VINResultParser extends ResultParser
{

    private static final Pattern AZ09 = Pattern.compile("[A-Z0-9]{17}");
    private static final Pattern IOQ = Pattern.compile("[IOQ]");

    public VINResultParser()
    {
    }

    private static char checkChar(int i)
    {
        if (i < 10)
        {
            return (char)(i + 48);
        }
        if (i == 10)
        {
            return 'X';
        } else
        {
            throw new IllegalArgumentException();
        }
    }

    private static boolean checkChecksum(CharSequence charsequence)
    {
        int j = 0;
        for (int i = 0; i < charsequence.length(); i++)
        {
            j += vinPositionWeight(i + 1) * vinCharValue(charsequence.charAt(i));
        }

        return charsequence.charAt(8) == checkChar(j % 11);
    }

    private static String countryCode(CharSequence charsequence)
    {
        char c;
        char c1;
        c = charsequence.charAt(0);
        c1 = charsequence.charAt(1);
        c;
        JVM INSTR lookupswitch 15: default 148
    //                   49: 150
    //                   50: 153
    //                   51: 156
    //                   52: 150
    //                   53: 150
    //                   57: 171
    //                   74: 198
    //                   75: 213
    //                   76: 228
    //                   77: 231
    //                   83: 246
    //                   86: 276
    //                   87: 306
    //                   88: 309
    //                   90: 330;
           goto _L1 _L2 _L3 _L4 _L2 _L2 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14
_L1:
        return null;
_L2:
        return "US";
_L3:
        return "CA";
_L4:
        if (c1 >= 'A' && c1 <= 'W')
        {
            return "MX";
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (c1 >= 'A' && c1 <= 'E' || c1 >= '3' && c1 <= '9')
        {
            return "BR";
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (c1 >= 'A' && c1 <= 'T')
        {
            return "JP";
        }
        continue; /* Loop/switch isn't completed */
_L7:
        if (c1 >= 'L' && c1 <= 'R')
        {
            return "KO";
        }
        if (true) goto _L1; else goto _L8
_L8:
        return "CN";
_L9:
        if (c1 >= 'A' && c1 <= 'E')
        {
            return "IN";
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L10:
        if (c1 >= 'A' && c1 <= 'M')
        {
            return "UK";
        }
        if (c1 >= 'N' && c1 <= 'T')
        {
            return "DE";
        }
        if (true) goto _L1; else goto _L11
_L11:
        if (c1 >= 'F' && c1 <= 'R')
        {
            return "FR";
        }
        if (c1 >= 'S' && c1 <= 'W')
        {
            return "ES";
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L12:
        return "DE";
_L13:
        if (c1 == '0' || c1 >= '3' && c1 <= '9')
        {
            return "RU";
        }
        continue; /* Loop/switch isn't completed */
_L14:
        if (c1 >= 'A' && c1 <= 'R')
        {
            return "IT";
        }
        if (true) goto _L1; else goto _L15
_L15:
    }

    private static int modelYear(char c)
    {
        if (c >= 'E' && c <= 'H')
        {
            return (c - 69) + 1984;
        }
        if (c >= 'J' && c <= 'N')
        {
            return (c - 74) + 1988;
        }
        if (c == 'P')
        {
            return 1993;
        }
        if (c >= 'R' && c <= 'T')
        {
            return (c - 82) + 1994;
        }
        if (c >= 'V' && c <= 'Y')
        {
            return (c - 86) + 1997;
        }
        if (c >= '1' && c <= '9')
        {
            return (c - 49) + 2001;
        }
        if (c >= 'A' && c <= 'D')
        {
            return (c - 65) + 2010;
        } else
        {
            throw new IllegalArgumentException();
        }
    }

    private static int vinCharValue(char c)
    {
        if (c >= 'A' && c <= 'I')
        {
            return (c - 65) + 1;
        }
        if (c >= 'J' && c <= 'R')
        {
            return (c - 74) + 1;
        }
        if (c >= 'S' && c <= 'Z')
        {
            return (c - 83) + 2;
        }
        if (c >= '0' && c <= '9')
        {
            return c - 48;
        } else
        {
            throw new IllegalArgumentException();
        }
    }

    private static int vinPositionWeight(int i)
    {
        int j = 10;
        if (i >= 1 && i <= 7)
        {
            j = 9 - i;
        } else
        if (i != 8)
        {
            if (i == 9)
            {
                return 0;
            }
            if (i >= 10 && i <= 17)
            {
                return 19 - i;
            } else
            {
                throw new IllegalArgumentException();
            }
        }
        return j;
    }

    public volatile ParsedResult parse(Result result)
    {
        return parse(result);
    }

    public VINParsedResult parse(Result result)
    {
        if (result.getBarcodeFormat() != BarcodeFormat.CODE_39)
        {
            return null;
        }
        result = result.getText();
        result = IOQ.matcher(result).replaceAll("").trim();
        if (!AZ09.matcher(result).matches())
        {
            return null;
        }
        if (!checkChecksum(result))
        {
            return null;
        }
        try
        {
            String s = result.substring(0, 3);
            result = new VINParsedResult(result, s, result.substring(3, 9), result.substring(9, 17), countryCode(s), result.substring(3, 8), modelYear(result.charAt(9)), result.charAt(10), result.substring(11));
        }
        // Misplaced declaration of an exception variable
        catch (Result result)
        {
            return null;
        }
        return result;
    }

}
