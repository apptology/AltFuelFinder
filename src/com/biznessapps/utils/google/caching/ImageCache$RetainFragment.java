// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils.google.caching;

import android.os.Bundle;
import android.support.v4.app.Fragment;

// Referenced classes of package com.biznessapps.utils.google.caching:
//            ImageCache

public static class  extends Fragment
{

    private Object mObject;

    public Object getObject()
    {
        return mObject;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    public void setObject(Object obj)
    {
        mObject = obj;
    }

    public ()
    {
    }
}
