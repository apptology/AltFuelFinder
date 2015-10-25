// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.app.Activity;
import android.os.AsyncTask;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.DataSource;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.reservation.entities.ReservationServiceItem;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.biznessapps.reservation:
//            ReservationBookFragment, ReservationServiceAdapter

class this._cls1 extends AsyncTask
{

    final is._cls0 this$1;

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected transient List doInBackground(String as[])
    {
        as = String.format("reserv_items.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), ReservationBookFragment.access$1400(_fld0)
        });
        return JsonParser.parseReservationServiceData(DataSource.getInstance().getData(as));
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((List)obj);
    }

    protected void onPostExecute(List list)
    {
        super.onPostExecute(list);
        final com.biznessapps.common.activities.CommonFragmentActivity activity = getHoldActivity();
        if (activity != null)
        {
            LinkedList linkedlist = new LinkedList();
            for (list = list.iterator(); list.hasNext(); linkedlist.add(ViewUtils.getWrappedItem((ReservationServiceItem)list.next(), linkedlist, ReservationBookFragment.access$1500(_fld0)))) { }
            list = new ReservationServiceAdapter(activity, linkedlist, ReservationBookFragment.access$1600(_fld0));
            list.setListener(new ReservationServiceAdapter.OnServiceClickListener() {

                final ReservationBookFragment._cls3._cls1 this$2;
                final Activity val$activity;

                public void onBooked(ReservationServiceItem reservationserviceitem)
                {
                    ReservationBookFragment.access$1702(this$0, reservationserviceitem);
                    ReservationBookFragment.access$400(this$0).setEnabled(true);
                    ReservationBookFragment.access$400(this$0).performClick();
                }

                public void onShared(ReservationServiceItem reservationserviceitem)
                {
                    ShareComponent.showSharingOptionDialog(activity);
                }

            
            {
                this$2 = ReservationBookFragment._cls3._cls1.this;
                activity = activity1;
                super();
            }
            });
            ReservationBookFragment.access$1000(_fld0).setAdapter(list);
        }
    }

    protected void onPreExecute()
    {
        ReservationBookFragment.access$1000(_fld0).setAdapter(null);
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/reservation/ReservationBookFragment$3

/* anonymous class */
    class ReservationBookFragment._cls3
        implements android.view.View.OnClickListener
    {

        final ReservationBookFragment this$0;

        public void onClick(View view)
        {
            ReservationBookFragment.access$600(ReservationBookFragment.this, ReservationBookFragment.access$1200(ReservationBookFragment.this));
            ReservationBookFragment.access$1302(ReservationBookFragment.this, null);
            ReservationBookFragment.access$400(ReservationBookFragment.this).setEnabled(false);
            (new ReservationBookFragment._cls3._cls1()).execute(new String[0]);
        }

            
            {
                this$0 = ReservationBookFragment.this;
                super();
            }
    }

}
