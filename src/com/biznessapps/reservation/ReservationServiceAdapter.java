// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

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
import com.biznessapps.reservation.entities.ReservationServiceItem;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

public class ReservationServiceAdapter extends AbstractAdapter
{
    public static interface OnServiceClickListener
    {

        public abstract void onBooked(ReservationServiceItem reservationserviceitem);

        public abstract void onShared(ReservationServiceItem reservationserviceitem);
    }

    private static class ViewHolder
    {

        Button bookItButton;
        TextView nameView;
        TextView priceView;
        Button shareButton;
        ImageView thumbnailImage;
        TextView timeView;

        private ViewHolder()
        {
        }

    }


    private String bookIt;
    private OnServiceClickListener listener;
    private String minsText;
    private String shareText;

    public ReservationServiceAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.reservation_service_item_layout, uisettings);
        shareText = context.getString(com.biznessapps.layout.R.string.share);
        bookIt = context.getString(com.biznessapps.layout.R.string.book_it);
        minsText = context.getString(com.biznessapps.layout.R.string.mins);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        final ReservationServiceItem item;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.nameView = (TextView)view.findViewById(com.biznessapps.layout.R.id.service_name_view);
            viewgroup.priceView = (TextView)view.findViewById(com.biznessapps.layout.R.id.service_price);
            viewgroup.timeView = (TextView)view.findViewById(com.biznessapps.layout.R.id.service_time);
            viewgroup.shareButton = (Button)view.findViewById(com.biznessapps.layout.R.id.share_button);
            viewgroup.bookItButton = (Button)view.findViewById(com.biznessapps.layout.R.id.book_it_button);
            viewgroup.thumbnailImage = (ImageView)view.findViewById(com.biznessapps.layout.R.id.thumbnail_image);
            ((ViewHolder) (viewgroup)).shareButton.setText(shareText);
            ((ViewHolder) (viewgroup)).bookItButton.setText(bookIt);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        item = (ReservationServiceItem)getItem(i);
        if (item != null)
        {
            ((ViewHolder) (viewgroup)).bookItButton.setOnClickListener(new android.view.View.OnClickListener() {

                final ReservationServiceAdapter this$0;
                final ReservationServiceItem val$item;

                public void onClick(View view1)
                {
                    listener.onBooked(item);
                }

            
            {
                this$0 = ReservationServiceAdapter.this;
                item = reservationserviceitem;
                super();
            }
            });
            ((ViewHolder) (viewgroup)).shareButton.setOnClickListener(new android.view.View.OnClickListener() {

                final ReservationServiceAdapter this$0;
                final ReservationServiceItem val$item;

                public void onClick(View view1)
                {
                    listener.onShared(item);
                }

            
            {
                this$0 = ReservationServiceAdapter.this;
                item = reservationserviceitem;
                super();
            }
            });
            CommonUtils.overrideImageColor(settings.getButtonBgColor(), ((ViewHolder) (viewgroup)).bookItButton.getBackground());
            CommonUtils.overrideImageColor(settings.getButtonBgColor(), ((ViewHolder) (viewgroup)).shareButton.getBackground());
            ((ViewHolder) (viewgroup)).bookItButton.setTextColor(settings.getButtonTextColor());
            ((ViewHolder) (viewgroup)).shareButton.setTextColor(settings.getButtonTextColor());
            imageFetcher.loadCircledBackground(item.getThumbnail(), ((ViewHolder) (viewgroup)).thumbnailImage);
            ((ViewHolder) (viewgroup)).nameView.setText(Html.fromHtml(item.getName()));
            ((ViewHolder) (viewgroup)).priceView.setText(Html.fromHtml(String.format("%s%.2f", new Object[] {
                item.getCurrencySign(), Float.valueOf(item.getPrice())
            })));
            ((ViewHolder) (viewgroup)).timeView.setText((new StringBuilder()).append(item.getMins()).append(" ").append(minsText).toString());
            if (item.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(item.getItemColor()));
                setTextColorToView(item.getItemTextColor(), new TextView[] {
                    ((ViewHolder) (viewgroup)).nameView, ((ViewHolder) (viewgroup)).priceView, ((ViewHolder) (viewgroup)).timeView
                });
            }
        }
        return view;
    }

    public void setListener(OnServiceClickListener onserviceclicklistener)
    {
        listener = onserviceclicklistener;
    }

}
