// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.google.zxing.client.result:
//            BookmarkDoCoMoResultParser, AddressBookDoCoMoResultParser, EmailDoCoMoResultParser, AddressBookAUResultParser, 
//            VCardResultParser, BizcardResultParser, VEventResultParser, EmailAddressResultParser, 
//            SMTPResultParser, TelResultParser, SMSMMSResultParser, SMSTOMMSTOResultParser, 
//            GeoResultParser, WifiResultParser, URLTOResultParser, URIResultParser, 
//            ISBNResultParser, ProductResultParser, ExpandedProductResultParser, VINResultParser, 
//            TextParsedResult, ParsedResult

public abstract class ResultParser
{

    private static final Pattern AMPERSAND = Pattern.compile("&");
    private static final String BYTE_ORDER_MARK = "\uFEFF";
    private static final Pattern DIGITS = Pattern.compile("\\d+");
    private static final Pattern EQUALS = Pattern.compile("=");
    private static final ResultParser PARSERS[] = {
        new BookmarkDoCoMoResultParser(), new AddressBookDoCoMoResultParser(), new EmailDoCoMoResultParser(), new AddressBookAUResultParser(), new VCardResultParser(), new BizcardResultParser(), new VEventResultParser(), new EmailAddressResultParser(), new SMTPResultParser(), new TelResultParser(), 
        new SMSMMSResultParser(), new SMSTOMMSTOResultParser(), new GeoResultParser(), new WifiResultParser(), new URLTOResultParser(), new URIResultParser(), new ISBNResultParser(), new ProductResultParser(), new ExpandedProductResultParser(), new VINResultParser()
    };

    public ResultParser()
    {
    }

    private static void appendKeyValue(CharSequence charsequence, Map map)
    {
        String s;
        String as[] = EQUALS.split(charsequence, 2);
        if (as.length != 2)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        charsequence = as[0];
        s = as[1];
        map.put(charsequence, urlDecode(s));
        return;
        charsequence;
    }

    private static int countPrecedingBackslashes(CharSequence charsequence, int i)
    {
        int j = 0;
        for (i--; i >= 0 && charsequence.charAt(i) == '\\'; i--)
        {
            j++;
        }

        return j;
    }

    protected static String getMassagedText(Result result)
    {
        String s = result.getText();
        result = s;
        if (s.startsWith("\uFEFF"))
        {
            result = s.substring(1);
        }
        return result;
    }

    protected static boolean isStringOfDigits(CharSequence charsequence, int i)
    {
        return charsequence != null && i > 0 && i == charsequence.length() && DIGITS.matcher(charsequence).matches();
    }

    protected static boolean isSubstringOfDigits(CharSequence charsequence, int i, int j)
    {
        if (charsequence != null && j > 0)
        {
            if (charsequence.length() >= (j = i + j) && DIGITS.matcher(charsequence.subSequence(i, j)).matches())
            {
                return true;
            }
        }
        return false;
    }

    static String[] matchPrefixedField(String s, String s1, char c, boolean flag)
    {
        ArrayList arraylist;
        int i;
        int l;
        arraylist = null;
        i = 0;
        l = s1.length();
_L2:
label0:
        {
            if (i < l)
            {
                i = s1.indexOf(s, i);
                if (i >= 0)
                {
                    break label0;
                }
            }
            Object obj;
            String s2;
            boolean flag1;
            int j;
            int k;
            if (arraylist == null || arraylist.isEmpty())
            {
                return null;
            } else
            {
                return (String[])arraylist.toArray(new String[arraylist.size()]);
            }
        }
        k = i + s.length();
        flag1 = true;
        obj = arraylist;
        i = k;
        do
        {
            j = i;
            i = j;
            arraylist = ((ArrayList) (obj));
            if (!flag1)
            {
                continue;
            }
            i = s1.indexOf(c, j);
            if (i < 0)
            {
                i = s1.length();
                flag1 = false;
            } else
            if (countPrecedingBackslashes(s1, i) % 2 != 0)
            {
                i++;
            } else
            {
                arraylist = ((ArrayList) (obj));
                if (obj == null)
                {
                    arraylist = new ArrayList(3);
                }
                s2 = unescapeBackslash(s1.substring(k, i));
                obj = s2;
                if (flag)
                {
                    obj = s2.trim();
                }
                if (!((String) (obj)).isEmpty())
                {
                    arraylist.add(obj);
                }
                i++;
                flag1 = false;
                obj = arraylist;
            }
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    static String matchSinglePrefixedField(String s, String s1, char c, boolean flag)
    {
        s = matchPrefixedField(s, s1, c, flag);
        if (s == null)
        {
            return null;
        } else
        {
            return s[0];
        }
    }

    protected static void maybeAppend(String s, StringBuilder stringbuilder)
    {
        if (s != null)
        {
            stringbuilder.append('\n');
            stringbuilder.append(s);
        }
    }

    protected static void maybeAppend(String as[], StringBuilder stringbuilder)
    {
        if (as != null)
        {
            int j = as.length;
            for (int i = 0; i < j; i++)
            {
                String s = as[i];
                stringbuilder.append('\n');
                stringbuilder.append(s);
            }

        }
    }

    protected static String[] maybeWrap(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return (new String[] {
                s
            });
        }
    }

    protected static int parseHexDigit(char c)
    {
        if (c >= '0' && c <= '9')
        {
            return c - 48;
        }
        if (c >= 'a' && c <= 'f')
        {
            return (c - 97) + 10;
        }
        if (c >= 'A' && c <= 'F')
        {
            return (c - 65) + 10;
        } else
        {
            return -1;
        }
    }

    static Map parseNameValuePairs(String s)
    {
        int i = s.indexOf('?');
        if (i >= 0) goto _L2; else goto _L1
_L1:
        s = null;
_L4:
        return s;
_L2:
        HashMap hashmap = new HashMap(3);
        String as[] = AMPERSAND.split(s.substring(i + 1));
        int j = as.length;
        i = 0;
        do
        {
            s = hashmap;
            if (i >= j)
            {
                continue;
            }
            appendKeyValue(as[i], hashmap);
            i++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static ParsedResult parseResult(Result result)
    {
        ResultParser aresultparser[] = PARSERS;
        int j = aresultparser.length;
        for (int i = 0; i < j; i++)
        {
            ParsedResult parsedresult = aresultparser[i].parse(result);
            if (parsedresult != null)
            {
                return parsedresult;
            }
        }

        return new TextParsedResult(result.getText(), null);
    }

    protected static String unescapeBackslash(String s)
    {
        int i = s.indexOf('\\');
        if (i < 0)
        {
            return s;
        }
        int j = s.length();
        StringBuilder stringbuilder = new StringBuilder(j - 1);
        stringbuilder.append(s.toCharArray(), 0, i);
        boolean flag = false;
        while (i < j) 
        {
            char c = s.charAt(i);
            if (flag || c != '\\')
            {
                stringbuilder.append(c);
                flag = false;
            } else
            {
                flag = true;
            }
            i++;
        }
        return stringbuilder.toString();
    }

    static String urlDecode(String s)
    {
        try
        {
            s = URLDecoder.decode(s, "UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new IllegalStateException(s);
        }
        return s;
    }

    public abstract ParsedResult parse(Result result);

}
