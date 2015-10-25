// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.content.Context;
import com.biznessapps.api.AppCore;
import com.biznessapps.common.entities.AppSettings;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

public class DateUtils
{

    public static final String BLOCKED_DAY_FORMAT = "yyyy-MM-dd";
    public static final String DATE_PICKER_TITLE_FORMAT = "EEE MMM d yyyy";
    public static final long MILLI_SEC_IN_DAY = 0x5265c00L;
    public static final int MILLI_SEC_IN_HOUR = 0x36ee80;
    private static final long MSEC_IN_ONE_DAY = 0x5265c00L;
    private static final long MSEC_IN_ONE_HOUR = 0x36ee80L;
    public static final long MSEC_IN_ONE_MIN = 60000L;
    private static final long MSEC_IN_ONE_SEC = 1000L;
    private static final long MSEC_IN_ONE_WEEK = 0x240c8400L;
    public static final long SECONDS_IN_HOUR = 0x36ee80L;

    public DateUtils()
    {
    }

    private static int calculateYears(Calendar calendar, Calendar calendar1)
    {
        int i = 0;
        calendar = (Calendar)calendar.clone();
        calendar.add(1, 1);
        while (calendar.getTimeInMillis() < calendar1.getTimeInMillis()) 
        {
            calendar.add(1, 1);
            i++;
        }
        return i;
    }

    public static Date getBlockedDay(String s)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
        try
        {
            s = simpledateformat.parse(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return s;
    }

    public static Date getDateBySec(String s)
    {
        Object obj = null;
        Date date = obj;
        if (s != null)
        {
            date = obj;
            if (!s.equalsIgnoreCase("0"))
            {
                try
                {
                    date = new Date(Long.parseLong(s) * 1000L);
                }
                // Misplaced declaration of an exception variable
                catch (String s)
                {
                    s.printStackTrace();
                    return null;
                }
            }
        }
        return date;
    }

    public static Date getDateTime(long l)
    {
        Date date = null;
        if (l > 0L)
        {
            date = new Date(l * 1000L);
        }
        return date;
    }

    public static Date getDateWithLocalOffset(long l, float f)
    {
        if (l > 0L)
        {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(l * 1000L - (long)calendar.getTimeZone().getRawOffset());
            Date date = calendar.getTime();
            int i = calendar.getTimeZone().getRawOffset();
            calendar.setTimeInMillis((date.getTime() + (long)(int)(3600000F * f)) - (long)i);
            return calendar.getTime();
        } else
        {
            return null;
        }
    }

    public static Date getDateWithOffset(long l)
    {
        if (l > 0L)
        {
            return new Date((long)(AppCore.getInstance().getAppSettings().getServerTimezone() * 60 * 60 * 1000) + l * 1000L);
        } else
        {
            return null;
        }
    }

    public static Date getDateWithOffset(long l, float f)
    {
        if (l > 0L)
        {
            return new Date(l * 1000L - (long)((int)f * 60 * 60 * 1000));
        } else
        {
            return null;
        }
    }

    public static Date getDateWithOffset(long l, float f, int i)
    {
        if (l > 0L)
        {
            return new Date(l * 1000L - (long)(int)((f - (float)i) * 60F * 60F * 1000F));
        } else
        {
            return null;
        }
    }

    public static Date getEndDateWithLocalOffset(long l, float f)
    {
        if (l > 0L)
        {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(l * 1000L - (long)calendar.getTimeZone().getRawOffset());
            Date date = calendar.getTime();
            int i = calendar.getTimeZone().getRawOffset();
            calendar.setTimeInMillis((date.getTime() + (long)(int)(3600000F * f)) - (long)i);
            calendar.set(calendar.get(1), calendar.get(2), calendar.get(5), 0, 0, 0);
            calendar.add(5, 1);
            calendar.add(12, -1);
            return calendar.getTime();
        } else
        {
            return null;
        }
    }

    private static int getMonth(Calendar calendar, Calendar calendar1)
    {
        int i = 0;
        calendar = (Calendar)calendar.clone();
        calendar.add(2, 1);
        while (calendar.getTimeInMillis() < calendar1.getTimeInMillis()) 
        {
            calendar.add(2, 1);
            i++;
        }
        return i;
    }

    public static String getStandartDateFormat(Date date)
    {
        return DateFormat.getDateTimeInstance(1, 3).format(date);
    }

    public static String getStandartShortDateFormat(Date date)
    {
        return DateFormat.getDateInstance(1).format(date);
    }

    public static String getStringInterval(Context context, String s)
    {
        try
        {
            context = getStringInterval(context, new Date(s));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return "";
        }
        return context;
    }

    public static String getStringInterval(Context context, Date date)
    {
        Calendar calendar;
        int i;
        long l;
        calendar = Calendar.getInstance();
        calendar.setTime(date);
        date = Calendar.getInstance();
        date.setTime(new Date());
        l = date.getTimeInMillis() - calendar.getTimeInMillis();
        i = calculateYears(calendar, date);
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        return String.format("%d %s", new Object[] {
            Integer.valueOf(i), context.getString(com.biznessapps.layout.R.string.years_template)
        });
        i = getMonth(calendar, date);
        if (i > 0)
        {
            try
            {
                return String.format("%d %s", new Object[] {
                    Integer.valueOf(i), context.getString(com.biznessapps.layout.R.string.months_template)
                });
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                context.printStackTrace();
            }
            break MISSING_BLOCK_LABEL_338;
        }
        if (l < 0x240c8400L)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        return String.format("%d %s", new Object[] {
            Long.valueOf(l / 0x240c8400L), context.getString(com.biznessapps.layout.R.string.weeks_template)
        });
        if (l < 0x5265c00L)
        {
            break MISSING_BLOCK_LABEL_191;
        }
        return String.format("%d %s", new Object[] {
            Long.valueOf(l / 0x5265c00L), context.getString(com.biznessapps.layout.R.string.days_template)
        });
        if (l < 0x36ee80L)
        {
            break MISSING_BLOCK_LABEL_232;
        }
        return String.format("%d %s", new Object[] {
            Long.valueOf(l / 0x36ee80L), context.getString(com.biznessapps.layout.R.string.hours_template)
        });
        if (l < 60000L)
        {
            break MISSING_BLOCK_LABEL_273;
        }
        return String.format("%d %s", new Object[] {
            Long.valueOf(l / 60000L), context.getString(com.biznessapps.layout.R.string.mins_template)
        });
        if (l < 1000L)
        {
            break MISSING_BLOCK_LABEL_314;
        }
        return String.format("%d %s", new Object[] {
            Long.valueOf(l / 1000L), context.getString(com.biznessapps.layout.R.string.secs_template)
        });
        if (l >= 1000L)
        {
            break MISSING_BLOCK_LABEL_338;
        }
        context = context.getString(com.biznessapps.layout.R.string.right_now);
        return context;
        return "";
    }

    public static String getTimezoneValue()
    {
        return Integer.toString(TimeZone.getDefault().getOffset((new Date()).getTime()) / 0x36ee80);
    }

    public static Date getTomorrowDate(Date date)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(date.getTime() + 0x5265c00L);
        return calendar.getTime();
    }

    public static Date getYesterdayDate(Date date)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(date.getTime() - 0x5265c00L);
        return calendar.getTime();
    }

    public static boolean isBiggerOrEqual(Date date, Date date1)
    {
        return isBiggerThan(date, date1) || isTheSameDate(date, date1);
    }

    public static boolean isBiggerThan(Date date, Date date1)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        date = Calendar.getInstance();
        date.setTime(date1);
        boolean flag1 = false;
        boolean flag;
        if (calendar.get(1) > date.get(1))
        {
            flag = true;
        } else
        {
            flag = flag1;
            if (calendar.get(1) == date.get(1))
            {
                if (calendar.get(2) > date.get(2))
                {
                    return true;
                }
                flag = flag1;
                if (calendar.get(2) == date.get(2))
                {
                    flag = flag1;
                    if (calendar.get(5) > date.get(5))
                    {
                        return true;
                    }
                }
            }
        }
        return flag;
    }

    public static boolean isTheSameDate(Date date, Date date1)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        date = Calendar.getInstance();
        date.setTime(date1);
        return calendar.get(1) == date.get(1) && calendar.get(2) == date.get(2) && calendar.get(5) == date.get(5);
    }
}
