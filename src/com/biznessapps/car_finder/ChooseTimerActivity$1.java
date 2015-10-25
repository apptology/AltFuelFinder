// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.car_finder;

import com.biznessapps.widgets.wheel.WheelView;

// Referenced classes of package com.biznessapps.car_finder:
//            ChooseTimerActivity

class val.mins
    implements com.biznessapps.widgets.wheel.edListener
{

    final ChooseTimerActivity this$0;
    final WheelView val$hours;
    final WheelView val$mins;

    public void onStateChanged(WheelView wheelview)
    {
        ChooseTimerActivity.access$002(ChooseTimerActivity.this, val$hours.getCurrentItem());
        ChooseTimerActivity.access$102(ChooseTimerActivity.this, val$mins.getCurrentItem());
    }

    angedListener()
    {
        this$0 = final_choosetimeractivity;
        val$hours = wheelview;
        val$mins = WheelView.this;
        super();
    }
}
