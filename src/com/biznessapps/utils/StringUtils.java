// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.content.Context;
import android.text.TextUtils;
import android.util.Patterns;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtils
{

    private static final String MUSIC_SONG_FORMAT = "%d:%02d";

    public StringUtils()
    {
    }

    public static transient boolean checkIfAllEmpty(String as[])
    {
        boolean flag;
        boolean flag1;
        flag1 = true;
        flag = flag1;
        if (as == null) goto _L2; else goto _L1
_L1:
        flag = flag1;
        if (as.length <= 0) goto _L2; else goto _L3
_L3:
        int i;
        int j;
        j = as.length;
        i = 0;
_L8:
        flag = flag1;
        if (i >= j) goto _L2; else goto _L4
_L4:
        if (!isNotEmpty(as[i])) goto _L6; else goto _L5
_L5:
        flag = false;
_L2:
        return flag;
_L6:
        i++;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static transient boolean checkTextFieldsOnEmpty(String as[])
    {
        if (as.length != 0)
        {
            int j = as.length;
            int i = 0;
            while (i < j) 
            {
                if (!isNotEmpty(as[i]))
                {
                    return true;
                }
                i++;
            }
        }
        return false;
    }

    public static String decode(String s)
    {
        Object obj;
        obj = null;
        if (s == null)
        {
            return "";
        }
        Object obj1 = new String(s);
        obj = ((String) (obj1)).replaceAll("!", "%21");
        obj1 = obj;
        obj = obj1;
        obj1 = ((String) (obj1)).replaceAll("#", "%23");
        obj = obj1;
        obj1 = URLDecoder.decode(((String) (obj1)));
        s = ((String) (obj1));
_L1:
        return s;
        obj1;
_L2:
        obj = URLDecoder.decode(URLDecoder.decode(((String) (obj)).replaceAll("%", "%25")));
        s = ((String) (obj));
          goto _L1
        obj;
          goto _L1
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        illegalargumentexception = ((IllegalArgumentException) (obj1));
          goto _L2
    }

    public static boolean isCorrectEmail(String s)
    {
        return !TextUtils.isEmpty(s) && Patterns.EMAIL_ADDRESS.matcher(s).matches();
    }

    public static boolean isCorrectUrl(String s)
    {
        try
        {
            new URL(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return true;
    }

    public static boolean isEmpty(String s)
    {
        return !isNotEmpty(s);
    }

    public static boolean isEmptyValue(String s)
    {
        return !isNotEmptyValue(s);
    }

    public static boolean isNotEmpty(String s)
    {
        return s != null && s.trim().length() > 0 && !s.equalsIgnoreCase("null");
    }

    public static boolean isNotEmptyResponse(String s)
    {
        return s != null && s.trim().length() > 0 && !s.equalsIgnoreCase("null") && s.length() > 3;
    }

    public static boolean isNotEmptyValue(String s)
    {
        return s != null && s.trim().length() > 0 && !s.equalsIgnoreCase("null") && !s.equalsIgnoreCase("0");
    }

    public static String makeTimeString(Context context, long l)
    {
        long l1 = l / (long)60;
        long l2 = 60;
        if (l1 > 10L)
        {
            return "";
        } else
        {
            return String.format("%d:%02d", new Object[] {
                Long.valueOf(l1), Long.valueOf(l % l2)
            });
        }
    }
}
