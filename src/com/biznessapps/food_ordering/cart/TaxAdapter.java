// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.cart;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.food_ordering.FOUtils;
import com.biznessapps.food_ordering.entities.TaxEntity;
import java.util.List;

public class TaxAdapter extends AbstractAdapter
{
    private static class ViewHolder
    {

        TextView price;
        TextView title;

        private ViewHolder()
        {
        }

    }


    public TaxAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.fo_tax_item, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        TaxEntity taxentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.price = (TextView)view.findViewById(com.biznessapps.layout.R.id.tax_value_view);
            viewgroup.title = (TextView)view.findViewById(com.biznessapps.layout.R.id.tax_label_view);
            ((ViewHolder) (viewgroup)).price.setTextColor(settings.getFeatureTextColor());
            ((ViewHolder) (viewgroup)).title.setTextColor(settings.getFeatureTextColor());
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        taxentity = (TaxEntity)getItem(i);
        ((ViewHolder) (viewgroup)).price.setText(FOUtils.getFormattedValue(taxentity.getCaclulatedTax(), taxentity.getCurrencySign()));
        ((ViewHolder) (viewgroup)).title.setText(taxentity.getTitle());
        return view;
    }
}
