// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.parallax;

import android.support.v4.view.GestureDetectorCompat;
import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.biznessapps.widgets.animation.parallax:
//            ParallaxViewPager

class this._cls0
    implements android.view.
{

    final ParallaxViewPager this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        ParallaxViewPager.access$100(ParallaxViewPager.this).onTouchEvent(motionevent);
        int i = motionevent.getActionMasked();
        view = ParallaxViewPager.this;
        boolean flag;
        if (i == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ParallaxViewPager.access$202(view, flag);
        if (i == 0)
        {
            stopAutoFlipTimer();
            ParallaxViewPager.access$300(ParallaxViewPager.this);
        }
        if (i == 1)
        {
            startAutoFlipTimer();
        }
        return false;
    }

    ()
    {
        this$0 = ParallaxViewPager.this;
        super();
    }
}
