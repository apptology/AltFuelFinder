// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import android.widget.LinearLayout;
import com.paypal.android.sdk.cE;
import com.paypal.android.sdk.cG;
import com.paypal.android.sdk.cH;
import com.paypal.android.sdk.co;

// Referenced classes of package com.paypal.android.sdk.payments:
//            aF, p, aI, d

final class v
    implements aF
{

    private p a;

    v(p p1)
    {
        a = p1;
        super();
    }

    public final void a(aI ai)
    {
        a.dismissDialog(2);
        if (ai.b.equals("invalid_nonce"))
        {
            a.c.h.setEnabled(false);
            d.a(a, cE.a(cG.aL), 4);
            return;
        } else
        {
            a.c.h.setEnabled(true);
            d.a(a, cE.a(ai.b), 1);
            return;
        }
    }

    public final void a(Object obj)
    {
        if (obj instanceof co)
        {
            p.a(a, (co)obj);
            return;
        } else
        {
            p.b(a);
            return;
        }
    }
}
