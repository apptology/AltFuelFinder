// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.identity.intents.model:
//            a

public class CountrySpecification
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new a();
    String qd;
    private final int xH;

    CountrySpecification(int i, String s)
    {
        xH = i;
        qd = s;
    }

    public CountrySpecification(String s)
    {
        xH = 1;
        qd = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public String getCountryCode()
    {
        return qd;
    }

    public int getVersionCode()
    {
        return xH;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        a.a(this, parcel, i);
    }

}
