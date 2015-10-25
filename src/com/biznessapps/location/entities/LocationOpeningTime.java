// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.location.entities;


public class LocationOpeningTime
{

    private String day;
    private String openFrom;
    private String openTo;
    private String time;

    public LocationOpeningTime()
    {
        day = "";
        openFrom = "";
        openTo = "";
    }

    public String getDay()
    {
        return day;
    }

    public String getOpenFrom()
    {
        return openFrom;
    }

    public String getOpenTo()
    {
        return openTo;
    }

    public String getTime()
    {
        return time;
    }

    public void setDay(String s)
    {
        day = s;
    }

    public void setOpenFrom(String s)
    {
        openFrom = s;
    }

    public void setOpenTo(String s)
    {
        openTo = s;
    }

    public void setTime(String s)
    {
        time = s;
    }
}
