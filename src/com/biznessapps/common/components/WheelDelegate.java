// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.components;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.biznessapps.widgets.wheel.AbstractWheelTextAdapter;
import com.biznessapps.widgets.wheel.DigitalWheelAdapter;
import com.biznessapps.widgets.wheel.WheelView;
import java.text.DateFormat;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.biznessapps.common.components:
//            OnWheelDelegateVisibleListener, OnTargetChangedListener

public class WheelDelegate
{
    private class DateNumericAdapter extends DigitalWheelAdapter
    {

        int currentItem;
        int currentValue;
        final WheelDelegate this$0;

        public View getItem(int i, View view, ViewGroup viewgroup)
        {
            currentItem = i;
            return super.getItem(i, view, viewgroup);
        }

        public DateNumericAdapter(Context context1, int i, int j, int k)
        {
            this$0 = WheelDelegate.this;
            super(context1, i, j);
            currentValue = k;
        }
    }

    private class TextArrayAdapter extends AbstractWheelTextAdapter
    {

        private List labels;
        final WheelDelegate this$0;

        public View getItem(int i, View view, ViewGroup viewgroup)
        {
            view = super.getItem(i, view, viewgroup);
            ((TextView)view.findViewById(com.biznessapps.layout.R.id.description)).setText((CharSequence)labels.get(i));
            return view;
        }

        protected CharSequence getItemText(int i)
        {
            return "";
        }

        public int getItemsCount()
        {
            return labels.size();
        }

        protected TextArrayAdapter(Context context1, List list)
        {
            this$0 = WheelDelegate.this;
            super(context1, com.biznessapps.layout.R.layout.wheel_item_row, 0);
            labels = list;
            setItemTextResource(com.biznessapps.layout.R.id.description);
        }
    }


    private static final int AFTER_YEARS_OFFSET = 5;
    private static final int BEFORE_YEARS_OFFSET = 114;
    private String CALENDAR_STRING_FORMAT;
    private Context context;
    private WheelView day;
    private OnWheelDelegateVisibleListener mVisibleListener;
    private int maxYear;
    private int minYear;
    private WheelView month;
    private OnTargetChangedListener targetChangedListener;
    private TextView targetTextView;
    private ViewGroup wheelContainer;
    private WheelView year;

    public WheelDelegate()
    {
        CALENDAR_STRING_FORMAT = "yyyy-MM-dd";
    }

    public WheelDelegate(ViewGroup viewgroup, Context context1, List list, boolean flag)
    {
        CALENDAR_STRING_FORMAT = "yyyy-MM-dd";
        initView(viewgroup, context1, list, flag, null);
    }

    public WheelDelegate(ViewGroup viewgroup, Context context1, List list, boolean flag, TextView textview)
    {
        CALENDAR_STRING_FORMAT = "yyyy-MM-dd";
        initView(viewgroup, context1, list, flag, textview);
    }

    private void updateDays(WheelView wheelview, WheelView wheelview1, WheelView wheelview2)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, calendar.get(1) + wheelview.getCurrentItem());
        calendar.set(2, wheelview1.getCurrentItem());
        int i = calendar.getActualMaximum(5);
        wheelview2.setViewAdapter(new DateNumericAdapter(context, 1, i, calendar.get(5) - 1));
        wheelview2.setCurrentItem(Math.min(i, wheelview2.getCurrentItem() + 1) - 1, true);
    }

    public String getCalendarStringFormat()
    {
        return CALENDAR_STRING_FORMAT;
    }

    public void hide()
    {
        wheelContainer.setVisibility(8);
        if (mVisibleListener != null)
        {
            mVisibleListener.onHide(this, targetTextView);
        }
    }

    public void init(ViewGroup viewgroup, Context context1, List list, boolean flag, TextView textview)
    {
        initView(viewgroup, context1, list, flag, textview);
    }

    public void initView(ViewGroup viewgroup, Context context1, final List labels, final boolean useCalendarMode, TextView textview)
    {
        context = context1;
        wheelContainer = viewgroup;
        targetTextView = textview;
        textview = Calendar.getInstance();
        month = (WheelView)viewgroup.findViewById(com.biznessapps.layout.R.id.month);
        year = (WheelView)viewgroup.findViewById(com.biznessapps.layout.R.id.year);
        day = (WheelView)viewgroup.findViewById(com.biznessapps.layout.R.id.day);
        int j;
        if (useCalendarMode)
        {
            com.biznessapps.widgets.wheel.WheelView.OnStateChangedListener onstatechangedlistener = new com.biznessapps.widgets.wheel.WheelView.OnStateChangedListener() {

                final WheelDelegate this$0;

                public void onStateChanged(WheelView wheelview)
                {
                    updateDays(year, month, day);
                }

            
            {
                this$0 = WheelDelegate.this;
                super();
            }
            };
            int i = textview.get(2);
            ArrayList arraylist = new ArrayList(Arrays.asList((new DateFormatSymbols(Locale.getDefault())).getMonths()));
            month.setViewAdapter(new TextArrayAdapter(context1, arraylist));
            month.setCurrentItem(i);
            month.addChangingListener(onstatechangedlistener);
            i = textview.get(1);
            minYear = i - 114;
            maxYear = i + 5;
            year.setViewAdapter(new DateNumericAdapter(context1, minYear, maxYear, 113));
            year.setCurrentItem(i - minYear);
            year.addChangingListener(onstatechangedlistener);
            updateDays(year, month, day);
            day.setCurrentItem(textview.get(5) - 1);
        } else
        {
            viewgroup.findViewById(com.biznessapps.layout.R.id.appt_delimeter_one).setVisibility(8);
            viewgroup.findViewById(com.biznessapps.layout.R.id.appt_delimeter_two).setVisibility(8);
            year.setVisibility(8);
            day.setVisibility(8);
            month.setViewAdapter(new TextArrayAdapter(context1, labels));
            month.setCurrentItem(0);
        }
        if (useCalendarMode)
        {
            j = 0;
        } else
        {
            j = 8;
        }
        viewgroup.findViewById(com.biznessapps.layout.R.id.appt_delimeter_one).setVisibility(j);
        viewgroup.findViewById(com.biznessapps.layout.R.id.appt_delimeter_two).setVisibility(j);
        year.setVisibility(j);
        day.setVisibility(j);
        context1 = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.set_button);
        viewgroup = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.cancel_button);
        context1.setOnClickListener(new android.view.View.OnClickListener() {

            final WheelDelegate this$0;
            final List val$labels;
            final boolean val$useCalendarMode;

            public void onClick(View view)
            {
                if (useCalendarMode)
                {
                    view = Calendar.getInstance();
                    view.set(1, (view.get(1) - 114) + year.getCurrentItem());
                    view.set(2, month.getCurrentItem());
                    view.set(5, day.getCurrentItem() + 1);
                    view = (new SimpleDateFormat(CALENDAR_STRING_FORMAT, Locale.getDefault())).format(view.getTime());
                } else
                {
                    view = (String)labels.get(month.getCurrentItem());
                }
                if (targetChangedListener != null)
                {
                    targetChangedListener.onChanged(targetTextView.getText().toString(), view);
                }
                targetTextView.setText(view);
                hide();
            }

            
            {
                this$0 = WheelDelegate.this;
                useCalendarMode = flag;
                labels = list;
                super();
            }
        });
        viewgroup.setOnClickListener(new android.view.View.OnClickListener() {

            final WheelDelegate this$0;

            public void onClick(View view)
            {
                hide();
            }

            
            {
                this$0 = WheelDelegate.this;
                super();
            }
        });
        context1.setText(com.biznessapps.layout.R.string.set);
        viewgroup.setText(com.biznessapps.layout.R.string.cancel);
    }

    public void setCalendarStringFormat(String s)
    {
        CALENDAR_STRING_FORMAT = s;
    }

    public void setDate(long l)
    {
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        gregoriancalendar.setTimeInMillis(l);
        year.setCurrentItem(gregoriancalendar.get(1) - minYear);
        month.setCurrentItem(gregoriancalendar.get(2));
        day.setCurrentItem(gregoriancalendar.get(5) - 1);
    }

    public void setOnTargetChangedListener(OnTargetChangedListener ontargetchangedlistener)
    {
        targetChangedListener = ontargetchangedlistener;
    }

    public void setOnVisibleListener(OnWheelDelegateVisibleListener onwheeldelegatevisiblelistener)
    {
        mVisibleListener = onwheeldelegatevisiblelistener;
    }

    public void setTargetView(TextView textview)
    {
        targetTextView = textview;
    }

    public void show()
    {
        wheelContainer.setVisibility(0);
        if (mVisibleListener != null)
        {
            mVisibleListener.onShow(this, targetTextView);
        }
    }







}
