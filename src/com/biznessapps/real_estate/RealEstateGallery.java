// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.real_estate;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.widgets.LoaderImageView;
import java.util.List;

public class RealEstateGallery extends AbstractAdapter
{

    public RealEstateGallery(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.gallery_item_layout, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        Object obj;
        LoaderImageView loaderimageview;
        if (view == null)
        {
            viewgroup = inflater.inflate(layoutItemResourceId, null);
            obj = new com.biznessapps.common.adapters.ListItemHolder.GalleryItem();
            ((com.biznessapps.common.adapters.ListItemHolder.GalleryItem) (obj)).setLoaderImage((LoaderImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.image_view));
            viewgroup.setTag(obj);
        } else
        {
            obj = (com.biznessapps.common.adapters.ListItemHolder.GalleryItem)view.getTag();
            viewgroup = view;
        }
        loaderimageview = ((com.biznessapps.common.adapters.ListItemHolder.GalleryItem) (obj)).getLoaderImage();
        loaderimageview.setImageBitmap(null, true);
        view = (com.biznessapps.gallery.GalleryData.Item)getItem(i);
        if (view != null)
        {
            obj = view.getFullUrl();
            view = ((View) (obj));
            if (obj != null)
            {
                if (((String) (obj)).contains("?"))
                {
                    view = (new StringBuilder()).append(((String) (obj))).append("&width=256").toString();
                } else
                {
                    view = (new StringBuilder()).append(((String) (obj))).append("?width=256").toString();
                }
            }
            obj = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
            ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setView(null);
            ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setTint(null);
            ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setUrl(view);
            ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageSrc(true);
            ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageFormType(2);
            ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageType(1);
            loaderimageview.setImageDrawable(view, ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)));
        }
        return viewgroup;
    }
}
