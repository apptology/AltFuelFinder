// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.music;

import com.biznessapps.common.entities.CommonListEntity;

public class PlaylistEntity extends CommonListEntity
{

    private static final long serialVersionUID = 0x21bd49c8169a6c3eL;
    private String album;
    private String albumArt;
    private String artist;
    private String background;
    private int duration;
    private String header;
    private String itune;
    private int onSale;
    private String previewUrl;
    private String tintColor;

    public PlaylistEntity()
    {
    }

    public String getAlbum()
    {
        return album;
    }

    public String getAlbumArt()
    {
        return albumArt;
    }

    public String getArtist()
    {
        return artist;
    }

    public String getBackground()
    {
        return background;
    }

    public int getDuration()
    {
        return duration;
    }

    public String getHeader()
    {
        return header;
    }

    public String getItune()
    {
        return itune;
    }

    public int getOnSale()
    {
        return onSale;
    }

    public String getPreviewUrl()
    {
        return previewUrl;
    }

    public String getTintColor()
    {
        return tintColor;
    }

    public void setAlbum(String s)
    {
        album = s;
    }

    public void setAlbumArt(String s)
    {
        albumArt = s;
    }

    public void setArtist(String s)
    {
        artist = s;
    }

    public void setBackground(String s)
    {
        background = s;
    }

    public void setDuration(int i)
    {
        duration = i;
    }

    public void setHeader(String s)
    {
        header = s;
    }

    public void setItune(String s)
    {
        itune = s;
    }

    public void setOnSale(int i)
    {
        onSale = i;
    }

    public void setPreviewUrl(String s)
    {
        previewUrl = s;
    }

    public void setTintColor(String s)
    {
        tintColor = s;
    }
}
