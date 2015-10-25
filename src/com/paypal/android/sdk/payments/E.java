// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

// Referenced classes of package com.paypal.android.sdk.payments:
//            D

final class E extends Handler
{

    private D a;

    E(D d, Looper looper)
    {
        a = d;
        super(looper);
    }

    public final void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            super.handleMessage(message);
            return;

        case 1: // '\001'
            D.a(a);
            break;
        }
    }
}
