// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.coupons;

import java.io.Serializable;

// Referenced classes of package com.biznessapps.coupons:
//            CouponEntity

public static class 
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

    public ()
    {
    }
}
