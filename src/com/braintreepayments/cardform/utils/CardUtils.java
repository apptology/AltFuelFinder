// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.braintreepayments.cardform.utils;


public class CardUtils
{

    public CardUtils()
    {
    }

    public static boolean isLuhnValid(String s)
    {
        s = (new StringBuffer(s)).reverse().toString();
        int l = s.length();
        int j = 0;
        int k = 0;
        int i = 0;
        while (i < l) 
        {
            char c = s.charAt(i);
            if (!Character.isDigit(c))
            {
                throw new IllegalArgumentException(String.format("Not a digit: '%s'", new Object[] {
                    Character.valueOf(c)
                }));
            }
            int i1 = Character.digit(c, 10);
            if (i % 2 == 0)
            {
                j += i1;
            } else
            {
                k += i1 / 5 + (i1 * 2) % 10;
            }
            i++;
        }
        return (j + k) % 10 == 0;
    }
}
