// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.app.Activity;
import android.os.AsyncTask;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.DataSource;
import com.biznessapps.reservation.entities.ReservationServiceItem;
import com.biznessapps.reservation.entities.ReservationTimeItem;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.calendar.CalendarView;
import com.biznessapps.widgets.calendar.DatePickerBar;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.biznessapps.reservation:
//            ReservationBookFragment, ReservationDataKeeper, ReservationTimeAdapter

class this._cls0
    implements android.view.BookFragment._cls4
{

    final ReservationBookFragment this$0;

    public void onClick(View view)
    {
        ReservationBookFragment.access$600(ReservationBookFragment.this, ReservationBookFragment.access$400(ReservationBookFragment.this));
        view = (ViewGroup)ReservationBookFragment.access$1800(ReservationBookFragment.this).findViewById(com.biznessapps.layout.nt);
        ImageView imageview = (ImageView)view.findViewById(com.biznessapps.layout.nt);
        imageview.setOnClickListener(ReservationBookFragment.access$2000(imageview, view, ReservationBookFragment.access$1900(ReservationBookFragment.this)));
        ReservationBookFragment.access$000(ReservationBookFragment.this).setHolidayDays(ReservationBookFragment.access$1700(ReservationBookFragment.this).getRestWeeks());
        ReservationBookFragment.access$000(ReservationBookFragment.this).setBlockedDays(ReservationBookFragment.access$700(ReservationBookFragment.this).getBlockedDays());
        ReservationBookFragment.access$000(ReservationBookFragment.this).setTimeInMillis(ReservationBookFragment.access$200(ReservationBookFragment.this).getPickerDate().getTime());
        if (ReservationBookFragment.access$1300(ReservationBookFragment.this) == null)
        {
            view = new Date();
            if (ReservationBookFragment.access$2100(ReservationBookFragment.this, view))
            {
                ReservationBookFragment.access$1302(ReservationBookFragment.this, view);
            } else
            {
                ReservationBookFragment.access$1302(ReservationBookFragment.this, ReservationBookFragment.access$2300(ReservationBookFragment.this, ReservationBookFragment.access$2200(ReservationBookFragment.this, view)));
            }
        }
        if (ReservationBookFragment.access$1300(ReservationBookFragment.this) != null)
        {
            ReservationBookFragment.access$000(ReservationBookFragment.this).selectDate(ReservationBookFragment.access$1300(ReservationBookFragment.this));
            ReservationBookFragment.access$200(ReservationBookFragment.this).setPickerDate(ReservationBookFragment.access$1300(ReservationBookFragment.this));
            (new AsyncTask() {

                final ReservationBookFragment._cls4 this$1;

                protected volatile Object doInBackground(Object aobj[])
                {
                    return doInBackground((String[])aobj);
                }

                protected transient List doInBackground(String as[])
                {
                    Object obj = new SimpleDateFormat("yyyy-MM-dd");
                    as = Calendar.getInstance();
                    as.setTime(ReservationBookFragment.access$1300(this$0));
                    as = ReservationBookFragment.access$2500()[as.get(7) - 1];
                    obj = ((SimpleDateFormat) (obj)).format(ReservationBookFragment.access$1300(this$0));
                    String s = ReservationBookFragment.access$700(this$0).getUserEmail();
                    as = String.format("reserv_item_time.php?app_code=%s&tab_id=%s&id=%s&day=%s&date=%s&user_id=%s", new Object[] {
                        cacher().getAppCode(), ReservationBookFragment.access$2600(this$0), ReservationBookFragment.access$1700(this$0).getId(), as, obj, s
                    });
                    return JsonParser.parseReservationTimeData(DataSource.getInstance().getData(as));
                }

                protected volatile void onPostExecute(Object obj)
                {
                    onPostExecute((List)obj);
                }

                protected void onPostExecute(List list)
                {
                    super.onPostExecute(list);
                    Object obj = getHoldActivity();
                    if (obj != null)
                    {
                        Object obj1 = new LinkedList();
                        for (Iterator iterator = list.iterator(); iterator.hasNext(); ((List) (obj1)).add(ViewUtils.getWrappedItem((ReservationTimeItem)iterator.next(), ((List) (obj1)), ReservationBookFragment.access$2700(this$0)))) { }
                        obj = new ReservationTimeAdapter(((Activity) (obj)).getApplicationContext(), ((List) (obj1)), ReservationBookFragment.access$2800(this$0));
                        obj1 = (ListView)ReservationBookFragment.access$2400(this$0).findViewById(com.biznessapps.layout.R.id.list_view);
                        ((ListView) (obj1)).setAdapter(((android.widget.ListAdapter) (obj)));
                        ((ListView) (obj1)).setOnItemClickListener(list. new android.widget.AdapterView.OnItemClickListener() {

                            final _cls1 this$2;
                            final List val$items;

                            public void onItemClick(AdapterView adapterview, View view, int i, long l)
                            {
                                adapterview = (ReservationTimeItem)items.get(i);
                                ReservationBookFragment.access$2902(this$0, ReservationBookFragment.access$1300(this$0));
                                ReservationBookFragment.access$3002(this$0, adapterview);
                                ReservationBookFragment.access$3100(this$0).setEnabled(true);
                                ReservationBookFragment.access$600(this$0, ReservationBookFragment.access$3100(this$0));
                            }

            
            {
                this$2 = final__pcls1;
                items = List.this;
                super();
            }
                        });
                    }
                }

                protected void onPreExecute()
                {
                    ((ListView)ReservationBookFragment.access$2400(this$0).findViewById(com.biznessapps.layout.R.id.list_view)).setAdapter(null);
                }

            
            {
                this$1 = ReservationBookFragment._cls4.this;
                super();
            }
            }).execute(new String[0]);
            return;
        } else
        {
            ((ListView)ReservationBookFragment.access$2400(ReservationBookFragment.this).findViewById(com.biznessapps.layout.nt)).setAdapter(null);
            return;
        }
    }

    _cls1.this._cls1()
    {
        this$0 = ReservationBookFragment.this;
        super();
    }
}
