// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

// Referenced classes of package com.paypal.android.sdk:
//            ay, br

final class az extends Handler
{

    private WeakReference a;

    public az(ay ay1)
    {
        a = new WeakReference(ay1);
    }

    public final void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 2 2: default 24
    //                   2 25;
           goto _L1 _L2
_L1:
        ay ay1;
        return;
_L2:
        if ((ay1 = (ay)a.get()) != null)
        {
            ay.a(ay1, (br)message.obj);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }
}
