// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.wheel;

import android.view.MotionEvent;
import android.widget.Scroller;

// Referenced classes of package com.biznessapps.widgets.wheel:
//            WheelScroller

class stener extends android.view.SimpleOnGestureListener
{

    final WheelScroller this$0;

    public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        WheelScroller.access$002(WheelScroller.this, 0);
        WheelScroller.access$100(WheelScroller.this).fling(0, WheelScroller.access$000(WheelScroller.this), 0, (int)(-f1), 0, 0, 0x80000001, 0x7fffffff);
        WheelScroller.access$200(WheelScroller.this, 0);
        return true;
    }

    public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        return true;
    }

    stener()
    {
        this$0 = WheelScroller.this;
        super();
    }
}
