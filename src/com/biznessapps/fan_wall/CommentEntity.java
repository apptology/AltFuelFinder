// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import com.biznessapps.common.entities.MapEntity;

public class CommentEntity extends MapEntity
{

    private static final long serialVersionUID = 0xb36a2ecbae012b8aL;
    private String comment;
    private int replies;
    private String uploadImageUrl;

    public CommentEntity()
    {
    }

    public CommentEntity(long l, String s, String s1, String s2)
    {
        timeStamp = l / 1000L;
        title = s;
        comment = s1;
        imageUrl = s2;
    }

    public String getComment()
    {
        return comment;
    }

    public String getGeneralInfo()
    {
        return title;
    }

    public int getReplies()
    {
        return replies;
    }

    public String getUploadImageUrl()
    {
        return uploadImageUrl;
    }

    public void setComment(String s)
    {
        comment = s;
    }

    public void setReplies(int i)
    {
        replies = i;
    }

    public void setUploadImageUrl(String s)
    {
        uploadImageUrl = s;
    }
}
