// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.menudrawer;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package net.simonvt.menudrawer:
//            MenuDrawer

static class mState extends android.view.avedState
{

    public static final android.os..SavedState.mState CREATOR = new android.os.Parcelable.Creator() {

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public MenuDrawer.SavedState createFromParcel(Parcel parcel)
        {
            return new MenuDrawer.SavedState(parcel);
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

        public MenuDrawer.SavedState[] newArray(int i)
        {
            return new MenuDrawer.SavedState[i];
        }

    };
    Bundle mState;

    public void writeToParcel(Parcel parcel, int i)
    {
        super.iteToParcel(parcel, i);
        parcel.writeBundle(mState);
    }


    public _cls1(Parcel parcel)
    {
        super(parcel);
        mState = parcel.readBundle();
    }

    public mState(Parcelable parcelable)
    {
        super(parcelable);
    }
}
