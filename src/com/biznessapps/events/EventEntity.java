// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import com.biznessapps.location.entities.LocationEntity;
import java.util.Date;

public class EventEntity extends LocationEntity
{
    public static final class RecurringDay extends Enum
    {

        private static final RecurringDay $VALUES[];
        public static final RecurringDay FR;
        public static final RecurringDay MO;
        public static final RecurringDay SA;
        public static final RecurringDay SU;
        public static final RecurringDay TH;
        public static final RecurringDay TU;
        public static final RecurringDay WE;

        public static RecurringDay findDay(int i)
        {
            RecurringDay arecurringday[] = values();
            int k = arecurringday.length;
            for (int j = 0; j < k; j++)
            {
                RecurringDay recurringday = arecurringday[j];
                if (recurringday.ordinal() == i)
                {
                    return recurringday;
                }
            }

            return SU;
        }

        public static RecurringDay valueOf(String s)
        {
            return (RecurringDay)Enum.valueOf(com/biznessapps/events/EventEntity$RecurringDay, s);
        }

        public static RecurringDay[] values()
        {
            return (RecurringDay[])$VALUES.clone();
        }

        static 
        {
            SU = new RecurringDay("SU", 0);
            MO = new RecurringDay("MO", 1);
            TU = new RecurringDay("TU", 2);
            WE = new RecurringDay("WE", 3);
            TH = new RecurringDay("TH", 4);
            FR = new RecurringDay("FR", 5);
            SA = new RecurringDay("SA", 6);
            $VALUES = (new RecurringDay[] {
                SU, MO, TU, WE, TH, FR, SA
            });
        }

        private RecurringDay(String s, int i)
        {
            super(s, i);
        }
    }


    private static final long serialVersionUID = 0xccdc8a1490e0f48L;
    private int commentsCount;
    private Date datetimeBegin;
    private Date datetimeEnd;
    private String day;
    private int goingCount;
    private boolean isRecurring;
    private String month;
    private int photoCount;
    private RecurringDay recurringDay;

    public EventEntity()
    {
    }

    public int getCommentsCount()
    {
        return commentsCount;
    }

    public Date getDatetimeBegin()
    {
        return datetimeBegin;
    }

    public Date getDatetimeEnd()
    {
        return datetimeEnd;
    }

    public String getDay()
    {
        return day;
    }

    public int getGoingCount()
    {
        return goingCount;
    }

    public String getMonth()
    {
        return month;
    }

    public int getPhotoCount()
    {
        return photoCount;
    }

    public RecurringDay getRecurringDay()
    {
        return recurringDay;
    }

    public boolean isRecurring()
    {
        return isRecurring;
    }

    public void setCommentsCount(int i)
    {
        commentsCount = i;
    }

    public void setDatetimeBegin(Date date)
    {
        datetimeBegin = date;
    }

    public void setDatetimeEnd(Date date)
    {
        datetimeEnd = date;
    }

    public void setDay(String s)
    {
        day = s;
    }

    public void setGoingCount(int i)
    {
        goingCount = i;
    }

    public void setMonth(String s)
    {
        month = s;
    }

    public void setPhotoCount(int i)
    {
        photoCount = i;
    }

    public void setRecurring(boolean flag)
    {
        isRecurring = flag;
    }

    public void setRecurringDay(RecurringDay recurringday)
    {
        recurringDay = recurringday;
    }
}
