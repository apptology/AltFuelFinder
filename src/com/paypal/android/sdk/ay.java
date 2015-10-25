// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import android.os.Message;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            bs, aD, az, ax, 
//            bp, bn, br, Z, 
//            b, c, aF

public class ay
    implements bs
{

    private static final String a = com/paypal/android/sdk/ay.getSimpleName();
    private final b b;
    private az c;
    private ax d;
    private final aD e = new aD();
    private bn f;

    public ay(b b1, ax ax1, c c1)
    {
        b = b1;
        d = ax1;
        c = new az(this);
    }

    static void a(ay ay1, br br1)
    {
        ay1.e.a(br1, 0L);
    }

    public final String a(bp bp1)
    {
        (new StringBuilder("environment:")).append(d).append(" environment.getEndpoints():").append(d.b());
        if (d != null && d.b() != null)
        {
            bp1 = (String)d.b().get(bp1.a());
            (new StringBuilder("returning:")).append(bp1);
            return bp1;
        } else
        {
            return null;
        }
    }

    public final void a()
    {
        f.a();
    }

    public final void a(aF af)
    {
        e.a(af);
    }

    public final void a(bn bn1)
    {
        if (f != null)
        {
            throw new IllegalStateException();
        } else
        {
            f = bn1;
            return;
        }
    }

    public final void a(br br1)
    {
        br1.m();
        Z.a().f();
        if (!br1.a())
        {
            Message message = new Message();
            message.what = 2;
            message.obj = br1;
            c.sendMessage(message);
        }
    }

    public final void b()
    {
        e.a();
    }

    public final void b(br br1)
    {
        f.a(br1);
    }

    public final String c()
    {
        return d.a();
    }

    public final b d()
    {
        return b;
    }

}
