// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;


// Referenced classes of package com.paypal.android.sdk.payments:
//            aF, aI, LoginActivity

final class ai
    implements aF
{

    private LoginActivity a;

    ai(LoginActivity loginactivity)
    {
        a = loginactivity;
        super();
    }

    public final void a(aI ai1)
    {
        if (ai1.b())
        {
            LoginActivity.d(a);
            return;
        } else
        {
            LoginActivity.a(a, ai1.b);
            return;
        }
    }

    public final void a(Object obj)
    {
        LoginActivity.c(a);
    }
}
