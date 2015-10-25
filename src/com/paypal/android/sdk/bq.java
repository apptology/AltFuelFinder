// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import android.text.TextUtils;

// Referenced classes of package com.paypal.android.sdk:
//            br, c, bp, bs

public abstract class bq extends br
{

    public bq(bp bp, bs bs, c c1, String s)
    {
        this(bp, bs, c1, s, null);
    }

    public bq(bp bp, bs bs, c c1, String s, String s1)
    {
        super(bp, bs, c1, s1);
        if (!TextUtils.isEmpty(s))
        {
            a("Authorization", s);
        }
        a("User-Agent", f().b());
    }

    static 
    {
        com/paypal/android/sdk/bq.getSimpleName();
    }
}
