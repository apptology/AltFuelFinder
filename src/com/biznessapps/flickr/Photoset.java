// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.flickr;

import java.util.List;

public class Photoset
{

    private String description;
    private String farm;
    private String id;
    private List photos;
    private String primary;
    private String secret;
    private String server;
    private String title;

    public Photoset()
    {
    }

    public String getDescription()
    {
        return description;
    }

    public String getFarm()
    {
        return farm;
    }

    public String getId()
    {
        return id;
    }

    public List getPhotos()
    {
        return photos;
    }

    public String getPrimary()
    {
        return primary;
    }

    public String getSecret()
    {
        return secret;
    }

    public String getServer()
    {
        return server;
    }

    public String getTitle()
    {
        return title;
    }

    public void setDescription(String s)
    {
        description = s;
    }

    public void setFarm(String s)
    {
        farm = s;
    }

    public void setId(String s)
    {
        id = s;
    }

    public void setPhotos(List list)
    {
        photos = list;
    }

    public void setPrimary(String s)
    {
        primary = s;
    }

    public void setSecret(String s)
    {
        secret = s;
    }

    public void setServer(String s)
    {
        server = s;
    }

    public void setTitle(String s)
    {
        title = s;
    }
}
