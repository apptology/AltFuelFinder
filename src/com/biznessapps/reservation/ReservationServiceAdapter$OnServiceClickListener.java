// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import com.biznessapps.reservation.entities.ReservationServiceItem;

// Referenced classes of package com.biznessapps.reservation:
//            ReservationServiceAdapter

public static interface 
{

    public abstract void onBooked(ReservationServiceItem reservationserviceitem);

    public abstract void onShared(ReservationServiceItem reservationserviceitem);
}
