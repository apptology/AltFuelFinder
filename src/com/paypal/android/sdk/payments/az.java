// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import java.util.TimerTask;

// Referenced classes of package com.paypal.android.sdk.payments:
//            ay, PayPalProfileSharingActivity

final class az extends TimerTask
{

    private ay a;

    az(ay ay1)
    {
        a = ay1;
        super();
    }

    public final void run()
    {
        PayPalProfileSharingActivity.c(a.a);
    }
}
