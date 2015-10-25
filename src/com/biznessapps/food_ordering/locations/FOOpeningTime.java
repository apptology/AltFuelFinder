// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.locations;

import android.util.SparseArray;
import java.io.Serializable;
import java.util.List;

public class FOOpeningTime
    implements Serializable
{
    public static class Interval
    {

        public static final int PERIOD = 30;
        private int from;
        private int to;

        public int getFrom()
        {
            return from;
        }

        public int getTo()
        {
            return to;
        }

        public void setFrom(int i)
        {
            from = i;
        }

        public void setTo(int i)
        {
            to = i;
        }

        public Interval()
        {
        }
    }


    public static final int FRIDAY = 6;
    public static final int MONDAY = 2;
    public static final int SATURDAY = 7;
    public static final int SUNDAY = 1;
    public static final int THURSDAY = 5;
    public static final int TUESDAY = 3;
    public static final int WEDNESDAY = 4;
    private static final long serialVersionUID = 0x3a68114c07aa8591L;
    private SparseArray map;

    public FOOpeningTime()
    {
        map = new SparseArray();
    }

    public void addIntervals(int i, List list)
    {
        map.put(i, list);
    }

    public List getInterval(int i)
    {
        return (List)map.get(i);
    }
}
