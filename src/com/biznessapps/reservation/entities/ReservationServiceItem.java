// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation.entities;

import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.utils.StringUtils;
import java.util.ArrayList;

public class ReservationServiceItem extends CommonListEntity
{

    private static final long serialVersionUID = 0x8c6955699305eb50L;
    private String currency;
    private String currencySign;
    private int mins;
    private String name;
    private String note;
    private float price;
    private float reserveFee;
    private ArrayList restWeeks;
    private String thumbnail;

    public ReservationServiceItem()
    {
        currency = "USD";
        currencySign = "$";
    }

    public String getCurrency()
    {
        return currency;
    }

    public String getCurrencySign()
    {
        return currencySign;
    }

    public int getMins()
    {
        return mins;
    }

    public String getName()
    {
        return name;
    }

    public String getNote()
    {
        return note;
    }

    public float getPrice()
    {
        return price;
    }

    public float getReserveFee()
    {
        return reserveFee;
    }

    public ArrayList getRestWeeks()
    {
        return restWeeks;
    }

    public String getThumbnail()
    {
        return thumbnail;
    }

    public void setCurrency(String s)
    {
        if (StringUtils.isNotEmpty(s))
        {
            currency = s;
        }
    }

    public void setCurrencySign(String s)
    {
        if (StringUtils.isNotEmpty(s))
        {
            currencySign = s;
        }
    }

    public void setMins(int i)
    {
        mins = i;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setNote(String s)
    {
        note = s;
    }

    public void setPrice(float f)
    {
        price = f;
    }

    public void setReserveFee(float f)
    {
        reserveFee = f;
    }

    public void setRestWeeks(ArrayList arraylist)
    {
        restWeeks = arraylist;
    }

    public void setThumbnail(String s)
    {
        thumbnail = s;
    }
}
