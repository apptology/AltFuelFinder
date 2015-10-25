// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.rss;

import com.biznessapps.common.entities.CommonListEntity;
import java.util.Date;

public class RssEntity extends CommonListEntity
{

    private static final long serialVersionUID = 0xcc23347ad4754900L;
    private String creator;
    private String icon;
    private boolean isAudioType;
    private String link;
    private String rssUrl;
    private String section;
    private String subtitle;
    private String summary;
    private String tintColor;

    public RssEntity()
    {
    }

    public boolean canPlay()
    {
        return rssUrl != null && (rssUrl.contains(".mp3") || rssUrl.contains(".ogg") || rssUrl.contains(".3gp") || rssUrl.contains(".flac"));
    }

    public String getCreator()
    {
        return creator;
    }

    public Date getDate()
    {
        return date;
    }

    public String getIcon()
    {
        return icon;
    }

    public String getLink()
    {
        return link;
    }

    public String getRssUrl()
    {
        return rssUrl;
    }

    public String getSection()
    {
        return section;
    }

    public String getSubtitle()
    {
        return subtitle;
    }

    public String getSummary()
    {
        return summary;
    }

    public String getTintColor()
    {
        return tintColor;
    }

    public boolean isAudioType()
    {
        return isAudioType;
    }

    public void setAudioType(boolean flag)
    {
        isAudioType = flag;
    }

    public void setCreator(String s)
    {
        creator = s;
    }

    public void setDate(Date date)
    {
        this.date = date;
    }

    public void setIcon(String s)
    {
        icon = s;
    }

    public void setLink(String s)
    {
        link = s;
    }

    public void setRssUrl(String s)
    {
        rssUrl = s;
    }

    public void setSection(String s)
    {
        section = s;
    }

    public void setSubtitle(String s)
    {
        subtitle = s;
    }

    public void setSummary(String s)
    {
        summary = s;
    }

    public void setTintColor(String s)
    {
        tintColor = s;
    }
}
