// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.cart;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.style.BZButtonStyle;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.entities.CartEntity;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

public class CartItemsAdapter extends AbstractAdapter
{
    public static interface CartClickListener
    {

        public abstract void onChangedNumber(com.biznessapps.food_ordering.entities.CategoryEntity.Item item, int i);
    }

    private static class ViewHolder
    {

        Button addValueView;
        TextView descriptionView;
        TextView nameView;
        TextView priceView;
        Button subValueView;
        ImageView thumbnailView;
        TextView valueView;

        private ViewHolder()
        {
        }

    }


    private CartClickListener listener;

    public CartItemsAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.fo_cart_item, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        final TextView valueView;
        String s;
        final com.biznessapps.food_ordering.entities.CategoryEntity.Item item;
        final TextView priceView;
        String s1;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.thumbnailView = (ImageView)view.findViewById(com.biznessapps.layout.R.id.thumbnail_view);
            viewgroup.nameView = (TextView)view.findViewById(com.biznessapps.layout.R.id.name_view);
            viewgroup.descriptionView = (TextView)view.findViewById(com.biznessapps.layout.R.id.description_view);
            viewgroup.priceView = (TextView)view.findViewById(com.biznessapps.layout.R.id.price_view);
            viewgroup.valueView = (TextView)view.findViewById(com.biznessapps.layout.R.id.value_view);
            viewgroup.subValueView = (Button)view.findViewById(com.biznessapps.layout.R.id.subtract_value_button);
            viewgroup.addValueView = (Button)view.findViewById(com.biznessapps.layout.R.id.add_value_button);
            BZButtonStyle.getInstance(getContext()).apply(settings, ((ViewHolder) (viewgroup)).subValueView);
            BZButtonStyle.getInstance(getContext()).apply(settings, ((ViewHolder) (viewgroup)).addValueView);
            ((ViewHolder) (viewgroup)).nameView.setTextColor(settings.getFeatureTextColor());
            ((ViewHolder) (viewgroup)).descriptionView.setTextColor(settings.getFeatureTextColor());
            ((ViewHolder) (viewgroup)).valueView.setTextColor(settings.getFeatureTextColor());
            ((ViewHolder) (viewgroup)).priceView.setTextColor(settings.getFeatureTextColor());
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        item = (com.biznessapps.food_ordering.entities.CategoryEntity.Item)getItem(i);
        ((ViewHolder) (viewgroup)).nameView.setText(item.getTitle());
        i = item.getQuantity();
        valueView = ((ViewHolder) (viewgroup)).valueView;
        priceView = ((ViewHolder) (viewgroup)).priceView;
        valueView.setText((new StringBuilder()).append("").append(i).toString());
        ((ViewHolder) (viewgroup)).subValueView.setOnClickListener(new android.view.View.OnClickListener() {

            final CartItemsAdapter this$0;
            final com.biznessapps.food_ordering.entities.CategoryEntity.Item val$item;
            final TextView val$priceView;
            final TextView val$valueView;

            public void onClick(View view1)
            {
                int j = item.getQuantity() - 1;
                if (j > 0)
                {
                    item.setQuantity(j);
                    valueView.setText((new StringBuilder()).append("").append(j).toString());
                    priceView.setText(FoodOrderingManager.getInstance().getCart().getFormattedValue(item.getPrice() * (float)j));
                }
                listener.onChangedNumber(item, j);
            }

            
            {
                this$0 = CartItemsAdapter.this;
                item = item1;
                valueView = textview;
                priceView = textview1;
                super();
            }
        });
        ((ViewHolder) (viewgroup)).addValueView.setOnClickListener(new android.view.View.OnClickListener() {

            final CartItemsAdapter this$0;
            final com.biznessapps.food_ordering.entities.CategoryEntity.Item val$item;
            final TextView val$priceView;
            final TextView val$valueView;

            public void onClick(View view1)
            {
                int j = item.getQuantity() + 1;
                item.setQuantity(j);
                valueView.setText((new StringBuilder()).append("").append(j).toString());
                priceView.setText(FoodOrderingManager.getInstance().getCart().getFormattedValue(item.getPrice() * (float)j));
                listener.onChangedNumber(item, j);
            }

            
            {
                this$0 = CartItemsAdapter.this;
                item = item1;
                valueView = textview;
                priceView = textview1;
                super();
            }
        });
        s1 = item.getOptionsListNames();
        s = item.getDescription();
        valueView = s;
        if (StringUtils.isNotEmpty(s1))
        {
            valueView = String.format("%s <br/> %s: %s", new Object[] {
                s, getContext().getString(com.biznessapps.layout.R.string.fo_options), s1
            });
        }
        ((ViewHolder) (viewgroup)).descriptionView.setText(Html.fromHtml(valueView));
        priceView.setText(FoodOrderingManager.getInstance().getCart().getFormattedValue(item.getPrice() * (float)i));
        valueView = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
        valueView.setView(((ViewHolder) (viewgroup)).thumbnailView);
        valueView.setUrl(item.getImageUrl());
        valueView.setImageSrc(true);
        valueView.setImageType(2);
        imageFetcher.loadImage(valueView);
        return view;
    }

    public void setListener(CartClickListener cartclicklistener)
    {
        listener = cartclicklistener;
    }

}
