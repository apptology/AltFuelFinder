// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.biznessapps.utils:
//            ViewUtils

static final class val.gestureListener
    implements android.view.istener
{

    final GestureDetector val$gestureListener;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        return val$gestureListener.onTouchEvent(motionevent);
    }

    (GestureDetector gesturedetector)
    {
        val$gestureListener = gesturedetector;
        super();
    }
}
