// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.internal:
//            jf, jg

class b extends com.google.android.gms.wallet.t.b
{

    final int Nx;
    final jf acV;
    final String acY;
    final String acZ;

    protected volatile void a(com.google.android.gms.common.api. )
        throws RemoteException
    {
        a((jg));
    }

    protected void a(jg jg1)
    {
        jg1.d(acY, acZ, Nx);
        a(((com.google.android.gms.common.api.Result) (Status.Bv)));
    }

    .a(jf jf1, String s, String s1, int i)
    {
        acV = jf1;
        acY = s;
        acZ = s1;
        Nx = i;
        super();
    }
}
