// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.paypal.android.sdk:
//            Z, au

final class aa extends TimerTask
{

    private Z a;

    aa(Z z)
    {
        a = z;
        super();
    }

    public final void run()
    {
        Z.a(a);
        au.a(Z.h(), (new StringBuilder("****** LogRiskMetadataTask #")).append(Z.b(a)).toString());
        if (Z.c(a))
        {
            au.a(Z.h(), (new StringBuilder("No host activity in the last ")).append(Z.d(a) / 1000L).append(" seconds. Stopping update interval.").toString());
            Z.e(a).cancel();
            return;
        }
        try
        {
            Z.f(a);
            return;
        }
        catch (Exception exception)
        {
            au.a(Z.h(), "Error in logRiskMetadataTask: ", exception);
        }
    }
}
