// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.around_us;

import com.biznessapps.common.entities.CommonEntity;
import com.biznessapps.common.entities.MapEntity;
import com.biznessapps.location.entities.LocationEntity;
import java.util.ArrayList;

public class AroundUsEntity extends CommonEntity
{
    public static class PoiItem extends MapEntity
    {

        private static final long serialVersionUID = 0xec0875108024a123L;
        private String categoryName;
        private LocationEntity location;
        private String name;

        public String getCategoryName()
        {
            return categoryName;
        }

        public LocationEntity getLocation()
        {
            return location;
        }

        public String getName()
        {
            return name;
        }

        public void setCategoryName(String s)
        {
            categoryName = s;
        }

        public void setLocation(LocationEntity locationentity)
        {
            location = locationentity;
        }

        public void setName(String s)
        {
            name = s;
        }

        public PoiItem()
        {
        }
    }


    private static final long serialVersionUID = 0xfad49cc043829e2fL;
    private String greenColor;
    private String greenTextColor;
    private String greenTitle;
    private ArrayList poi;
    private String purpleColor;
    private String purpleTextColor;
    private String purpleTitle;
    private String redColor;
    private String redTextColor;
    private String redTitle;

    public AroundUsEntity()
    {
        poi = new ArrayList();
        greenColor = "00FF00";
        greenTextColor = "000000";
        purpleColor = "800080";
        purpleTextColor = "FFFFFF";
        redColor = "FF0000";
        redTextColor = "FFFFFF";
    }

    public String getGreenColor()
    {
        return greenColor;
    }

    public String getGreenTextColor()
    {
        return greenTextColor;
    }

    public String getGreenTitle()
    {
        return greenTitle;
    }

    public ArrayList getPoi()
    {
        return poi;
    }

    public String getPurpleColor()
    {
        return purpleColor;
    }

    public String getPurpleTextColor()
    {
        return purpleTextColor;
    }

    public String getPurpleTitle()
    {
        return purpleTitle;
    }

    public String getRedColor()
    {
        return redColor;
    }

    public String getRedTextColor()
    {
        return redTextColor;
    }

    public String getRedTitle()
    {
        return redTitle;
    }

    public void setGreenColor(String s)
    {
        greenColor = s;
    }

    public void setGreenTextColor(String s)
    {
        greenTextColor = s;
    }

    public void setGreenTitle(String s)
    {
        greenTitle = s;
    }

    public void setPoi(ArrayList arraylist)
    {
        poi = arraylist;
    }

    public void setPurpleColor(String s)
    {
        purpleColor = s;
    }

    public void setPurpleTextColor(String s)
    {
        purpleTextColor = s;
    }

    public void setPurpleTitle(String s)
    {
        purpleTitle = s;
    }

    public void setRedColor(String s)
    {
        redColor = s;
    }

    public void setRedTextColor(String s)
    {
        redTextColor = s;
    }

    public void setRedTitle(String s)
    {
        redTitle = s;
    }
}
