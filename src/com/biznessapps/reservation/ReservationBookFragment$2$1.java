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

class this._cls1
    implements android.widget.ner
{

    final is._cls0 this$1;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        ReservationBookFragment.access$1102(_fld0, (LocationEntity)adapterview.getAdapter().getItem(i));
        ReservationBookFragment.access$1200(_fld0).setEnabled(true);
        ReservationBookFragment.access$1200(_fld0).performClick();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/reservation/ReservationBookFragment$2

/* anonymous class */
    class ReservationBookFragment._cls2
        implements android.view.View.OnClickListener
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
            ReservationBookFragment.access$1000(ReservationBookFragment.this).setOnItemClickListener(new ReservationBookFragment._cls2._cls1());
        }

            
            {
                this$0 = ReservationBookFragment.this;
                super();
            }
    }

}
