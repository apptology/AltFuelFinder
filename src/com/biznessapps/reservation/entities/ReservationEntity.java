// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation.entities;

import com.biznessapps.location.entities.LocationEntity;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ReservationEntity extends LocationEntity
{

    public static final int ORDER_STATE_CANCELLED = 2;
    private static final long serialVersionUID = 0x897f9dfe784a5369L;
    private String appId;
    private String billingAddressId;
    private int checkoutMethod;
    private float cost;
    private Date createTime;
    private String duration;
    private String itemId;
    private String locId;
    private String note;
    private int orderState;
    private float paidAmount;
    private String placedOn;
    private String serviceName;
    private String thumbnail;
    private Date timeFrom;
    private Date timeTo;
    private int timeZone;
    private String transactionId;
    private String userId;

    public ReservationEntity()
    {
    }

    public String getAppId()
    {
        return appId;
    }

    public String getBillingAddressId()
    {
        return billingAddressId;
    }

    public int getCheckoutMethod()
    {
        return checkoutMethod;
    }

    public float getCost()
    {
        return cost;
    }

    public Date getCreateTime()
    {
        return createTime;
    }

    public Date getDate()
    {
        return date;
    }

    public String getDuration()
    {
        return duration;
    }

    public String getItemId()
    {
        return itemId;
    }

    public String getLocId()
    {
        return locId;
    }

    public String getNote()
    {
        return note;
    }

    public int getOrderState()
    {
        return orderState;
    }

    public float getPaidAmount()
    {
        return paidAmount;
    }

    public String getPlacedOn()
    {
        return placedOn;
    }

    public String getServiceName()
    {
        return serviceName;
    }

    public String getThumbnail()
    {
        return thumbnail;
    }

    public Date getTimeFrom()
    {
        return timeFrom;
    }

    public Date getTimeTo()
    {
        return timeTo;
    }

    public int getTimeZone()
    {
        return timeZone;
    }

    public String getTransactionId()
    {
        return transactionId;
    }

    public String getUserId()
    {
        return userId;
    }

    public void setAppId(String s)
    {
        appId = s;
    }

    public void setBillingAddressId(String s)
    {
        billingAddressId = s;
    }

    public void setCheckoutMethod(int i)
    {
        checkoutMethod = i;
    }

    public void setCost(float f)
    {
        cost = f;
    }

    public void setCreateTime(String s)
    {
        try
        {
            createTime = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).parse(s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    public void setDate(String s, int i, int j, int k)
    {
        try
        {
            SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
            date = simpledateformat.parse(s);
            long l = simpledateformat.parse(s).getTime();
            timeFrom = new Date((long)i * 60000L + l);
            timeTo = new Date((long)j * 60000L + l);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    public void setDuration(String s)
    {
        duration = s;
    }

    public void setItemId(String s)
    {
        itemId = s;
    }

    public void setLocId(String s)
    {
        locId = s;
    }

    public void setNote(String s)
    {
        note = s;
    }

    public void setOrderState(int i)
    {
        orderState = i;
    }

    public void setPaidAmount(float f)
    {
        paidAmount = f;
    }

    public void setPlacedOn(String s)
    {
        placedOn = s;
    }

    public void setServiceName(String s)
    {
        serviceName = s;
    }

    public void setThumbnail(String s)
    {
        thumbnail = s;
    }

    public void setTimeZone(int i)
    {
        timeZone = i;
    }

    public void setTransactionId(String s)
    {
        transactionId = s;
    }

    public void setUserId(String s)
    {
        userId = s;
    }
}
