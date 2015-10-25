// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.entities;

import java.util.List;

public class EmailCollectInfo
{

    private String body;
    private List tabIds;
    private String title;

    public EmailCollectInfo()
    {
    }

    public String getBody()
    {
        return body;
    }

    public List getTabIds()
    {
        return tabIds;
    }

    public String getTitle()
    {
        return title;
    }

    public void setBody(String s)
    {
        body = s;
    }

    public void setTabIds(List list)
    {
        tabIds = list;
    }

    public void setTitle(String s)
    {
        title = s;
    }

    public boolean showForTab(String s)
    {
        if (s == null)
        {
            return tabIds.contains("0");
        } else
        {
            return tabIds.contains(s);
        }
    }
}
