// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.TimerTask;

// Referenced classes of package com.paypal.android.sdk:
//            Z, au, ai, al

final class ab extends TimerTask
{

    private Z a;

    ab(Z z)
    {
        a = z;
        super();
    }

    public final void run()
    {
        Z.g(a);
        au.a(Z.h(), (new StringBuilder("****** LoadConfigurationTask #")).append(Z.h(a)).toString());
        ai ai1 = new ai(Z.i(a), Z.j(a), Z.k(a));
        al.a().a(ai1);
    }
}
