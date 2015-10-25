// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.news;

import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.utils.DateUtils;
import java.util.Date;

public class SearchEntity extends CommonListEntity
{

    private static final long serialVersionUID = 0x219638ce318c5f79L;
    private String itemId;
    private String link;
    private String name;
    private String newsDate;
    private int newsSource;
    private String newsType;
    private String section;
    private String sectionId;
    private String tabId;
    private String text;
    private String thumbnail;

    public SearchEntity()
    {
    }

    public Date getDate()
    {
        if (date == null)
        {
            date = DateUtils.getDateTime(timeStamp);
        }
        return date;
    }

    public Date getDateTime()
    {
        Date date;
        try
        {
            date = new Date(newsDate);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return date;
    }

    public String getItemId()
    {
        return itemId;
    }

    public String getLink()
    {
        return link;
    }

    public String getName()
    {
        return name;
    }

    public String getNewsDate()
    {
        return newsDate;
    }

    public int getNewsSource()
    {
        return newsSource;
    }

    public String getNewsType()
    {
        return newsType;
    }

    public String getSection()
    {
        return section;
    }

    public String getSectionId()
    {
        return sectionId;
    }

    public String getTabId()
    {
        return tabId;
    }

    public String getText()
    {
        return text;
    }

    public String getThumbnail()
    {
        return thumbnail;
    }

    public void setItemId(String s)
    {
        itemId = s;
    }

    public void setLink(String s)
    {
        link = s;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setNewsDate(String s)
    {
        newsDate = s;
    }

    public void setNewsSource(int i)
    {
        newsSource = i;
    }

    public void setNewsType(String s)
    {
        newsType = s;
    }

    public void setSection(String s)
    {
        section = s;
    }

    public void setSectionId(String s)
    {
        sectionId = s;
    }

    public void setTabId(String s)
    {
        tabId = s;
    }

    public void setText(String s)
    {
        text = s;
    }

    public void setThumbnail(String s)
    {
        thumbnail = s;
    }
}
