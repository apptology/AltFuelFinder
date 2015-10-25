// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.calendar;

import android.content.Context;
import android.util.AttributeSet;
import android.util.MonthDisplayHelper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.lang.reflect.Array;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.biznessapps.widgets.calendar:
//            CalendarCellData, CalendarAdapter

public class CalendarView extends LinearLayout
{
    public static interface OnCellTouchListener
    {

        public abstract void onTouch(View view);
    }


    private List blockedDays;
    private Calendar calendarRightNow;
    private GridView calendarView;
    private Date date;
    private ArrayList holidayDays;
    private int holidays[];
    private MonthDisplayHelper monthHelper;
    private TextView monthYearView;
    private ImageButton nextMonthButton;
    private OnCellTouchListener onCellTouchListener;
    private ImageButton prevMonthButton;

    public CalendarView(Context context)
    {
        this(context, null);
    }

    public CalendarView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        calendarRightNow = null;
        onCellTouchListener = null;
        context = (ViewGroup)((LayoutInflater)context.getSystemService("layout_inflater")).inflate(com.biznessapps.layout.R.layout.calendar_layout, null);
        addView(context);
        initViews(context);
        initCalendarView();
        initCells();
    }

    private void initCalendarView()
    {
        calendarRightNow = Calendar.getInstance();
        monthHelper = new MonthDisplayHelper(calendarRightNow.get(1), calendarRightNow.get(2));
    }

    private void initCells()
    {
        CalendarCellData acalendarcelldata[][];
        ArrayList arraylist;
        int i;
        int j;
        acalendarcelldata = (CalendarCellData[][])Array.newInstance(com/biznessapps/widgets/calendar/CalendarCellData, new int[] {
            6, 7
        });
        arraylist = new ArrayList();
        i = -1;
        j = 0;
_L2:
        int ai[];
        int l;
        if (j >= acalendarcelldata.length)
        {
            break MISSING_BLOCK_LABEL_318;
        }
        ai = monthHelper.getDigitsForRow(j);
        if (!weekIsOutMonth(j))
        {
            break; /* Loop/switch isn't completed */
        }
        l = i;
_L4:
        j++;
        i = l;
        if (true) goto _L2; else goto _L1
_L1:
        int k = 0;
_L5:
        l = i;
        if (k >= ai.length) goto _L4; else goto _L3
_L3:
        if (monthHelper.isWithinCurrentMonth(j, k))
        {
            acalendarcelldata[j][k] = new CalendarCellData(ai[k], monthHelper.getMonth(), monthHelper.getYear(), k);
        } else
        {
            int j1 = monthHelper.getYear();
            int i1 = monthHelper.getMonth();
            if (j == 0)
            {
                int k1 = i1 - 1;
                i1 = k1;
                if (k1 < 0)
                {
                    i1 = 11;
                }
                acalendarcelldata[j][k] = new CalendarCellData(ai[k], i1, j1, k);
            } else
            {
                int i2 = i1 + 1;
                i1 = j1;
                int l1 = i2;
                j1 = i1;
                if (i2 >= 12)
                {
                    l1 = 0;
                    j1 = i1 + 1;
                }
                acalendarcelldata[j][k] = new CalendarCellData(ai[k], l1, j1, k);
            }
        }
        if (isSelectedDay(acalendarcelldata[j][k]))
        {
            i = j * 7 + k;
        }
        arraylist.add(acalendarcelldata[j][k]);
        k++;
          goto _L5
          goto _L4
        CalendarAdapter calendaradapter = new CalendarAdapter(this, arraylist, monthHelper);
        calendaradapter.setSelectedItem(i);
        calendarView.setAdapter(calendaradapter);
        updateTitle();
        return;
    }

    private void initViews(ViewGroup viewgroup)
    {
        prevMonthButton = (ImageButton)viewgroup.findViewById(com.biznessapps.layout.R.id.calendar_prev_month);
        nextMonthButton = (ImageButton)viewgroup.findViewById(com.biznessapps.layout.R.id.calendar_next_month);
        monthYearView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.calendar_month_year);
        calendarView = (GridView)viewgroup.findViewById(com.biznessapps.layout.R.id.calendar_grid);
        prevMonthButton.setOnClickListener(new android.view.View.OnClickListener() {

            final CalendarView this$0;

            public void onClick(View view)
            {
                previousMonth();
            }

            
            {
                this$0 = CalendarView.this;
                super();
            }
        });
        nextMonthButton.setOnClickListener(new android.view.View.OnClickListener() {

            final CalendarView this$0;

            public void onClick(View view)
            {
                nextMonth();
            }

            
            {
                this$0 = CalendarView.this;
                super();
            }
        });
    }

    private boolean isSelectedDay(CalendarCellData calendarcelldata)
    {
        int i = calendarRightNow.get(1);
        int j = calendarRightNow.get(2);
        int k = calendarRightNow.get(5);
        return i == calendarcelldata.year && j == calendarcelldata.month && k == calendarcelldata.day;
    }

    public boolean firstDay(int i)
    {
        return i == 1;
    }

    public List getBlockedDays()
    {
        return blockedDays;
    }

    public Date getDate()
    {
        return date;
    }

    public ArrayList getHolidayDays()
    {
        return holidayDays;
    }

    public int[] getHolidays()
    {
        return holidays;
    }

    public int getMonth()
    {
        return monthHelper.getMonth();
    }

    public OnCellTouchListener getOnCellTouchListener()
    {
        return onCellTouchListener;
    }

    public int getYear()
    {
        return monthHelper.getYear();
    }

    public void goToday()
    {
        Calendar calendar = Calendar.getInstance();
        monthHelper = new MonthDisplayHelper(calendar.get(1), calendar.get(2));
        initCells();
    }

    public boolean isInHolidayDays(int i)
    {
        Object obj = Calendar.getInstance();
        ((Calendar) (obj)).clear();
        ((Calendar) (obj)).set(7, i + 1);
        for (obj = (new SimpleDateFormat("EEEE")).format(((Calendar) (obj)).getTime()); holidayDays == null || holidayDays.size() == 0 || !holidayDays.contains(((String) (obj)).toLowerCase());)
        {
            return false;
        }

        return true;
    }

    public boolean isInHolidays(int i)
    {
        if (holidays != null && holidays.length != 0)
        {
            int j = 0;
            while (j < holidays.length) 
            {
                if (holidays[j] == i)
                {
                    return true;
                }
                j++;
            }
        }
        return false;
    }

    public boolean lastDay(int i)
    {
        return monthHelper.getNumberOfDaysInMonth() == i;
    }

    public void nextMonth()
    {
        monthHelper.nextMonth();
        initCells();
    }

    public void previousMonth()
    {
        monthHelper.previousMonth();
        initCells();
    }

    public void selectDate(Date date1)
    {
        setTimeInMillis(date1.getTime());
    }

    public void setBlockedDays(List list)
    {
        blockedDays = list;
    }

    protected void setDate(Date date1)
    {
        date = date1;
    }

    public void setHolidayDays(ArrayList arraylist)
    {
        holidayDays = arraylist;
    }

    public void setHolidays(int ai[])
    {
        holidays = ai;
    }

    public void setOnCellTouchListener(OnCellTouchListener oncelltouchlistener)
    {
        onCellTouchListener = oncelltouchlistener;
    }

    public void setTimeInMillis(long l)
    {
        calendarRightNow.setTimeInMillis(l);
        monthHelper = new MonthDisplayHelper(calendarRightNow.get(1), calendarRightNow.get(2));
        date = calendarRightNow.getTime();
        initCells();
    }

    public void updateStrings()
    {
        ((TextView)findViewById(com.biznessapps.layout.R.id.calendar_sunday_label_view)).setText(com.biznessapps.layout.R.string.calendar_sunday);
        ((TextView)findViewById(com.biznessapps.layout.R.id.calendar_monday_label_view)).setText(com.biznessapps.layout.R.string.calendar_monday);
        ((TextView)findViewById(com.biznessapps.layout.R.id.calendar_tuesday_label_view)).setText(com.biznessapps.layout.R.string.calendar_tuesday);
        ((TextView)findViewById(com.biznessapps.layout.R.id.calendar_wednesday_label_view)).setText(com.biznessapps.layout.R.string.calendar_wednesday);
        ((TextView)findViewById(com.biznessapps.layout.R.id.calendar_thursday_label_view)).setText(com.biznessapps.layout.R.string.calendar_thursday);
        ((TextView)findViewById(com.biznessapps.layout.R.id.calendar_friday_label_view)).setText(com.biznessapps.layout.R.string.calendar_friday);
        ((TextView)findViewById(com.biznessapps.layout.R.id.calendar_saturday_label_view)).setText(com.biznessapps.layout.R.string.calendar_saturday);
    }

    protected void updateTitle()
    {
        Date date1 = new Date(monthHelper.getYear() - 1900, monthHelper.getMonth(), 1);
        SimpleDateFormat simpledateformat = new SimpleDateFormat("MMMM yyyy");
        monthYearView.setText(simpledateformat.format(date1));
    }

    protected boolean weekIsOutMonth(int i)
    {
        for (int j = 0; j < 7; j++)
        {
            if (monthHelper.isWithinCurrentMonth(i, j))
            {
                return false;
            }
        }

        return true;
    }
}
