// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.view.View;
import com.biznessapps.reservation.entities.ReservationServiceItem;

// Referenced classes of package com.biznessapps.reservation:
//            ReservationServiceAdapter

class tem
    implements android.view.rviceAdapter._cls1
{

    final ReservationServiceAdapter this$0;
    final ReservationServiceItem val$item;

    public void onClick(View view)
    {
        ReservationServiceAdapter.access$100(ReservationServiceAdapter.this).onBooked(val$item);
    }

    tem()
    {
        this$0 = final_reservationserviceadapter;
        val$item = ReservationServiceItem.this;
        super();
    }
}
