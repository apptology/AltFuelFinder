// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.categories;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.entities.CartEntity;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

public class CategoryItemAdapter extends AbstractAdapter
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


    public CategoryItemAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.fo_category_item_row, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        com.biznessapps.food_ordering.entities.CategoryEntity.Item item;
        ImageView imageview;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.thumbnailView = (ImageView)view.findViewById(com.biznessapps.layout.R.id.thumbnail_view);
            viewgroup.nameView = (TextView)view.findViewById(com.biznessapps.layout.R.id.name_view);
            viewgroup.descriptionView = (TextView)view.findViewById(com.biznessapps.layout.R.id.description_view);
            viewgroup.priceView = (TextView)view.findViewById(com.biznessapps.layout.R.id.price_view);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        item = (com.biznessapps.food_ordering.entities.CategoryEntity.Item)getItem(i);
        ((ViewHolder) (viewgroup)).nameView.setText(item.getTitle());
        ((ViewHolder) (viewgroup)).descriptionView.setText(item.getDescription());
        ((ViewHolder) (viewgroup)).priceView.setText(FoodOrderingManager.getInstance().getCart().getFormattedValue(item.getPrice()));
        if (!TextUtils.isEmpty(item.getImageUrl()))
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (i != 0)
        {
            com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
            imageloadparams.setView(((ViewHolder) (viewgroup)).thumbnailView);
            imageloadparams.setTint(null);
            imageloadparams.setUrl(item.getImageUrl());
            imageloadparams.setImageSrc(true);
            imageloadparams.setImageType(2);
            imageFetcher.loadImage(imageloadparams);
        }
        imageview = ((ViewHolder) (viewgroup)).thumbnailView;
        if (i != 0)
        {
            i = 0;
        } else
        {
            i = 4;
        }
        imageview.setVisibility(i);
        if (item.hasColor())
        {
            view.setBackgroundDrawable(getListItemDrawable(item.getItemColor()));
            setTextColorToView(item.getItemTextColor(), new TextView[] {
                ((ViewHolder) (viewgroup)).priceView, ((ViewHolder) (viewgroup)).nameView, ((ViewHolder) (viewgroup)).descriptionView
            });
        }
        return view;
    }
}
