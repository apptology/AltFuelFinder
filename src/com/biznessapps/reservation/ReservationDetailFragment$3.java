// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.content.DialogInterface;
import android.content.Intent;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.CachingManager;
import com.biznessapps.reservation.entities.ReservationEntity;
import java.util.Map;

// Referenced classes of package com.biznessapps.reservation:
//            ReservationDetailFragment, ReservationDataKeeper

class this._cls0
    implements android.content.ner
{

    final ReservationDetailFragment this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface = getIntent().getStringExtra("TAB_SPECIAL_ID");
        String s = ReservationDetailFragment.access$200(ReservationDetailFragment.this).getSessionToken();
        Map map = AppHttpUtils.getEmptyParams();
        map.put("app_code", cacher().getAppCode());
        map.put("tab_id", dialoginterface);
        map.put("action", "4");
        map.put("tk", s);
        map.put("id", ReservationDetailFragment.access$300(ReservationDetailFragment.this).getId());
        ReservationDetailFragment.access$400(ReservationDetailFragment.this, map);
    }

    ()
    {
        this$0 = ReservationDetailFragment.this;
        super();
    }
}
