// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

// Referenced classes of package com.google.android.gms.drive.internal:
//            b

public class AuthorizeAccessRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new b();
    final long EU;
    final DriveId Ew;
    final int xH;

    AuthorizeAccessRequest(int i, long l, DriveId driveid)
    {
        xH = i;
        EU = l;
        Ew = driveid;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        b.a(this, parcel, i);
    }

}
