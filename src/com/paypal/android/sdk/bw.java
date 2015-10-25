// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.paypal.android.sdk:
//            bp, bx, aK

public final class bw
    implements bp
{

    private bx a;

    public bw(bx bx1)
    {
        a = bx1;
    }

    public static List d()
    {
        ArrayList arraylist = new ArrayList();
        bx abx[] = bx.values();
        int j = abx.length;
        for (int i = 0; i < j; i++)
        {
            arraylist.add(new bw(abx[i]));
        }

        return arraylist;
    }

    public final String a()
    {
        return a.name();
    }

    public final aK b()
    {
        return a.a();
    }

    public final String c()
    {
        return a.b();
    }
}
