// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

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
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

public class ReservationLocationAdapter extends AbstractAdapter
{
    private static class ViewHolder
    {

        TextView distanceView;
        ImageView iconImage;
        TextView nameView;
        TextView placeView;

        private ViewHolder()
        {
        }

    }


    public ReservationLocationAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.reservation_location_item_layout, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        LocationEntity locationentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.nameView = (TextView)view.findViewById(com.biznessapps.layout.R.id.location_name_view);
            viewgroup.distanceView = (TextView)view.findViewById(com.biznessapps.layout.R.id.location_distance);
            viewgroup.placeView = (TextView)view.findViewById(com.biznessapps.layout.R.id.location_place_view);
            viewgroup.iconImage = (ImageView)view.findViewById(com.biznessapps.layout.R.id.icon_image);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        locationentity = (LocationEntity)getItem(i);
        if (locationentity != null)
        {
            LocationUtils.setAddress(((ViewHolder) (viewgroup)).nameView, ((ViewHolder) (viewgroup)).placeView, locationentity);
            String s;
            String s1;
            if (StringUtils.isNotEmpty(locationentity.getLatitude()))
            {
                s = locationentity.getLatitude();
            } else
            {
                s = "0";
            }
            if (StringUtils.isNotEmpty(locationentity.getLongitude()))
            {
                s1 = locationentity.getLongitude();
            } else
            {
                s1 = "0";
            }
            s = ViewUtils.getStaticMapUrl(s, s1);
            imageFetcher.loadCircledBackground(s, ((ViewHolder) (viewgroup)).iconImage);
            LocationUtils.setDistanceValue(getContext(), ((ViewHolder) (viewgroup)).distanceView, locationentity);
            if (locationentity.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(locationentity.getItemColor()));
                setTextColorToView(locationentity.getItemTextColor(), new TextView[] {
                    ((ViewHolder) (viewgroup)).nameView, ((ViewHolder) (viewgroup)).distanceView, ((ViewHolder) (viewgroup)).placeView
                });
            }
        }
        return view;
    }
}
