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
import com.biznessapps.location.LocationUtils;
import com.biznessapps.reservation.entities.ReservationEntity;
import com.biznessapps.utils.DateUtils;
import java.text.SimpleDateFormat;
import java.util.List;

public class ReservationAdapter extends AbstractAdapter
{
    private static class ViewHolder
    {

        TextView billingAddressView;
        TextView dateView;
        TextView dayView;
        TextView monthView;
        TextView serviceNameView;
        TextView stateView;

        private ViewHolder()
        {
        }

    }


    private String cancelledState;

    public ReservationAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.upcoming_reserv_item_layout, uisettings);
        cancelledState = context.getString(com.biznessapps.layout.R.string.cancelled);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ReservationEntity reservationentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.serviceNameView = (TextView)view.findViewById(com.biznessapps.layout.R.id.service_name_view);
            viewgroup.billingAddressView = (TextView)view.findViewById(com.biznessapps.layout.R.id.billing_address_view);
            viewgroup.dateView = (TextView)view.findViewById(com.biznessapps.layout.R.id.full_date_view);
            viewgroup.monthView = (TextView)view.findViewById(com.biznessapps.layout.R.id.calendar_month_text);
            viewgroup.dayView = (TextView)view.findViewById(com.biznessapps.layout.R.id.calendar_text);
            viewgroup.stateView = (TextView)view.findViewById(com.biznessapps.layout.R.id.state_view);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        reservationentity = (ReservationEntity)getItem(i);
        if (reservationentity != null)
        {
            ((ViewHolder) (viewgroup)).serviceNameView.setText(reservationentity.getServiceName());
            ((ViewHolder) (viewgroup)).billingAddressView.setText(LocationUtils.getAddress(true, reservationentity));
            if (reservationentity.getTimeFrom() != null)
            {
                ((ViewHolder) (viewgroup)).monthView.setText((new SimpleDateFormat("MMM")).format(reservationentity.getTimeFrom()));
                ((ViewHolder) (viewgroup)).dayView.setText((new SimpleDateFormat("dd")).format(reservationentity.getTimeFrom()));
                ((ViewHolder) (viewgroup)).dateView.setText(DateUtils.getStandartDateFormat(reservationentity.getTimeFrom()));
            }
            if (reservationentity.getOrderState() == 2)
            {
                ((ViewHolder) (viewgroup)).stateView.setText(cancelledState);
            } else
            {
                ((ViewHolder) (viewgroup)).stateView.setText(null);
            }
            if (reservationentity.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(reservationentity.getItemColor()));
                setTextColorToView(reservationentity.getItemTextColor(), new TextView[] {
                    ((ViewHolder) (viewgroup)).serviceNameView, ((ViewHolder) (viewgroup)).billingAddressView, ((ViewHolder) (viewgroup)).dateView, ((ViewHolder) (viewgroup)).stateView
                });
            }
        }
        return view;
    }
}
