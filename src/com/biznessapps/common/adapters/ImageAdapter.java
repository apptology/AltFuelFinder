// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.biznessapps.api.UiSettings;
import com.biznessapps.api.UrlWrapper;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.widgets.LoaderImageView;
import java.util.List;

// Referenced classes of package com.biznessapps.common.adapters:
//            AbstractAdapter

public class ImageAdapter extends AbstractAdapter
{

    public ImageAdapter(Context context, List list, int i, UiSettings uisettings)
    {
        super(context, list, i, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        Object obj;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ListItemHolder.GalleryItem();
            viewgroup.setLoaderImage((LoaderImageView)view.findViewById(com.biznessapps.layout.R.id.image_view));
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ListItemHolder.GalleryItem)view.getTag();
        }
        obj = (com.biznessapps.gallery.GalleryData.Item)getItem(i);
        if (obj != null)
        {
            com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams;
            if (StringUtils.isEmpty(((com.biznessapps.gallery.GalleryData.Item) (obj)).getFullUrl()))
            {
                obj = String.format(UrlWrapper.getInstance().getGalleryThumbplayUrlFormat(), new Object[] {
                    ((com.biznessapps.gallery.GalleryData.Item) (obj)).getId(), ((com.biznessapps.gallery.GalleryData.Item) (obj)).getExt()
                });
            } else
            {
                obj = ((com.biznessapps.gallery.GalleryData.Item) (obj)).getFullUrl();
                obj = (new StringBuilder()).append(((String) (obj))).append("?width=").append(100).toString();
            }
            imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
            imageloadparams.setView(viewgroup.getLoaderImage());
            imageloadparams.setTint(null);
            imageloadparams.setUrl(((String) (obj)));
            imageloadparams.setImageSrc(true);
            imageloadparams.setImageType(1);
            viewgroup.getLoaderImage().setImageDrawable(((String) (obj)), imageloadparams);
        }
        return view;
    }
}
