// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;


final class bk extends Enum
{

    public static final bk a;
    public static final bk b;
    public static final bk c;
    private static final bk d[];

    private bk(String s, int i)
    {
        super(s, i);
    }

    public static bk valueOf(String s)
    {
        return (bk)Enum.valueOf(com/paypal/android/sdk/payments/bk, s);
    }

    public static bk[] values()
    {
        return (bk[])d.clone();
    }

    static 
    {
        a = new bk("PayPal", 0);
        b = new bk("CreditCard", 1);
        c = new bk("CreditCardToken", 2);
        d = (new bk[] {
            a, b, c
        });
    }
}
