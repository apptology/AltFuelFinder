// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.content.Intent;
import android.view.View;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;

// Referenced classes of package com.biznessapps.reservation:
//            ReservationMainFragment, ReservationDataKeeper

class this._cls0
    implements android.view.MainFragment._cls5
{

    final ReservationMainFragment this$0;

    public void onClick(View view)
    {
        if (cacher().getReservSystemCacher(ReservationMainFragment.access$800(ReservationMainFragment.this)).isLoggedIn())
        {
            view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("ReservationAccountViewController"));
            String s = getIntent().getStringExtra("TAB_SPECIAL_ID");
            view.putExtra("TAB_FRAGMENT", "ReservationAccountViewController");
            view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.nt.getString));
            view.putExtra("TAB_SPECIAL_ID", s);
            startActivityForResult(view, 0);
            return;
        } else
        {
            ReservationMainFragment.access$900(ReservationMainFragment.this);
            return;
        }
    }

    ()
    {
        this$0 = ReservationMainFragment.this;
        super();
    }
}
