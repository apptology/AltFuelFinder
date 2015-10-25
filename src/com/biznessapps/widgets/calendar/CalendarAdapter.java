// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.calendar;

import android.content.Context;
import android.content.res.Resources;
import android.util.MonthDisplayHelper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.biznessapps.utils.ViewUtils;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.biznessapps.widgets.calendar:
//            CalendarView, CalendarCellData

public class CalendarAdapter extends BaseAdapter
{
    public class CalendarCell
    {

        private int backgroundId;
        private TextView dateView;
        private boolean isBlocked;
        private boolean isEnabled;
        private int textColor;
        final CalendarAdapter this$0;

        public TextView getDateView()
        {
            return dateView;
        }

        public CharSequence getText()
        {
            return dateView.getText();
        }

        public boolean isBlocked()
        {
            return isBlocked;
        }

        public boolean isEnabled()
        {
            return isEnabled;
        }

        public void restoreBackground()
        {
            if (backgroundId > 0)
            {
                dateView.setBackgroundResource(backgroundId);
            }
        }

        public void restoreTextColor()
        {
            dateView.setTextColor(textColor);
        }

        public void setBackground(int i)
        {
            setBackground(i, true);
        }

        public void setBackground(int i, boolean flag)
        {
            if (flag)
            {
                backgroundId = i;
            }
            dateView.setBackgroundResource(i);
        }

        public void setBlocked(boolean flag)
        {
            isBlocked = flag;
        }

        public void setDateView(TextView textview)
        {
            dateView = textview;
        }

        public void setEnabled(boolean flag)
        {
            isEnabled = flag;
        }

        public void setText(CharSequence charsequence)
        {
            dateView.setText(charsequence);
        }

        public void setTextColor(int i)
        {
            setTextColor(i, true);
        }

        public void setTextColor(int i, boolean flag)
        {
            if (flag)
            {
                textColor = i;
            }
            dateView.setTextColor(i);
        }

        public CalendarCell()
        {
            this$0 = CalendarAdapter.this;
            super();
        }
    }


    static final boolean $assertionsDisabled;
    private List blockedDays;
    private CalendarView calendarView;
    private List cellData;
    private Context context;
    private LayoutInflater inflater;
    private MonthDisplayHelper monthHelper;
    private int selectedItem;

    public CalendarAdapter(CalendarView calendarview, List list)
    {
        if (!$assertionsDisabled && calendarview == null)
        {
            throw new AssertionError();
        } else
        {
            calendarView = calendarview;
            context = calendarview.getContext();
            cellData = list;
            calendarview = Calendar.getInstance();
            monthHelper = new MonthDisplayHelper(calendarview.get(1), calendarview.get(2));
            selectedItem = -1;
            inflater = (LayoutInflater)context.getSystemService("layout_inflater");
            return;
        }
    }

    public CalendarAdapter(CalendarView calendarview, List list, MonthDisplayHelper monthdisplayhelper)
    {
        this(calendarview, list);
        monthHelper = monthdisplayhelper;
        blockedDays = calendarview.getBlockedDays();
    }

    private boolean isInCurrentMonth(CalendarCellData calendarcelldata)
    {
        int i = monthHelper.getYear();
        int j = monthHelper.getMonth();
        return i == calendarcelldata.year && j == calendarcelldata.month;
    }

    private boolean isInNextMonth(CalendarCellData calendarcelldata)
    {
        int i = monthHelper.getYear();
        int j = monthHelper.getMonth();
        if (calendarcelldata.year <= i)
        {
            if (calendarcelldata.year < i)
            {
                return false;
            }
            if (calendarcelldata.month <= j)
            {
                return false;
            }
        }
        return true;
    }

    private boolean isInPreviousMonth(CalendarCellData calendarcelldata)
    {
        int i = monthHelper.getYear();
        int j = monthHelper.getMonth();
        if (calendarcelldata.year >= i)
        {
            if (calendarcelldata.year > i)
            {
                return false;
            }
            if (calendarcelldata.month >= j)
            {
                return false;
            }
        }
        return true;
    }

    public CalendarView getCalendarView()
    {
        return calendarView;
    }

    public int getCount()
    {
        if (cellData == null)
        {
            return 0;
        } else
        {
            return cellData.size();
        }
    }

    public Object getItem(int i)
    {
        return null;
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public int getSelectedItem()
    {
        return selectedItem;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        boolean flag = true;
        CalendarCellData calendarcelldata;
        if (view == null)
        {
            view = inflater.inflate(com.biznessapps.layout.R.layout.calendar_cell, null);
            viewgroup = new CalendarCell();
            viewgroup.setDateView((TextView)view.findViewById(com.biznessapps.layout.R.id.calendar_cell_date));
            viewgroup.getDateView().setTag(Integer.valueOf(i));
            view.setTag(viewgroup);
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final CalendarAdapter this$0;

                public void onClick(View view1)
                {
                    CalendarCell calendarcell = (CalendarCell)view1.getTag();
                    int k = ((Integer)calendarcell.getDateView().getTag()).intValue();
                    if (calendarcell.isBlocked())
                    {
                        Object obj = (CalendarCellData)cellData.get(k);
                        view1 = context.getResources().getString(com.biznessapps.layout.R.string.blocked_day);
                        obj = ((CalendarCellData) (obj)).getBlockedDayName();
                        ViewUtils.showCustomToast(context, String.format("%s %s", new Object[] {
                            view1, obj
                        }));
                    } else
                    if (calendarcell.isEnabled())
                    {
                        CalendarCellData calendarcelldata1 = (CalendarCellData)cellData.get(k);
                        if (isInPreviousMonth(calendarcelldata1))
                        {
                            calendarView.previousMonth();
                            return;
                        }
                        if (isInNextMonth(calendarcelldata1))
                        {
                            calendarView.nextMonth();
                            return;
                        }
                        calendarcell.setBackground(com.biznessapps.layout.R.drawable.datecellselected, false);
                        calendarcell.setTextColor(-1, false);
                        if (getSelectedItem() > -1)
                        {
                            CalendarCell calendarcell1 = ((CalendarCellData)cellData.get(getSelectedItem())).cell;
                            calendarcell1.restoreBackground();
                            calendarcell1.restoreTextColor();
                        }
                        setSelectedItem(k);
                        calendarView.setDate(new Date(calendarcelldata1.year - 1900, calendarcelldata1.month, calendarcelldata1.day));
                        if (calendarView.getOnCellTouchListener() != null)
                        {
                            calendarView.getOnCellTouchListener().onTouch(view1);
                            return;
                        }
                    }
                }

            
            {
                this$0 = CalendarAdapter.this;
                super();
            }
            });
        } else
        {
            viewgroup = (CalendarCell)view.getTag();
        }
        calendarcelldata = (CalendarCellData)cellData.get(i);
        viewgroup.setText(String.format("%d", new Object[] {
            Integer.valueOf(calendarcelldata.day)
        }));
        if (calendarcelldata.isToday())
        {
            viewgroup.setTextColor(-1);
        } else
        if (isInCurrentMonth(calendarcelldata))
        {
            viewgroup.setTextColor(0xff3b4958);
        } else
        {
            viewgroup.setTextColor(0xff808080);
        }
        if (calendarcelldata.isBlocked(blockedDays))
        {
            viewgroup.setBackground(com.biznessapps.layout.R.drawable.today);
            viewgroup.setBlocked(true);
        } else
        if (calendarcelldata.isToday())
        {
            int j;
            if (calendarView.isInHolidayDays(calendarcelldata.dayOfWeek))
            {
                flag = false;
            }
            if (flag)
            {
                j = com.biznessapps.layout.R.drawable.datecell;
            } else
            {
                j = com.biznessapps.layout.R.drawable.today;
            }
            viewgroup.setBackground(j);
            viewgroup.setEnabled(flag);
        } else
        if (calendarcelldata.beforeToday())
        {
            viewgroup.setBackground(com.biznessapps.layout.R.drawable.today);
            viewgroup.setEnabled(false);
        } else
        if (calendarView.isInHolidayDays(calendarcelldata.dayOfWeek) || calendarView.isInHolidays(calendarcelldata.day))
        {
            viewgroup.setBackground(com.biznessapps.layout.R.drawable.today);
            viewgroup.setEnabled(false);
        } else
        {
            viewgroup.setBackground(com.biznessapps.layout.R.drawable.datecell);
            viewgroup.setEnabled(true);
        }
        if (i == selectedItem)
        {
            viewgroup.setBackground(com.biznessapps.layout.R.drawable.datecellselected, false);
            viewgroup.setTextColor(-1, false);
        }
        calendarcelldata.cell = viewgroup;
        return view;
    }

    public void setCalendarView(CalendarView calendarview)
    {
        calendarView = calendarview;
    }

    public void setSelectedItem(int i)
    {
        selectedItem = i;
    }

    static 
    {
        boolean flag;
        if (!com/biznessapps/widgets/calendar/CalendarAdapter.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }





}
