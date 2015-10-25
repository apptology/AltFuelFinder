// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.categories;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.food_ordering.entities.CategoryEntity;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

public class CategoriesAdapter extends AbstractAdapter
{
    private static class ViewHolder
    {

        View backgroundView;
        TextView itemsCountView;
        TextView nameView;
        View shadowView;

        private ViewHolder()
        {
        }

    }


    private int squareSize;

    public CategoriesAdapter(Context context, List list, UiSettings uisettings, int i)
    {
        super(context, list, i, uisettings);
        squareSize = 0;
        if (com.biznessapps.layout.R.layout.fo_category_item == i)
        {
            i = context.getResources().getDimensionPixelSize(com.biznessapps.layout.R.dimen.common_padding_small0);
            squareSize = (AppCore.getInstance().getDeviceWidth() - i * 3) / 2;
        }
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        CategoryEntity categoryentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.backgroundView = view.findViewById(com.biznessapps.layout.R.id.container);
            viewgroup.shadowView = view.findViewById(com.biznessapps.layout.R.id.shadow_container);
            viewgroup.nameView = (TextView)view.findViewById(com.biznessapps.layout.R.id.title_view);
            viewgroup.itemsCountView = (TextView)view.findViewById(com.biznessapps.layout.R.id.items_count_view);
            if (squareSize > 0)
            {
                android.widget.FrameLayout.LayoutParams layoutparams = (android.widget.FrameLayout.LayoutParams)((ViewHolder) (viewgroup)).backgroundView.getLayoutParams();
                layoutparams.height = squareSize;
                layoutparams.width = squareSize;
                ((ViewHolder) (viewgroup)).shadowView.setLayoutParams(layoutparams);
            }
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        categoryentity = (CategoryEntity)getItem(i);
        if (categoryentity != null)
        {
            ((ViewHolder) (viewgroup)).nameView.setText(categoryentity.getTitle());
            ((ViewHolder) (viewgroup)).itemsCountView.setText((new StringBuilder()).append("").append(categoryentity.getTotalItems()).toString());
            com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
            imageloadparams.setView(((ViewHolder) (viewgroup)).backgroundView);
            imageloadparams.setUrl(categoryentity.getImageUrl());
            imageloadparams.setImageSrc(true);
            imageloadparams.setImageType(2);
            imageFetcher.loadImage(imageloadparams);
        }
        return view;
    }
}
