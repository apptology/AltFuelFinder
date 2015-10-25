// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.view.View;
import android.widget.Button;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.reservation:
//            ReservationMainFragment

class this._cls0
    implements android.view.MainFragment._cls3
{

    final ReservationMainFragment this$0;

    public void onClick(View view)
    {
        ReservationMainFragment.access$202(ReservationMainFragment.this, 2);
        ViewUtils.updateButtonsState(ReservationMainFragment.access$700(ReservationMainFragment.this), new Button[] {
            ReservationMainFragment.access$500(ReservationMainFragment.this), ReservationMainFragment.access$400(ReservationMainFragment.this)
        });
        ReservationMainFragment.access$600(ReservationMainFragment.this, getHoldActivity());
    }

    ()
    {
        this$0 = ReservationMainFragment.this;
        super();
    }
}
