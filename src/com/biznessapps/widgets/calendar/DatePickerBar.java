// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.calendar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.biznessapps.utils.CommonUtils;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DatePickerBar extends LinearLayout
{
    public static interface DatePickerBarButtonListener
    {

        public abstract void onDateChanged(DatePickerBar datepickerbar);
    }


    private ImageButton backButton;
    private ImageView iconView;
    private DatePickerBarButtonListener listener;
    private ImageButton nextButton;
    private Date pickerDate;
    private TextView titleView;

    public DatePickerBar(Context context)
    {
        this(context, null);
    }

    public DatePickerBar(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        pickerDate = new Date();
        context = (ViewGroup)((LayoutInflater)context.getSystemService("layout_inflater")).inflate(com.biznessapps.layout.R.layout.datepickerbar_layout, null);
        addView(context);
        initViews(context);
    }

    private void initViews(ViewGroup viewgroup)
    {
        backButton = (ImageButton)viewgroup.findViewById(com.biznessapps.layout.R.id.datepickerbar_left_button);
        nextButton = (ImageButton)viewgroup.findViewById(com.biznessapps.layout.R.id.datepickerbar_right_button);
        backButton.setVisibility(8);
        nextButton.setVisibility(8);
        titleView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.datepickerbar_date);
        iconView = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.datepickerbar_icon);
        updateTitle();
        backButton.setOnClickListener(new android.view.View.OnClickListener() {

            final DatePickerBar this$0;

            public void onClick(View view)
            {
                previousDate();
            }

            
            {
                this$0 = DatePickerBar.this;
                super();
            }
        });
        nextButton.setOnClickListener(new android.view.View.OnClickListener() {

            final DatePickerBar this$0;

            public void onClick(View view)
            {
                nextDate();
            }

            
            {
                this$0 = DatePickerBar.this;
                super();
            }
        });
    }

    public DatePickerBarButtonListener getListener()
    {
        return listener;
    }

    public Date getPickerDate()
    {
        return pickerDate;
    }

    public void nextDate()
    {
        setPickerDate(new Date(pickerDate.getTime() + 0x5265c00L));
    }

    public void previousDate()
    {
        setPickerDate(new Date(pickerDate.getTime() - 0x5265c00L));
    }

    public void setColor(int i)
    {
        titleView.setTextColor(i);
        CommonUtils.overrideImageColor(i, iconView.getDrawable());
    }

    public void setListener(DatePickerBarButtonListener datepickerbarbuttonlistener)
    {
        listener = datepickerbarbuttonlistener;
    }

    public void setPickerDate(Date date)
    {
        pickerDate = date;
        updateTitle();
        if (listener != null)
        {
            listener.onDateChanged(this);
        }
    }

    public void updateTitle()
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("EEE MMM d yyyy");
        titleView.setText(simpledateformat.format(pickerDate));
    }
}
