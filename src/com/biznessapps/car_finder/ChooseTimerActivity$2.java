// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.car_finder;

import android.content.Intent;
import android.view.View;
import com.biznessapps.widgets.wheel.WheelView;

// Referenced classes of package com.biznessapps.car_finder:
//            ChooseTimerActivity

class val.mins
    implements android.view.merActivity._cls2
{

    final ChooseTimerActivity this$0;
    final WheelView val$hours;
    final WheelView val$mins;

    public void onClick(View view)
    {
        view = new Intent();
        ChooseTimerActivity.access$002(ChooseTimerActivity.this, val$hours.getCurrentItem());
        ChooseTimerActivity.access$102(ChooseTimerActivity.this, val$mins.getCurrentItem());
        view.putExtra("HOURS_EXTRA", ChooseTimerActivity.access$000(ChooseTimerActivity.this));
        view.putExtra("MINUTES_EXTRA", ChooseTimerActivity.access$100(ChooseTimerActivity.this));
        setResult(20, view);
        finish();
    }

    ()
    {
        this$0 = final_choosetimeractivity;
        val$hours = wheelview;
        val$mins = WheelView.this;
        super();
    }
}
