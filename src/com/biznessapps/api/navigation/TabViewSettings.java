// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api.navigation;


public class TabViewSettings
{

    private boolean showText;
    private String tabBgUrl;
    private long tabId;
    private int tabImageId;
    private String tabImageUrl;
    private String tabName;
    private String tabTextColor;
    private String tabTint;
    private float tabTintOpacity;

    public TabViewSettings()
    {
    }

    public String getTabBgUrl()
    {
        return tabBgUrl;
    }

    public long getTabId()
    {
        return tabId;
    }

    public int getTabImageId()
    {
        return tabImageId;
    }

    public String getTabImageUrl()
    {
        return tabImageUrl;
    }

    public String getTabName()
    {
        return tabName;
    }

    public String getTabTextColor()
    {
        return tabTextColor;
    }

    public String getTabTint()
    {
        return tabTint;
    }

    public float getTabTintOpacity()
    {
        return tabTintOpacity;
    }

    public boolean isShowText()
    {
        return showText;
    }

    public void setShowText(boolean flag)
    {
        showText = flag;
    }

    public void setTabBgUrl(String s)
    {
        tabBgUrl = s;
    }

    public void setTabId(long l)
    {
        tabId = l;
    }

    public void setTabImageId(int i)
    {
        tabImageId = i;
    }

    public void setTabImageUrl(String s)
    {
        tabImageUrl = s;
    }

    public void setTabName(String s)
    {
        tabName = s;
    }

    public void setTabTextColor(String s)
    {
        tabTextColor = s;
    }

    public void setTabTint(String s)
    {
        tabTint = s;
    }

    public void setTabTintOpacity(float f)
    {
        tabTintOpacity = f;
    }
}
