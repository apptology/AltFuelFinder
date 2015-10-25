// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.view.MotionEvent;

// Referenced classes of package com.biznessapps.utils:
//            ViewUtils

static final class ener extends android.view.or.SimpleOnGestureListener
{

    final Runnable val$whatToRun;

    public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        if (motionevent != null && motionevent1 != null && motionevent1.getY() - motionevent.getY() > 100F && Math.abs(f1) > 30F)
        {
            val$whatToRun.run();
            return true;
        } else
        {
            return false;
        }
    }

    OnGestureListener(Runnable runnable)
    {
        val$whatToRun = runnable;
        super();
    }
}
