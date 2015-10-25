// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.real_estate;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.entities.CommonListEntity;
import java.util.List;

public class RealEstatePropertyAdapter extends AbstractAdapter
{
    private static class ViewHolder
    {

        TextView label;

        private ViewHolder()
        {
        }

    }


    public RealEstatePropertyAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.real_estate_property_row, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        CommonListEntity commonlistentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.label = (TextView)view.findViewById(com.biznessapps.layout.R.id.label_view);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        commonlistentity = (CommonListEntity)getItem(i);
        if (commonlistentity != null)
        {
            ((ViewHolder) (viewgroup)).label.setText(commonlistentity.getTitle());
            if (commonlistentity.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(commonlistentity.getItemColor()));
                setTextColorToView(commonlistentity.getItemTextColor(), new TextView[] {
                    ((ViewHolder) (viewgroup)).label
                });
            }
        }
        return view;
    }
}
