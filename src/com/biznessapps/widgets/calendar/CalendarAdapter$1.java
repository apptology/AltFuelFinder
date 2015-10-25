// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.calendar;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.biznessapps.utils.ViewUtils;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.biznessapps.widgets.calendar:
//            CalendarAdapter, CalendarCellData, CalendarView

class this._cls0
    implements android.view.er
{

    final CalendarAdapter this$0;

    public void onClick(View view)
    {
        lendarCell lendarcell = (lendarCell)view.getTag();
        int i = ((Integer)lendarcell.getDateView().getTag()).intValue();
        if (lendarcell.isBlocked())
        {
            Object obj = (CalendarCellData)CalendarAdapter.access$000(CalendarAdapter.this).get(i);
            view = CalendarAdapter.access$100(CalendarAdapter.this).getResources().getString(com.biznessapps.layout.ay);
            obj = ((CalendarCellData) (obj)).getBlockedDayName();
            ViewUtils.showCustomToast(CalendarAdapter.access$100(CalendarAdapter.this), String.format("%s %s", new Object[] {
                view, obj
            }));
        } else
        if (lendarcell.isEnabled())
        {
            CalendarCellData calendarcelldata = (CalendarCellData)CalendarAdapter.access$000(CalendarAdapter.this).get(i);
            if (CalendarAdapter.access$200(CalendarAdapter.this, calendarcelldata))
            {
                CalendarAdapter.access$300(CalendarAdapter.this).previousMonth();
                return;
            }
            if (CalendarAdapter.access$400(CalendarAdapter.this, calendarcelldata))
            {
                CalendarAdapter.access$300(CalendarAdapter.this).nextMonth();
                return;
            }
            lendarcell.setBackground(com.biznessapps.layout.lselected, false);
            lendarcell.setTextColor(-1, false);
            if (getSelectedItem() > -1)
            {
                lendarCell lendarcell1 = ((CalendarCellData)CalendarAdapter.access$000(CalendarAdapter.this).get(getSelectedItem())).cell;
                lendarcell1.restoreBackground();
                lendarcell1.restoreTextColor();
            }
            setSelectedItem(i);
            CalendarAdapter.access$300(CalendarAdapter.this).setDate(new Date(calendarcelldata.year - 1900, calendarcelldata.month, calendarcelldata.day));
            if (CalendarAdapter.access$300(CalendarAdapter.this).getOnCellTouchListener() != null)
            {
                CalendarAdapter.access$300(CalendarAdapter.this).getOnCellTouchListener().onTouch(view);
                return;
            }
        }
    }

    lTouchListener()
    {
        this$0 = CalendarAdapter.this;
        super();
    }
}
