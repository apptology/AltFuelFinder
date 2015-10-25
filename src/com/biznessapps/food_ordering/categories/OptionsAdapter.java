// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.categories;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.food_ordering.FOUtils;
import com.biznessapps.food_ordering.entities.OrderOptionEntity;
import com.biznessapps.utils.CommonUtils;
import java.util.List;

public class OptionsAdapter extends AbstractAdapter
{
    public static interface ClickListener
    {

        public abstract void onClicked(boolean flag, OrderOptionEntity orderoptionentity);
    }

    private static class ViewHolder
    {

        ImageView checkView;
        TextView nameView;
        TextView priceView;

        private ViewHolder()
        {
        }

    }


    private String currencySign;
    private ClickListener listener;

    public OptionsAdapter(Context context, List list, UiSettings uisettings, String s)
    {
        super(context, list, com.biznessapps.layout.R.layout.fo_option_item, uisettings);
        currencySign = s;
    }

    public View getView(int i, View view, final ViewGroup checkView)
    {
        final OrderOptionEntity item;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            checkView = new ViewHolder();
            checkView.priceView = (TextView)view.findViewById(com.biznessapps.layout.R.id.option_price_view);
            checkView.nameView = (TextView)view.findViewById(com.biznessapps.layout.R.id.option_name_view);
            checkView.checkView = (ImageView)view.findViewById(com.biznessapps.layout.R.id.check_view);
            ((ViewHolder) (checkView)).nameView.setTextColor(settings.getFeatureTextColor());
            ((ViewHolder) (checkView)).priceView.setTextColor(settings.getFeatureTextColor());
            view.setTag(checkView);
        } else
        {
            checkView = (ViewHolder)view.getTag();
        }
        item = (OrderOptionEntity)getItem(i);
        ((ViewHolder) (checkView)).priceView.setText(FOUtils.getFormattedValue(item.getCharges(), currencySign));
        ((ViewHolder) (checkView)).nameView.setText(item.getName());
        checkView = ((ViewHolder) (checkView)).checkView;
        checkView.setOnClickListener(new android.view.View.OnClickListener() {

            final OptionsAdapter this$0;
            final ImageView val$checkView;
            final OrderOptionEntity val$item;

            public void onClick(View view1)
            {
                boolean flag = true;
                if (checkView.getTag() == null)
                {
                    checkView.setTag(Boolean.valueOf(true));
                    checkView.setBackgroundColor(
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = OptionsAdapter.this;
                checkView = imageview;
                item = orderoptionentity;
                super();
            }
        });
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final OptionsAdapter this$0;
            final ImageView val$checkView;

            public void onClick(View view1)
            {
                checkView.performClick();
            }

            
            {
                this$0 = OptionsAdapter.this;
                checkView = imageview;
                super();
            }
        });
        return view;
    }

    public void setListener(ClickListener clicklistener)
    {
        listener = clicklistener;
    }



}
