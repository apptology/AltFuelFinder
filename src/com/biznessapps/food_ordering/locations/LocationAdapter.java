// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.locations;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.utils.CommonUtils;
import java.util.List;

public class LocationAdapter extends AbstractAdapter
{

    public LocationAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.fo_location_row, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        LocationEntity locationentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new com.biznessapps.common.adapters.ListItemHolder.LocationItem();
            viewgroup.setTextViewCity((TextView)view.findViewById(com.biznessapps.layout.R.id.location_city_text));
            viewgroup.setTextViewAddress((TextView)view.findViewById(com.biznessapps.layout.R.id.location_address_text));
            viewgroup.setStatusView((TextView)view.findViewById(com.biznessapps.layout.R.id.location_status_text));
            viewgroup.setRightArrowView((ImageView)view.findViewById(com.biznessapps.layout.R.id.right_arrow_view));
            viewgroup.setDistanceView((TextView)view.findViewById(com.biznessapps.layout.R.id.distance_text));
            ImageView imageview = (ImageView)view.findViewById(com.biznessapps.layout.R.id.location_ping);
            CommonUtils.overrideImageColor(settings.getButtonBgColor(), imageview.getDrawable());
            CommonUtils.overrideImageColor(settings.getButtonBgColor(), viewgroup.getRightArrowView().getBackground());
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (com.biznessapps.common.adapters.ListItemHolder.LocationItem)view.getTag();
        }
        locationentity = (LocationEntity)getItem(i);
        if (locationentity != null)
        {
            LocationUtils.setAddress(viewgroup.getTextViewCity(), viewgroup.getTextViewAddress(), locationentity);
            TextView textview = viewgroup.getStatusView();
            Context context = getContext();
            if (locationentity.isActiveStatus())
            {
                i = com.biznessapps.layout.R.string.open_now;
            } else
            {
                i = com.biznessapps.layout.R.string.closed_now;
            }
            textview.setText(context.getString(i));
            LocationUtils.setDistanceValue(getContext(), viewgroup.getDistanceView(), locationentity);
            if (locationentity.isActiveStatus())
            {
                viewgroup.getStatusView().setTextColor(settings.getButtonBgColor());
            } else
            {
                viewgroup.getStatusView().setTextColor(locationentity.getItemTextColor());
            }
            if (locationentity.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(locationentity.getItemColor()));
                setTextColorToView(locationentity.getItemTextColor(), new TextView[] {
                    viewgroup.getTextViewCity(), viewgroup.getTextViewAddress(), viewgroup.getDistanceView()
                });
            }
        }
        return view;
    }
}
