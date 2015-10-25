// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.car_finder;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.widgets.wheel.DigitalWheelAdapter;
import com.biznessapps.widgets.wheel.WheelView;

public class ChooseTimerActivity extends CommonFragmentActivity
{

    private int numberOfHours;
    private int numberOfMinutes;

    public ChooseTimerActivity()
    {
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.choose_time_layout;
    }

    protected boolean hasNavigationMenu()
    {
        return false;
    }

    protected boolean hasTitleBar()
    {
        return false;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        bundle = (Button)findViewById(com.biznessapps.layout.R.id.set_timer_button);
        Button button = (Button)findViewById(com.biznessapps.layout.R.id.stop_timer_button);
        final WheelView hours = (WheelView)findViewById(com.biznessapps.layout.R.id.hour);
        hours.setViewAdapter(new DigitalWheelAdapter(this, 0, 23));
        final WheelView mins = (WheelView)findViewById(com.biznessapps.layout.R.id.mins);
        mins.setViewAdapter(new DigitalWheelAdapter(this, 0, 59, "%02d"));
        mins.setCyclic(true);
        hours.setCurrentItem(0);
        mins.setCurrentItem(1);
        Object obj = (TextView)findViewById(com.biznessapps.layout.R.id.hours_label_view);
        TextView textview = (TextView)findViewById(com.biznessapps.layout.R.id.mins_label_view);
        ((TextView) (obj)).setText(com.biznessapps.layout.R.string.hours);
        textview.setText(com.biznessapps.layout.R.string.mins);
        bundle.setText(com.biznessapps.layout.R.string.set_timer);
        button.setText(com.biznessapps.layout.R.string.stop_timer);
        obj = new com.biznessapps.widgets.wheel.WheelView.OnStateChangedListener() {

            final ChooseTimerActivity this$0;
            final WheelView val$hours;
            final WheelView val$mins;

            public void onStateChanged(WheelView wheelview)
            {
                numberOfHours = hours.getCurrentItem();
                numberOfMinutes = mins.getCurrentItem();
            }

            
            {
                this$0 = ChooseTimerActivity.this;
                hours = wheelview;
                mins = wheelview1;
                super();
            }
        };
        hours.addChangingListener(((com.biznessapps.widgets.wheel.WheelView.OnStateChangedListener) (obj)));
        mins.addChangingListener(((com.biznessapps.widgets.wheel.WheelView.OnStateChangedListener) (obj)));
        bundle.setOnClickListener(new android.view.View.OnClickListener() {

            final ChooseTimerActivity this$0;
            final WheelView val$hours;
            final WheelView val$mins;

            public void onClick(View view)
            {
                view = new Intent();
                numberOfHours = hours.getCurrentItem();
                numberOfMinutes = mins.getCurrentItem();
                view.putExtra("HOURS_EXTRA", numberOfHours);
                view.putExtra("MINUTES_EXTRA", numberOfMinutes);
                setResult(20, view);
                finish();
            }

            
            {
                this$0 = ChooseTimerActivity.this;
                hours = wheelview;
                mins = wheelview1;
                super();
            }
        });
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final ChooseTimerActivity this$0;

            public void onClick(View view)
            {
                setResult(21);
                finish();
            }

            
            {
                this$0 = ChooseTimerActivity.this;
                super();
            }
        });
    }



/*
    static int access$002(ChooseTimerActivity choosetimeractivity, int i)
    {
        choosetimeractivity.numberOfHours = i;
        return i;
    }

*/



/*
    static int access$102(ChooseTimerActivity choosetimeractivity, int i)
    {
        choosetimeractivity.numberOfMinutes = i;
        return i;
    }

*/
}
