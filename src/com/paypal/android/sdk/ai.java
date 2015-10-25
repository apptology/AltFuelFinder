// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import android.content.Context;
import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.paypal.android.sdk:
//            ak, au, V, al

public class ai extends ak
{

    private static final String a = com/paypal/android/sdk/ai.getSimpleName();
    private Context b;
    private String c;
    private Handler d;

    public ai(Context context, String s, Handler handler)
    {
        b = context;
        c = s;
        d = handler;
    }

    public void run()
    {
        au.a(a, "entering LoadConfigurationRequest.");
        if (d == null)
        {
            return;
        }
        d.sendMessage(Message.obtain(d, 10, c));
        V v = new V(b, c);
        d.sendMessage(Message.obtain(d, 12, v));
        al.a().b(this);
_L2:
        au.a(a, "leaving LoadConfigurationRequest.");
        return;
        Object obj;
        obj;
        au.a(a, "LoadConfigurationRequest loading remote config failed.", ((Throwable) (obj)));
        d.sendMessage(Message.obtain(d, 11, obj));
        al.a().b(this);
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        al.a().b(this);
        throw obj;
    }

}
