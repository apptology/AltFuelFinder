// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.gallery;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.UiSettings;
import com.biznessapps.api.UrlWrapper;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.images.BitmapDownloader;
import com.biznessapps.images.BitmapWrapper;
import com.biznessapps.images.NewImageManager;
import com.biznessapps.utils.StringUtils;
import java.util.List;

public class GalleryAdapter extends AbstractAdapter
{

    private BitmapDownloader bitmapDownloader;
    private ProgressBar progressBar;
    private boolean useImageReflection;

    public GalleryAdapter(Context context, List list, int i, UiSettings uisettings)
    {
        super(context, list, i, uisettings);
        bitmapDownloader = AppCore.getInstance().getNewImageManager().getBitmapDownloader();
    }

    public GalleryAdapter(Context context, List list, int i, boolean flag, UiSettings uisettings)
    {
        this(context, list, i, uisettings);
        useImageReflection = flag;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        com.biznessapps.common.adapters.ListItemHolder.GalleryItem galleryitem;
        if (view == null)
        {
            viewgroup = inflater.inflate(layoutItemResourceId, null);
            galleryitem = new com.biznessapps.common.adapters.ListItemHolder.GalleryItem();
            galleryitem.setImage((ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.image_view));
            viewgroup.setTag(galleryitem);
        } else
        {
            galleryitem = (com.biznessapps.common.adapters.ListItemHolder.GalleryItem)view.getTag();
            viewgroup = view;
        }
        progressBar = (ProgressBar)viewgroup.findViewById(com.biznessapps.layout.R.id.progressBar);
        view = (GalleryData.Item)getItem(i);
        if (view != null)
        {
            com.biznessapps.images.BitmapDownloader.BitmapLoadCallback bitmaploadcallback;
            if (StringUtils.isEmpty(view.getFullUrl()))
            {
                String s = String.format(UrlWrapper.getInstance().getGalleryThumbplayUrlFormat(), new Object[] {
                    view.getId(), view.getExt()
                });
                view = s;
                if (useImageReflection)
                {
                    view = (new StringBuilder()).append(s).append("&width=460").toString();
                }
            } else
            {
                view = view.getFullUrl();
                view = (new StringBuilder()).append(view).append("?width=").append(100).toString();
            }
            progressBar.setVisibility(0);
            bitmaploadcallback = new com.biznessapps.images.BitmapDownloader.BitmapLoadCallback() {

                final GalleryAdapter this$0;

                public void onPostImageLoading(BitmapWrapper bitmapwrapper, View view1)
                {
                    ((ImageView)view1).setImageBitmap(bitmapwrapper.getBitmap());
                    progressBar.setVisibility(4);
                }

            
            {
                this$0 = GalleryAdapter.this;
                super();
            }
            };
            view = new com.biznessapps.images.BitmapDownloader.UsingParams(galleryitem.getImage(), view, bitmaploadcallback, false, useImageReflection);
            bitmapDownloader.download(view);
        }
        return viewgroup;
    }

}
