// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.view.KeyEvent;
import android.view.View;

// Referenced classes of package com.biznessapps.utils:
//            ViewUtils

static final class val.runnable
    implements android.view.tener
{

    final Runnable val$runnable;

    public boolean onKey(View view, int i, KeyEvent keyevent)
    {
        if (keyevent.getAction() == 0 && i == 66)
        {
            val$runnable.run();
        }
        return false;
    }

    (Runnable runnable1)
    {
        val$runnable = runnable1;
        super();
    }
}
