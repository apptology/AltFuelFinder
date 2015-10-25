// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;


// Referenced classes of package com.paypal.android.sdk:
//            bf, br, bp, bs, 
//            d

final class bg
    implements Runnable
{

    private br a;
    private bf b;

    bg(bf bf1, br br1)
    {
        b = bf1;
        a = br1;
        super();
    }

    public final void run()
    {
        bf.c();
        (new StringBuilder("Mock executing ")).append(a.o()).append(" request: ").append(a.g());
        if (b.c(a))
        {
            String s = b.a();
            a.i().a();
            (new StringBuilder("mock failure:\n")).append(s);
            a.b(s);
            bf.a(a, b.b());
        } else
        {
            String s1 = a.e();
            if (d.c(s1))
            {
                throw new RuntimeException((new StringBuilder("Blank mock value for ")).append(a.i()).toString());
            }
            a.i().a();
            (new StringBuilder("mock response:")).append(s1);
            a.b(s1);
            bf.a(a);
        }
        if (!a.a())
        {
            try
            {
                bf.c();
                (new StringBuilder("sleep for [")).append(b.b).append(" ms].");
                Thread.sleep(b.b);
                bf.c();
                (new StringBuilder("end [")).append(b.b).append(" ms] sleep");
            }
            catch (InterruptedException interruptedexception)
            {
                a.i().a();
            }
            b.a.a(a);
        }
    }
}
