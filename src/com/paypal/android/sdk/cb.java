// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import android.os.Parcel;

// Referenced classes of package com.paypal.android.sdk:
//            ca

final class cb
    implements android.os.Parcelable.Creator
{

    cb()
    {
    }

    public final Object createFromParcel(Parcel parcel)
    {
        return new ca(parcel);
    }

    public final volatile Object[] newArray(int i)
    {
        return new ca[i];
    }
}
