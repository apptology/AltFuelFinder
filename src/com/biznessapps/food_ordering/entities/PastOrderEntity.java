// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.entities;

import android.text.Html;
import com.biznessapps.location.entities.LocationEntity;
import java.util.Date;
import java.util.List;

public class PastOrderEntity extends LocationEntity
{

    private static final long serialVersionUID = 0x790a8f5a89c6720fL;
    private String address;
    private String id;
    private String locationId;
    private int orderType;
    private List orderedItems;
    private String thumbnail;
    private Date time;
    private long timestamp;
    private float totalAmount;

    public PastOrderEntity()
    {
    }

    public String getLocationId()
    {
        return locationId;
    }

    public int getOrderType()
    {
        return orderType;
    }

    public List getOrderedItems()
    {
        return orderedItems;
    }

    public String getThumbnail()
    {
        return thumbnail;
    }

    public Date getTime()
    {
        return time;
    }

    public long getTimestamp()
    {
        return timestamp;
    }

    public String getTotalAmount()
    {
        return Html.fromHtml(String.format("%s %.2f", new Object[] {
            getCurrencySign(), Float.valueOf(totalAmount)
        })).toString();
    }

    public void setLocationId(String s)
    {
        locationId = s;
    }

    public void setOrderType(int i)
    {
        orderType = i;
    }

    public void setOrderedItems(List list)
    {
        orderedItems = list;
    }

    public void setThumbnail(String s)
    {
        thumbnail = s;
    }

    public void setTime(Date date)
    {
        time = date;
    }

    public void setTimestamp(long l)
    {
        timestamp = l;
    }

    public void setTotalAmount(float f)
    {
        totalAmount = f;
    }
}
