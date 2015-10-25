// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account.address;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.location.entities.LocationEntity;
import java.util.List;

public class LocationSearchAdapter extends AbstractAdapter
{

    public LocationSearchAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.fo_location_chooser_item, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        LocationEntity locationentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new com.biznessapps.common.adapters.ListItemHolder.CommonItem();
            viewgroup.setTextViewTitle((TextView)view.findViewById(com.biznessapps.layout.R.id.simple_text_view));
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (com.biznessapps.common.adapters.ListItemHolder.CommonItem)view.getTag();
        }
        locationentity = (LocationEntity)getItem(i);
        if (locationentity != null)
        {
            viewgroup.getTextViewTitle().setText(Html.fromHtml(locationentity.getTitle()));
        }
        return view;
    }
}
