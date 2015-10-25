// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.app.AlertDialog;
import android.view.View;

// Referenced classes of package com.biznessapps.reservation:
//            ReservationBookFragment

class val.dialog
    implements android.view.ookFragment._cls10
{

    final ReservationBookFragment this$0;
    final AlertDialog val$dialog;

    public void onClick(View view)
    {
        ReservationBookFragment.access$3500(ReservationBookFragment.this, 4);
        if (val$dialog != null)
        {
            val$dialog.dismiss();
        }
    }

    ()
    {
        this$0 = final_reservationbookfragment;
        val$dialog = AlertDialog.this;
        super();
    }
}
