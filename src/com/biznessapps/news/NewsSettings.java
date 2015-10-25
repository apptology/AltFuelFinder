// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.news;

import java.util.LinkedList;
import java.util.List;

public class NewsSettings
{

    private String background;
    private String googleSearchKey;
    private List googleSearchList;
    private String twitterSearchKey;
    private List twitterSearchList;

    public NewsSettings()
    {
        googleSearchList = new LinkedList();
        twitterSearchList = new LinkedList();
    }

    public String getBackground()
    {
        return background;
    }

    public String getGoogleSearchKey()
    {
        return googleSearchKey;
    }

    public List getGoogleSearchList()
    {
        return googleSearchList;
    }

    public String getTwitterSearchKey()
    {
        return twitterSearchKey;
    }

    public List getTwitterSearchList()
    {
        return twitterSearchList;
    }

    public void setBackground(String s)
    {
        background = s;
    }

    public void setGoogleSearchKey(String s)
    {
        googleSearchKey = s;
    }

    public void setGoogleSearchList(List list)
    {
        googleSearchList = list;
    }

    public void setTwitterSearchKey(String s)
    {
        twitterSearchKey = s;
    }

    public void setTwitterSearchList(List list)
    {
        twitterSearchList = list;
    }
}
