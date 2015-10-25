// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reseller;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

public class AppGridAdapter extends AbstractAdapter
{
    private static class ViewHolder
    {

        ImageView imageView;
        TextView titleView;

        private ViewHolder()
        {
        }

    }


    public AppGridAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.reseller_app_layout, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ResellerInfo.AppInfo appinfo = (ResellerInfo.AppInfo)getItem(i);
        com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.imageView = (ImageView)view.findViewById(com.biznessapps.layout.R.id.image_view);
            viewgroup.titleView = (TextView)view.findViewById(com.biznessapps.layout.R.id.text_view);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        ((ViewHolder) (viewgroup)).titleView.setText(appinfo.getName());
        imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
        imageloadparams.setImageSrc(true);
        imageloadparams.setUrl(appinfo.getThumbnail());
        imageloadparams.setView(((ViewHolder) (viewgroup)).imageView);
        imageloadparams.setImageType(2);
        imageFetcher.loadImage(imageloadparams);
        return view;
    }
}
