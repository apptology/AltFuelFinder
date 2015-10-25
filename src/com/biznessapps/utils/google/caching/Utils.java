// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils.google.caching;


public class Utils
{

    private Utils()
    {
    }

    public static boolean hasFroyo()
    {
        return android.os.Build.VERSION.SDK_INT >= 8;
    }

    public static boolean hasGingerbread()
    {
        return false;
    }

    public static boolean hasHoneycomb()
    {
        return false;
    }

    public static boolean hasHoneycombMR1()
    {
        return false;
    }

    public static boolean hasJellyBean()
    {
        return false;
    }
}
