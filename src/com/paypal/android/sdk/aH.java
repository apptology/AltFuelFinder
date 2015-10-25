// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;


public final class aH extends Enum
{

    public static final aH a;
    public static final aH b;
    public static final aH c;
    public static final aH d;
    private static final aH e[];

    private aH(String s, int i)
    {
        super(s, i);
    }

    public static aH valueOf(String s)
    {
        return (aH)Enum.valueOf(com/paypal/android/sdk/aH, s);
    }

    public static aH[] values()
    {
        return (aH[])e.clone();
    }

    static 
    {
        a = new aH("INTERNAL_SERVER_ERROR", 0);
        b = new aH("SERVER_COMMUNICATION_ERROR", 1);
        c = new aH("PARSE_RESPONSE_ERROR", 2);
        d = new aH("INTERNAL_ERROR", 3);
        e = (new aH[] {
            a, b, c, d
        });
    }
}
