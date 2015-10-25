// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.location.entities;

import com.biznessapps.common.entities.MapEntity;
import com.biznessapps.food_ordering.locations.FOOpeningTime;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.utils.StringUtils;
import java.util.ArrayList;
import java.util.List;

public class LocationEntity extends MapEntity
{

    private static final long serialVersionUID = 0xd1dfbdcf6f600731L;
    private String comment;
    private String email;
    private FOOpeningTime foOpeningTime;
    private String image1;
    private String image2;
    private boolean isActiveStatus;
    private boolean isAvailable;
    private String itemBgUrl;
    private List openingTimes;
    private String tabId;
    private String telephone;
    private String telephoneDisplay;
    private float timezoneValue;
    private String website;

    public LocationEntity()
    {
        openingTimes = new ArrayList();
    }

    public String getAddressInfo(String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (StringUtils.isNotEmpty(addressTopRow))
        {
            stringbuilder.append(addressTopRow);
        }
        if (StringUtils.isNotEmpty(addressBottomRow))
        {
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append(s);
            }
            stringbuilder.append(addressBottomRow);
        }
        if (stringbuilder.length() == 0)
        {
            stringbuilder.append(LocationUtils.getFullAddress(this));
        }
        return stringbuilder.toString();
    }

    public String getComment()
    {
        return comment;
    }

    public String getEmail()
    {
        return email;
    }

    public FOOpeningTime getFoOpeningTime()
    {
        return foOpeningTime;
    }

    public String getGeneralInfo()
    {
        return LocationUtils.getFullAddress(this);
    }

    public String getImage1()
    {
        return image1;
    }

    public String getImage2()
    {
        return image2;
    }

    public String getItemBgUrl()
    {
        return itemBgUrl;
    }

    public List getOpeningTimes()
    {
        return openingTimes;
    }

    public String getTabId()
    {
        return tabId;
    }

    public String getTelephone()
    {
        return telephone;
    }

    public String getTelephoneDisplay()
    {
        return telephoneDisplay;
    }

    public float getTimezoneValue()
    {
        return timezoneValue;
    }

    public String getWebsite()
    {
        return website;
    }

    public boolean isActiveStatus()
    {
        return isActiveStatus;
    }

    public boolean isAvailable()
    {
        return isAvailable;
    }

    public void setActiveStatus(boolean flag)
    {
        isActiveStatus = flag;
    }

    public void setAvailable(boolean flag)
    {
        isAvailable = flag;
    }

    public void setComment(String s)
    {
        comment = s;
    }

    public void setEmail(String s)
    {
        email = s;
    }

    public void setFoOpeningTime(FOOpeningTime foopeningtime)
    {
        foOpeningTime = foopeningtime;
    }

    public void setImage1(String s)
    {
        image1 = s;
    }

    public void setImage2(String s)
    {
        image2 = s;
    }

    public void setItemBgUrl(String s)
    {
        itemBgUrl = s;
    }

    public void setOpeningTimes(List list)
    {
        openingTimes = list;
    }

    public void setTabId(String s)
    {
        tabId = s;
    }

    public void setTelephone(String s)
    {
        telephone = s;
    }

    public void setTelephoneDisplay(String s)
    {
        telephoneDisplay = s;
    }

    public void setTimezoneValue(float f)
    {
        timezoneValue = f;
    }

    public void setWebsite(String s)
    {
        website = s;
    }
}
