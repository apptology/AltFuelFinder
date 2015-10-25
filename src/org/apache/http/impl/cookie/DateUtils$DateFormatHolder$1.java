// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.cookie;

import java.lang.ref.SoftReference;
import java.util.HashMap;

// Referenced classes of package org.apache.http.impl.cookie:
//            DateUtils

static class  extends ThreadLocal
{

    protected volatile Object initialValue()
    {
        return initialValue();
    }

    protected SoftReference initialValue()
    {
        return new SoftReference(new HashMap());
    }

    ()
    {
    }
}
