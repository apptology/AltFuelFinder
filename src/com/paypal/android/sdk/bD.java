// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;


public final class bD extends Enum
{

    public static final bD a;
    public static final bD b;
    private static final bD c[];

    private bD(String s, int i)
    {
        super(s, i);
    }

    public static bD valueOf(String s)
    {
        return (bD)Enum.valueOf(com/paypal/android/sdk/bD, s);
    }

    public static bD[] values()
    {
        return (bD[])c.clone();
    }

    static 
    {
        a = new bD("EMAIL", 0);
        b = new bD("PHONE", 1);
        c = (new bD[] {
            a, b
        });
    }
}
