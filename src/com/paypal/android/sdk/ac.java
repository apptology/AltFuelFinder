// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

// Referenced classes of package com.paypal.android.sdk:
//            Z

final class ac extends Handler
{

    private final WeakReference a;

    public ac(Z z)
    {
        a = new WeakReference(z);
    }

    public final void handleMessage(Message message)
    {
        Z z = (Z)a.get();
        if (z != null)
        {
            z.a(message);
        }
    }
}
