// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.view.View;
import android.widget.TextView;
import com.biznessapps.widgets.calendar.CalendarView;

// Referenced classes of package com.biznessapps.reservation:
//            ReservationBookFragment

class this._cls0
    implements com.biznessapps.widgets.calendar.stener
{

    final ReservationBookFragment this$0;

    public void onTouch(View view)
    {
        ReservationBookFragment.access$100(ReservationBookFragment.this, ReservationBookFragment.access$000(ReservationBookFragment.this).getDate());
        ReservationBookFragment.access$300(ReservationBookFragment.this, ReservationBookFragment.access$200(ReservationBookFragment.this));
        ReservationBookFragment.access$400(ReservationBookFragment.this).performClick();
    }

    uchListener()
    {
        this$0 = ReservationBookFragment.this;
        super();
    }
}
