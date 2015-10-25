// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.flickr;


public class Photo
{

    private String farm;
    private String id;
    private String secret;
    private String server;
    private String title;
    private String url;

    public Photo()
    {
    }

    public String getFarm()
    {
        return farm;
    }

    public String getId()
    {
        return id;
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

    public String getUrl()
    {
        return url;
    }

    public void setFarm(String s)
    {
        farm = s;
    }

    public void setId(String s)
    {
        id = s;
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

    public void setUrl(String s)
    {
        url = s;
    }
}
