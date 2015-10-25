// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.real_estate;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

// Referenced classes of package com.biznessapps.real_estate:
//            RealEstateEntity

public class RealEstateListAdapter extends AbstractAdapter
{
    private static class ViewHolder
    {

        TextView addressView;
        TextView bedroomView;
        TextView distanceView;
        ImageView imageView;
        TextView priceView;
        TextView showerView;

        private ViewHolder()
        {
        }

    }


    public RealEstateListAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.real_estate_item_layout, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        RealEstateEntity realestateentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.addressView = (TextView)view.findViewById(com.biznessapps.layout.R.id.address_view);
            viewgroup.priceView = (TextView)view.findViewById(com.biznessapps.layout.R.id.price_view);
            viewgroup.bedroomView = (TextView)view.findViewById(com.biznessapps.layout.R.id.bedroom_view);
            viewgroup.showerView = (TextView)view.findViewById(com.biznessapps.layout.R.id.shower_view);
            viewgroup.distanceView = (TextView)view.findViewById(com.biznessapps.layout.R.id.distance_view);
            viewgroup.imageView = (ImageView)view.findViewById(com.biznessapps.layout.R.id.image_view);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        realestateentity = (RealEstateEntity)getItem(i);
        if (realestateentity != null)
        {
            ((ViewHolder) (viewgroup)).addressView.setText(realestateentity.getAddressInfo());
            if (StringUtils.isNotEmpty(realestateentity.getPrice()) && !realestateentity.getPrice().equals("N/A") && !realestateentity.getPrice().equals("0"))
            {
                ((ViewHolder) (viewgroup)).priceView.setText((new StringBuilder()).append(realestateentity.getPriceUnit()).append(realestateentity.getPrice()).toString());
            } else
            {
                ((ViewHolder) (viewgroup)).priceView.setText(com.biznessapps.layout.R.string.n_a);
            }
            ((ViewHolder) (viewgroup)).bedroomView.setText(realestateentity.getBeds());
            ((ViewHolder) (viewgroup)).showerView.setText(realestateentity.getBaths());
            LocationUtils.setDistanceValue(getContext(), ((ViewHolder) (viewgroup)).distanceView, realestateentity);
            if (realestateentity.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(realestateentity.getItemColor()));
                CommonUtils.overrideImageColor(realestateentity.getItemTextColor(), ((ViewHolder) (viewgroup)).bedroomView.getCompoundDrawables()[0]);
                CommonUtils.overrideImageColor(realestateentity.getItemTextColor(), ((ViewHolder) (viewgroup)).distanceView.getCompoundDrawables()[0]);
                CommonUtils.overrideImageColor(realestateentity.getItemTextColor(), ((ViewHolder) (viewgroup)).showerView.getCompoundDrawables()[0]);
                setTextColorToView(realestateentity.getItemTextColor(), new TextView[] {
                    ((ViewHolder) (viewgroup)).addressView, ((ViewHolder) (viewgroup)).priceView, ((ViewHolder) (viewgroup)).bedroomView, ((ViewHolder) (viewgroup)).showerView, ((ViewHolder) (viewgroup)).distanceView
                });
            }
            imageFetcher.loadRoundedBackground(realestateentity.getImageUrl(), ((ViewHolder) (viewgroup)).imageView);
        }
        return view;
    }
}
