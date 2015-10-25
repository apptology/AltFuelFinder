// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.entities;


// Referenced classes of package com.biznessapps.common.entities:
//            CommonListEntity

public class MapEntity extends CommonListEntity
{

    private static final long serialVersionUID = 0x6d63c537ee608233L;
    private String address1;
    private String address2;
    private String city;
    private String color;
    private String distanceType;
    private boolean isCurrentLocoation;
    private String latitude;
    private String longitude;
    private String state;
    private String type;
    private String zip;

    public MapEntity()
    {
        distanceType = "km";
    }

    public String getAddress1()
    {
        return address1;
    }

    public String getAddress2()
    {
        return address2;
    }

    public String getCity()
    {
        return city;
    }

    public String getColor()
    {
        return color;
    }

    public String getDistanceType()
    {
        return distanceType;
    }

    public String getGeneralInfo()
    {
        return address1;
    }

    public String getLatitude()
    {
        return latitude;
    }

    public String getLongitude()
    {
        return longitude;
    }

    public String getState()
    {
        return state;
    }

    public String getType()
    {
        return type;
    }

    public String getZip()
    {
        return zip;
    }

    public boolean isCurrentLocoation()
    {
        return isCurrentLocoation;
    }

    public void setAddress1(String s)
    {
        address1 = s;
    }

    public void setAddress2(String s)
    {
        address2 = s;
    }

    public void setCity(String s)
    {
        city = s;
    }

    public void setColor(String s)
    {
        color = s;
    }

    public void setCurrentLocoation(boolean flag)
    {
        isCurrentLocoation = flag;
    }

    public void setDistanceType(String s)
    {
        distanceType = s;
    }

    public void setLatitude(String s)
    {
        latitude = s;
    }

    public void setLongitude(String s)
    {
        longitude = s;
    }

    public void setState(String s)
    {
        state = s;
    }

    public void setType(String s)
    {
        type = s;
    }

    public void setZip(String s)
    {
        zip = s;
    }
}
