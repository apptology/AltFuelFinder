// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.view.View;

// Referenced classes of package com.biznessapps.fan_wall:
//            LoadMoreBuilder

static final class val.clickAction
    implements android.view.er
{

    final Runnable val$clickAction;

    public void onClick(View view)
    {
        val$clickAction.run();
    }

    (Runnable runnable)
    {
        val$clickAction = runnable;
        super();
    }
}
