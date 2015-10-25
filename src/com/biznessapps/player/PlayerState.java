// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.player;

import android.os.Parcel;
import android.os.Parcelable;

public class PlayerState
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public PlayerState createFromParcel(Parcel parcel)
        {
            return new PlayerState(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public PlayerState[] newArray(int i)
        {
            return new PlayerState[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public static final int ERROR = 4;
    public static final int PAUSED = 3;
    public static final int PLAYING = 1;
    public static final int PREPARE = 5;
    public static final int STOPPED = 2;
    private int state;

    public PlayerState()
    {
    }

    public PlayerState(Parcel parcel)
    {
        state = parcel.readInt();
    }

    public int describeContents()
    {
        return 0;
    }

    public int getState()
    {
        return state;
    }

    public void setState(int i)
    {
        state = i;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(state);
    }

}
