// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.food_ordering.entities.PastOrderEntity;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;

public class PastOrderAdapter extends AbstractAdapter
{
    private static class ViewHolder
    {

        TextView deliveryView;
        TextView descriptionView;
        TextView priceView;
        ImageView thumbnailView;
        TextView titleView;

        private ViewHolder()
        {
        }

    }


    private static final String PAST_ORDERS_DATE_FORMAT = "dd MMM yyyy";
    private SimpleDateFormat formatter;

    public PastOrderAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.fo_past_order_row, uisettings);
        formatter = new SimpleDateFormat("dd MMM yyyy", Locale.getDefault());
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        Object obj;
        Object obj1;
        PastOrderEntity pastorderentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.titleView = (TextView)view.findViewById(com.biznessapps.layout.R.id.title_view);
            viewgroup.descriptionView = (TextView)view.findViewById(com.biznessapps.layout.R.id.description_view);
            viewgroup.thumbnailView = (ImageView)view.findViewById(com.biznessapps.layout.R.id.thumbnail_view);
            viewgroup.deliveryView = (TextView)view.findViewById(com.biznessapps.layout.R.id.delivery_view);
            viewgroup.priceView = (TextView)view.findViewById(com.biznessapps.layout.R.id.price_view);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        pastorderentity = (PastOrderEntity)getItem(i);
        obj1 = pastorderentity.getAddressTopRow();
        obj = obj1;
        if (StringUtils.isEmpty(((String) (obj1))))
        {
            obj = pastorderentity.getAddressBottomRow();
        }
        ((ViewHolder) (viewgroup)).titleView.setText(((CharSequence) (obj)));
        ((ViewHolder) (viewgroup)).priceView.setText(pastorderentity.getTotalAmount());
        i = pastorderentity.getOrderType();
        if (i == 3)
        {
            i = com.biznessapps.layout.R.string.fo_dine_in;
        } else
        if (i == 2)
        {
            i = com.biznessapps.layout.R.string.fo_takeout;
        } else
        {
            i = com.biznessapps.layout.R.string.fo_delivery;
        }
        if (pastorderentity.getTime() != null)
        {
            obj = formatter.format(pastorderentity.getTime());
        } else
        {
            obj = "";
        }
        obj1 = pastorderentity.getOrderedItems();
        if (obj1 != null && !((List) (obj1)).isEmpty())
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append(getContext().getString(com.biznessapps.layout.R.string.fo_items)).append(": ");
            int k = ((List) (obj1)).size();
            for (int j = 0; j < k; j++)
            {
                stringbuilder.append(((com.biznessapps.food_ordering.entities.CategoryEntity.Item)((List) (obj1)).get(j)).getTitle());
                if (j < k - 1)
                {
                    stringbuilder.append(", ");
                }
            }

            ((ViewHolder) (viewgroup)).descriptionView.setText(stringbuilder.toString());
            ((ViewHolder) (viewgroup)).descriptionView.setVisibility(0);
        } else
        {
            ((ViewHolder) (viewgroup)).descriptionView.setVisibility(8);
        }
        ((ViewHolder) (viewgroup)).deliveryView.setText(String.format("%s: %s", new Object[] {
            getContext().getString(i), obj
        }));
        obj = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
        ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setView(((ViewHolder) (viewgroup)).thumbnailView);
        ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setUrl(pastorderentity.getThumbnail());
        ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageSrc(true);
        ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageType(2);
        imageFetcher.loadImage(((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)));
        if (pastorderentity.hasColor())
        {
            view.setBackgroundDrawable(getListItemDrawable(pastorderentity.getItemColor()));
            setTextColorToView(pastorderentity.getItemTextColor(), new TextView[] {
                ((ViewHolder) (viewgroup)).priceView, ((ViewHolder) (viewgroup)).titleView, ((ViewHolder) (viewgroup)).descriptionView, ((ViewHolder) (viewgroup)).deliveryView
            });
        }
        return view;
    }
}
