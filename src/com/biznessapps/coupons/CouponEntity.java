// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.coupons;

import com.biznessapps.common.entities.MapEntity;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class CouponEntity extends MapEntity
{
    public static class CouponsLocation
        implements Serializable
    {

        private static final long serialVersionUID = 0x5f58ad1a5f4de07L;
        private String couponName;
        private String latitude;
        private String longitude;

        public String getCouponName()
        {
            return couponName;
        }

        public String getLatitude()
        {
            return latitude;
        }

        public String getLongitude()
        {
            return longitude;
        }

        public void setCouponName(String s)
        {
            couponName = s;
        }

        public void setLatitude(String s)
        {
            latitude = s;
        }

        public void setLongitude(String s)
        {
            longitude = s;
        }

        public CouponsLocation()
        {
        }
    }


    private static final long serialVersionUID = 0xd75be1335d2e3a51L;
    private int checkinInterval;
    private int checkinTarget;
    private int checkinTargetMax;
    private String code;
    private int couponClockViewId;
    private int couponCountViewId;
    private boolean enabled;
    private Date endDate;
    private long lastCheckinTime;
    private long lastRedeemedTime;
    private List locations;
    private float radius;
    private boolean reusable;
    private Date startDate;

    public CouponEntity()
    {
        enabled = true;
    }

    public void copyTo(CouponEntity couponentity)
    {
        couponentity.setLastCheckinTime(lastCheckinTime);
        couponentity.setLastRedeemedTime(lastRedeemedTime);
        couponentity.setCheckinTarget(checkinTarget);
    }

    public int getCheckinInterval()
    {
        return checkinInterval;
    }

    public int getCheckinTarget()
    {
        return checkinTarget;
    }

    public int getCheckinTargetMax()
    {
        return checkinTargetMax;
    }

    public String getCode()
    {
        return code;
    }

    public int getCouponClockViewId()
    {
        return couponClockViewId;
    }

    public int getCouponCountViewId()
    {
        return couponCountViewId;
    }

    public Date getEndDate()
    {
        return endDate;
    }

    public long getLastCheckinTime()
    {
        return lastCheckinTime;
    }

    public long getLastRedeemedTime()
    {
        return lastRedeemedTime;
    }

    public List getLocations()
    {
        return locations;
    }

    public float getRadius()
    {
        return radius;
    }

    public Date getStartDate()
    {
        return startDate;
    }

    public boolean isEnabled()
    {
        return enabled;
    }

    public boolean isReusable()
    {
        return reusable;
    }

    public void setCheckinInterval(int i)
    {
        checkinInterval = i;
    }

    public void setCheckinTarget(int i)
    {
        checkinTarget = i;
    }

    public void setCheckinTargetMax(int i)
    {
        checkinTargetMax = i;
    }

    public void setCode(String s)
    {
        code = s;
    }

    public void setCouponClockViewId(int i)
    {
        couponClockViewId = i;
    }

    public void setCouponCountViewId(int i)
    {
        couponCountViewId = i;
    }

    public void setEnabled(boolean flag)
    {
        enabled = flag;
    }

    public void setEndDate(Date date)
    {
        endDate = date;
    }

    public void setLastCheckinTime(long l)
    {
        lastCheckinTime = l;
    }

    public void setLastRedeemedTime(long l)
    {
        lastRedeemedTime = l;
    }

    public void setLocations(List list)
    {
        locations = list;
    }

    public void setRadius(float f)
    {
        radius = f;
    }

    public void setReusable(boolean flag)
    {
        reusable = flag;
    }

    public void setStartDate(Date date)
    {
        startDate = date;
    }
}
