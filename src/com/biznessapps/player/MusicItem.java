// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.player;

import android.os.Parcel;
import android.os.Parcelable;

public class MusicItem
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public MusicItem createFromParcel(Parcel parcel)
        {
            return new MusicItem(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public MusicItem[] newArray(int i)
        {
            return new MusicItem[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    private String albumName;
    private byte isSingle;
    private String songInfo;
    private String url;

    public MusicItem()
    {
    }

    public MusicItem(Parcel parcel)
    {
        url = parcel.readString();
        songInfo = parcel.readString();
        albumName = parcel.readString();
        isSingle = parcel.readByte();
    }

    public int describeContents()
    {
        return 0;
    }

    public String getAlbumName()
    {
        return albumName;
    }

    public String getSongInfo()
    {
        return songInfo;
    }

    public String getUrl()
    {
        return url;
    }

    public boolean isSingle()
    {
        return isSingle == 1;
    }

    public void setAlbumName(String s)
    {
        albumName = s;
    }

    public void setSingle()
    {
        isSingle = 1;
    }

    public void setSongInfo(String s)
    {
        songInfo = s;
    }

    public void setUrl(String s)
    {
        url = s;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(url);
        parcel.writeString(songInfo);
        parcel.writeString(albumName);
        parcel.writeByte(isSingle);
    }

}
