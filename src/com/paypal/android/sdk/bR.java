// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;


// Referenced classes of package com.paypal.android.sdk:
//            aF, cv, br, bQ, 
//            cq, cl, cx, cm, 
//            cj, ck, ch, co, 
//            cp

public final class bR
    implements aF
{

    private bQ a;

    public bR(bQ bq)
    {
        a = bq;
    }

    public final void a(br br1)
    {
        if (br1 instanceof cv)
        {
            if (br1.r())
            {
                a.a((cv)br1);
                return;
            } else
            {
                a.b((cv)br1);
                return;
            }
        }
        if (br1 instanceof cq)
        {
            if (br1.r())
            {
                a.a((cq)br1);
                return;
            } else
            {
                a.b((cq)br1);
                return;
            }
        }
        if (br1 instanceof cl)
        {
            if (br1.r())
            {
                a.a((cl)br1);
                return;
            } else
            {
                a.b((cl)br1);
                return;
            }
        }
        if (br1 instanceof cx)
        {
            if (br1.r())
            {
                a.a((cx)br1);
                return;
            } else
            {
                a.b((cx)br1);
                return;
            }
        }
        if (br1 instanceof cm)
        {
            if (br1.r())
            {
                a.a();
                return;
            } else
            {
                a.a((cm)br1);
                return;
            }
        }
        if (br1 instanceof cj)
        {
            if (br1.r())
            {
                a.a((cj)br1);
                return;
            } else
            {
                a.b((cj)br1);
                return;
            }
        }
        if (br1 instanceof ck)
        {
            if (br1.r())
            {
                a.a((ck)br1);
                return;
            } else
            {
                a.b((ck)br1);
                return;
            }
        }
        if (br1 instanceof ch)
        {
            if (br1.r())
            {
                a.a((ch)br1);
                return;
            } else
            {
                a.b((ch)br1);
                return;
            }
        }
        if (br1 instanceof co)
        {
            if (br1.r())
            {
                a.a((co)br1);
                return;
            } else
            {
                a.b((co)br1);
                return;
            }
        }
        if (br1 instanceof cp)
        {
            if (br1.r())
            {
                a.a((cp)br1);
                return;
            } else
            {
                a.b((cp)br1);
                return;
            }
        } else
        {
            throw new RuntimeException("not handled");
        }
    }
}
