// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;

import java.util.HashMap;

// Referenced classes of package com.biznessapps.api:
//            ActivitySelector

static final class  extends HashMap
{

    private static final long serialVersionUID = 0xd7c24321a913bb2dL;

    public Class put(String s, Class class1)
    {
        return (Class)super.put(s.toLowerCase(), class1);
    }

    public volatile Object put(Object obj, Object obj1)
    {
        return put((String)obj, (Class)obj1);
    }

    ()
    {
    }
}
