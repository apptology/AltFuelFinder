// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.music;

import com.biznessapps.common.entities.CommonListEntity;
import java.util.ArrayList;
import java.util.List;

public class AlbumEntity extends CommonListEntity
{

    private static final long serialVersionUID = 0x7eb17f8bbfa52e0aL;
    private String albumName;
    private String albumUrl;
    private String artistName;
    private boolean isExtended;
    private List tracks;

    public AlbumEntity()
    {
        tracks = new ArrayList();
    }

    public String getAlbumName()
    {
        return albumName;
    }

    public String getAlbumUrl()
    {
        return albumUrl;
    }

    public String getArtistName()
    {
        return artistName;
    }

    public int getSongsCount()
    {
        if (tracks != null)
        {
            return tracks.size();
        } else
        {
            return 0;
        }
    }

    public List getTracks()
    {
        return tracks;
    }

    public boolean isExtended()
    {
        return isExtended;
    }

    public void setAlbumName(String s)
    {
        albumName = s;
    }

    public void setAlbumUrl(String s)
    {
        albumUrl = s;
    }

    public void setArtistName(String s)
    {
        artistName = s;
    }

    public void setExtended(boolean flag)
    {
        isExtended = flag;
    }

    public void setTracks(List list)
    {
        tracks = list;
    }
}
