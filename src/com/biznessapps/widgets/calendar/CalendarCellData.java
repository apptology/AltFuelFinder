// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.calendar;

import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

public class CalendarCellData
{

    private String blockedDayName;
    public CalendarAdapter.CalendarCell cell;
    public int day;
    public int dayOfWeek;
    public int month;
    public int year;

    public CalendarCellData(int i, int j, int k, int l)
    {
        cell = null;
        blockedDayName = "";
        day = i;
        month = j;
        year = k;
        dayOfWeek = l;
    }

    public boolean afterToday()
    {
        Calendar calendar = Calendar.getInstance();
        if (calendar.get(1) <= year)
        {
            if (calendar.get(1) < year)
            {
                return true;
            }
            if (calendar.get(2) <= month)
            {
                if (calendar.get(2) < month)
                {
                    return true;
                }
                if (calendar.get(5) <= day && calendar.get(5) < day)
                {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean beforeToday()
    {
        Calendar calendar = Calendar.getInstance();
        if (calendar.get(1) >= year)
        {
            if (calendar.get(1) > year)
            {
                return true;
            }
            if (calendar.get(2) >= month)
            {
                if (calendar.get(2) > month)
                {
                    return true;
                }
                if (calendar.get(5) >= day && calendar.get(5) > day)
                {
                    return true;
                }
            }
        }
        return false;
    }

    public String getBlockedDayName()
    {
        return blockedDayName;
    }

    public boolean isBlocked(List list)
    {
        boolean flag;
label0:
        {
            boolean flag1 = false;
            flag = flag1;
            if (list == null)
            {
                break label0;
            }
            list = list.iterator();
            com.biznessapps.reservation.ReservationDataKeeper.BlockedDayEntity blockeddayentity;
            Calendar calendar;
            do
            {
                flag = flag1;
                if (!list.hasNext())
                {
                    break label0;
                }
                blockeddayentity = (com.biznessapps.reservation.ReservationDataKeeper.BlockedDayEntity)list.next();
                calendar = Calendar.getInstance();
                calendar.setTime(blockeddayentity.getDate());
            } while (calendar.get(1) != year || calendar.get(2) != month || calendar.get(5) != day);
            flag = true;
            blockedDayName = blockeddayentity.getNote();
        }
        return flag;
    }

    public boolean isToday()
    {
        Calendar calendar = Calendar.getInstance();
        return calendar.get(1) == year && calendar.get(2) == month && calendar.get(5) == day;
    }

    public String toString()
    {
        return (new StringBuilder()).append(year).append("-").append(month + 1).append("-").append(day).toString();
    }
}
