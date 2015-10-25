// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.pushnotifications;

import java.util.ArrayList;

// Referenced classes of package com.biznessapps.pushnotifications:
//            GeoFencingHelper

public static class y
{

    public double x;
    public double y;

    public static y createInstance(String s)
        throws Exception
    {
        s = s.trim();
        if (s.length() < 11)
        {
            throw new Exception("str length < 17 or > 21");
        }
        if (s.charAt(0) != '(' || s.charAt(s.length() - 1) != ')')
        {
            throw new Exception("str does not match pattern '(.*)'");
        }
        s = s.substring(1, s.length() - 1).split(",");
        if (s == null || s.length != 2)
        {
            throw new Exception("str does not match pattern '(number,number)'");
        } else
        {
            return new <init>(Double.parseDouble(s[0]), Double.parseDouble(s[1]));
        }
    }

    public static <init>[] createList(String s)
        throws Exception
    {
        s = s.trim().split(" ");
        if (s == null)
        {
            throw new Exception("str does not match pattern '(number,number) (number,number) ... (number,number)'");
        }
        if (s.length < 3)
        {
            throw new Exception("str contains 3 points only");
        }
        ArrayList arraylist = new ArrayList();
        int j = s.length;
        for (int i = 0; i < j; i++)
        {
            arraylist.add(createInstance(s[i]));
        }

        return (createInstance[])arraylist.toArray(new createInstance[0]);
    }

    public A()
    {
    }

    public A(double d, double d1)
    {
        x = d;
        y = d1;
    }
}
