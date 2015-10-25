// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import com.paypal.android.sdk.bv;
import com.paypal.android.sdk.cE;
import com.paypal.android.sdk.cd;
import com.paypal.android.sdk.g;

class bD
{

    private static final String a = com/paypal/android/sdk/payments/bD.getSimpleName();

    bD()
    {
    }

    static String a()
    {
        String s = bv.a().c().a();
        return String.format("https://www.paypal.com/signup/account?country.x=%s&locale.x=%s", new Object[] {
            s, cE.c(s)
        });
    }

}
