// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.dynamic;

import java.util.Iterator;
import java.util.LinkedList;

// Referenced classes of package com.google.android.gms.dynamic:
//            f, a, LifecycleDelegate

class Hn
    implements f
{

    final a Hn;

    public void a(LifecycleDelegate lifecycledelegate)
    {
        com.google.android.gms.dynamic.a.a(Hn, lifecycledelegate);
        for (lifecycledelegate = com.google.android.gms.dynamic.a.a(Hn).iterator(); lifecycledelegate.hasNext(); ((Hn)lifecycledelegate.next()).b(com.google.android.gms.dynamic.a.b(Hn))) { }
        com.google.android.gms.dynamic.a.a(Hn).clear();
        com.google.android.gms.dynamic.a.a(Hn, null);
    }

    cycleDelegate(a a1)
    {
        Hn = a1;
        super();
    }
}
