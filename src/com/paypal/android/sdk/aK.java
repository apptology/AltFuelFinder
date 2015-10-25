// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;


public final class aK extends Enum
{

    public static final aK a;
    public static final aK b;
    public static final aK c;
    private static aK d;
    private static aK e;
    private static final aK f[];

    private aK(String s, int i)
    {
        super(s, i);
    }

    public static aK valueOf(String s)
    {
        return (aK)Enum.valueOf(com/paypal/android/sdk/aK, s);
    }

    public static aK[] values()
    {
        return (aK[])f.clone();
    }

    static 
    {
        a = new aK("GET", 0);
        b = new aK("POST", 1);
        d = new aK("PUT", 2);
        c = new aK("DELETE", 3);
        e = new aK("HEAD", 4);
        f = (new aK[] {
            a, b, d, c, e
        });
    }
}
