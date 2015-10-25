// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.youtube;

import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.utils.DateUtils;
import java.util.Date;

public class YoutubeRssEntity extends CommonListEntity
{

    private static final long serialVersionUID = 0x50c148c37bfeb8f7L;
    private String counts;
    private String creator;
    private String creatorAvatar;
    private String feedlinkCountHint;
    private String feedlinkHref;
    private String link;
    private String mediaThumbnailUrl;
    private String note;
    private String published;
    private String ratingAverage;
    private String section;
    private String statisticsViewCount;
    private String subtitle;
    private String summary;

    public YoutubeRssEntity()
    {
    }

    public String getCounts()
    {
        return counts;
    }

    public String getCreator()
    {
        return creator;
    }

    public String getCreatorAvatar()
    {
        return creatorAvatar;
    }

    public Date getDate()
    {
        if (date != null)
        {
            date = DateUtils.getDateTime(timeStamp);
        }
        return super.getDate();
    }

    public String getFeedlinkCountHint()
    {
        return feedlinkCountHint;
    }

    public String getFeedlinkHref()
    {
        return feedlinkHref;
    }

    public String getLink()
    {
        return link;
    }

    public String getMediaThumbnailUrl()
    {
        return mediaThumbnailUrl;
    }

    public String getNote()
    {
        return note;
    }

    public String getPublished()
    {
        return published;
    }

    public String getRatingAverage()
    {
        return ratingAverage;
    }

    public String getSection()
    {
        return section;
    }

    public String getStatisticsViewCount()
    {
        return statisticsViewCount;
    }

    public String getSubtitle()
    {
        return subtitle;
    }

    public String getSummary()
    {
        return summary;
    }

    public void setCounts(String s)
    {
        counts = s;
    }

    public void setCreator(String s)
    {
        creator = s;
    }

    public void setCreatorAvatar(String s)
    {
        creatorAvatar = s;
    }

    public void setFeedlinkCountHint(String s)
    {
        feedlinkCountHint = s;
    }

    public void setFeedlinkHref(String s)
    {
        feedlinkHref = s;
    }

    public void setLink(String s)
    {
        link = s;
    }

    public void setMediaThumbnailUrl(String s)
    {
        mediaThumbnailUrl = s;
    }

    public void setNote(String s)
    {
        note = s;
    }

    public void setPublished(String s)
    {
        published = s;
    }

    public void setRatingAverage(String s)
    {
        ratingAverage = s;
    }

    public void setSection(String s)
    {
        section = s;
    }

    public void setStatisticsViewCount(String s)
    {
        statisticsViewCount = s;
    }

    public void setSubtitle(String s)
    {
        subtitle = s;
    }

    public void setSummary(String s)
    {
        summary = s;
    }
}
