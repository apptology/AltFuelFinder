// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.reservation.entities.ReservationTimeItem;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class ReservationTimeAdapter extends AbstractAdapter
{

    public ReservationTimeAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.service_time_cell, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ReservationTimeItem reservationtimeitem;
        Date date;
        Date date1;
        SimpleDateFormat simpledateformat;
        if (view == null)
        {
            viewgroup = new com.biznessapps.common.adapters.ListItemHolder.ReservationTimeItem();
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup.setTimeFromView((TextView)view.findViewById(com.biznessapps.layout.R.id.service_time_cell_from));
            viewgroup.setTimeToView((TextView)view.findViewById(com.biznessapps.layout.R.id.service_time_cell_to));
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (com.biznessapps.common.adapters.ListItemHolder.ReservationTimeItem)view.getTag();
        }
        reservationtimeitem = (ReservationTimeItem)getItem(i);
        date = new Date(0, 0, 1, reservationtimeitem.getFrom() / 60, reservationtimeitem.getFrom() % 60);
        date1 = new Date(0, 0, 1, reservationtimeitem.getTo() / 60, reservationtimeitem.getTo() % 60);
        simpledateformat = new SimpleDateFormat("h:mm a");
        viewgroup.getTimeFromView().setText(simpledateformat.format(date));
        viewgroup.getTimeToView().setText(simpledateformat.format(date1));
        if (reservationtimeitem.hasColor())
        {
            view.setBackgroundDrawable(getListItemDrawable(reservationtimeitem.getItemColor()));
            setTextColorToView(reservationtimeitem.getItemTextColor(), new TextView[] {
                viewgroup.getTimeFromView(), viewgroup.getTimeToView()
            });
        }
        return view;
    }
}
