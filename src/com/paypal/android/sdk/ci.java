// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;


// Referenced classes of package com.paypal.android.sdk:
//            bq, bw, bx, bs, 
//            c

public abstract class ci extends bq
{

    public ci(bx bx, bs bs, c c, String s)
    {
        super(new bw(bx), bs, c, (new StringBuilder("Bearer ")).append(s).toString());
        a("Content-Type", "application/json");
        a("Accept", "application/json");
    }
}
