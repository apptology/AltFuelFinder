// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.flickr;


// Referenced classes of package com.biznessapps.flickr:
//            Photo, Title

public class Gallery
{

    private String farm;
    private String id;
    private Photo photosArray[];
    private String primary;
    private String secret;
    private String server;
    private Title title;

    public Gallery()
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

    public Photo[] getPhotosArray()
    {
        return photosArray;
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

    public Title getTitle()
    {
        return title;
    }

    public void setFarm(String s)
    {
        farm = s;
    }

    public void setId(String s)
    {
        id = s;
    }

    public void setPhotosArray(Photo aphoto[])
    {
        photosArray = aphoto;
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

    public void setTitle(Title title1)
    {
        title = title1;
    }
}
