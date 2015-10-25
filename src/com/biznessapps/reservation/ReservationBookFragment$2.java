// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.utils.ViewUtils;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.biznessapps.reservation:
//            ReservationBookFragment, ReservationDataKeeper, ReservationLocationAdapter

class this._cls0
    implements android.view.BookFragment._cls2
{

    final ReservationBookFragment this$0;

    public void onClick(View view)
    {
        ReservationBookFragment.access$600(ReservationBookFragment.this, ReservationBookFragment.access$500(ReservationBookFragment.this));
        Object obj = ReservationBookFragment.access$700(ReservationBookFragment.this).getLocations();
        view = new LinkedList();
        for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); view.add(ViewUtils.getWrappedItem((LocationEntity)((Iterator) (obj)).next(), view, ReservationBookFragment.access$800(ReservationBookFragment.this)))) { }
        view = new ReservationLocationAdapter(getApplicationContext(), view, ReservationBookFragment.access$900(ReservationBookFragment.this));
        ReservationBookFragment.access$1000(ReservationBookFragment.this).setAdapter(view);
        ReservationBookFragment.access$1000(ReservationBookFragment.this).setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final ReservationBookFragment._cls2 this$1;

            public void onItemClick(AdapterView adapterview, View view1, int i, long l)
            {
                ReservationBookFragment.access$1102(this$0, (LocationEntity)adapterview.getAdapter().getItem(i));
                ReservationBookFragment.access$1200(this$0).setEnabled(true);
                ReservationBookFragment.access$1200(this$0).performClick();
            }

            
            {
                this$1 = ReservationBookFragment._cls2.this;
                super();
            }
        });
    }

    _cls1.this._cls1()
    {
        this$0 = ReservationBookFragment.this;
        super();
    }
}
