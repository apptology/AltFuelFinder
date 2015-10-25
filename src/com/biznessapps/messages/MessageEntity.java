// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.messages;

import com.biznessapps.common.entities.CommonListEntity;

public class MessageEntity extends CommonListEntity
{

    public static final int MESSAGE_All_TYPE = 0;
    public static final int MESSAGE_TAB_CONTENT_TYPE = 2;
    public static final int MESSAGE_TEMPLATE_TYPE = 3;
    public static final int MESSAGE_WEB_URL_TYPE = 1;
    private static final long serialVersionUID = 0x9a9dd81fe9a71cc8L;
    private long activeTill;
    private String categoryId;
    private String detailId;
    private boolean isDeleted;
    private boolean isGeoFencingEnabled;
    private String latitude;
    private String longitude;
    private String paths;
    private String radius;
    private String tabId;
    private int type;

    public MessageEntity()
    {
    }

    public long getActiveTill()
    {
        return activeTill;
    }

    public String getCategoryId()
    {
        return categoryId;
    }

    public String getDetailId()
    {
        return detailId;
    }

    public String getLatitude()
    {
        return latitude;
    }

    public String getLongitude()
    {
        return longitude;
    }

    public String getPaths()
    {
        return paths;
    }

    public String getRadius()
    {
        return radius;
    }

    public String getTabId()
    {
        return tabId;
    }

    public int getType()
    {
        return type;
    }

    public boolean isDeleted()
    {
        return isDeleted;
    }

    public boolean isGeoFencingEnabled()
    {
        return isGeoFencingEnabled;
    }

    public void setActiveTill(long l)
    {
        activeTill = l;
    }

    public void setCategoryId(String s)
    {
        categoryId = s;
    }

    public void setDeleted(boolean flag)
    {
        isDeleted = flag;
    }

    public void setDetailId(String s)
    {
        detailId = s;
    }

    public void setGeoFencingEnabled(boolean flag)
    {
        isGeoFencingEnabled = flag;
    }

    public void setLatitude(String s)
    {
        latitude = s;
    }

    public void setLongitude(String s)
    {
        longitude = s;
    }

    public void setPaths(String s)
    {
        paths = s;
    }

    public void setRadius(String s)
    {
        radius = s;
    }

    public void setTabId(String s)
    {
        tabId = s;
    }

    public void setType(int i)
    {
        type = i;
    }
}
