// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.entities.CartEntity;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

public class PastOrdersDetailAdapter extends AbstractAdapter
{
    private static class ViewHolder
    {

        TextView descriptionView;
        TextView nameView;
        TextView priceView;
        ImageView thumbnailView;

        private ViewHolder()
        {
        }

    }


    private String itemPriceTitle;
    private String optionsTitle;
    private String quantityTitle;
    private String sizeTitle;

    public PastOrdersDetailAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.fo_past_cart_item, uisettings);
        sizeTitle = getContext().getString(com.biznessapps.layout.R.string.fo_size);
        quantityTitle = getContext().getString(com.biznessapps.layout.R.string.fo_quantity);
        itemPriceTitle = getContext().getString(com.biznessapps.layout.R.string.fo_item_price);
        optionsTitle = getContext().getString(com.biznessapps.layout.R.string.fo_options);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        Object obj;
        String s;
        com.biznessapps.food_ordering.entities.CategoryEntity.Item item;
        String s1;
        String s2;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.thumbnailView = (ImageView)view.findViewById(com.biznessapps.layout.R.id.thumbnail_view);
            viewgroup.nameView = (TextView)view.findViewById(com.biznessapps.layout.R.id.name_view);
            viewgroup.descriptionView = (TextView)view.findViewById(com.biznessapps.layout.R.id.description_view);
            viewgroup.priceView = (TextView)view.findViewById(com.biznessapps.layout.R.id.price_view);
            ((ViewHolder) (viewgroup)).nameView.setTextColor(settings.getFeatureTextColor());
            ((ViewHolder) (viewgroup)).descriptionView.setTextColor(settings.getFeatureTextColor());
            ((ViewHolder) (viewgroup)).priceView.setTextColor(settings.getFeatureTextColor());
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        item = (com.biznessapps.food_ordering.entities.CategoryEntity.Item)getItem(i);
        ((ViewHolder) (viewgroup)).nameView.setText(item.getTitle());
        obj = FoodOrderingManager.getInstance().getCart().getFormattedValue(item.getPriceWithoutOptions());
        s1 = String.format("%s: %s", new Object[] {
            itemPriceTitle, obj
        });
        i = item.getQuantity();
        s2 = String.format("%s: %d", new Object[] {
            quantityTitle, Integer.valueOf(i)
        });
        obj = item.getSizeValue();
        s = item.getSize();
        if (StringUtils.isNotEmpty(((String) (obj))))
        {
            obj = String.format("%s: %s <br/>", new Object[] {
                sizeTitle, s
            });
        } else
        {
            obj = "";
        }
        s = item.getOptionsListNames();
        if (StringUtils.isNotEmpty(s))
        {
            s = String.format("%s: %s <br/>", new Object[] {
                optionsTitle, s
            });
        } else
        {
            s = "";
        }
        obj = String.format("%s %s <br/> %s %s", new Object[] {
            obj, s1, s, s2
        });
        ((ViewHolder) (viewgroup)).descriptionView.setText(Html.fromHtml(((String) (obj))));
        ((ViewHolder) (viewgroup)).priceView.setText(FoodOrderingManager.getInstance().getCart().getFormattedValue(item.getPrice() * (float)i));
        obj = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
        ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setView(((ViewHolder) (viewgroup)).thumbnailView);
        ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setUrl(item.getImageUrl());
        ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageSrc(true);
        ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageType(2);
        imageFetcher.loadImage(((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)));
        return view;
    }
}
