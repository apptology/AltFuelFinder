// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.gallery;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.flickr.GalleryAlbum;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.widgets.LoaderImageView;
import java.util.List;

public class GalleryListAdapter extends AbstractAdapter
{

    public GalleryListAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.gallery_album_row, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        GalleryAlbum galleryalbum;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new com.biznessapps.common.adapters.ListItemHolder.GalleryAdapterItem();
            viewgroup.setTextViewTitle((TextView)view.findViewById(com.biznessapps.layout.R.id.album_item_title));
            viewgroup.setTextViewComments((TextView)view.findViewById(com.biznessapps.layout.R.id.album_item_comment));
            viewgroup.setImageView((LoaderImageView)view.findViewById(com.biznessapps.layout.R.id.album_item_image));
            viewgroup.getTextViewComments().setTextColor(settings.getFeatureTextColor());
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (com.biznessapps.common.adapters.ListItemHolder.GalleryAdapterItem)view.getTag();
        }
        galleryalbum = (GalleryAlbum)getItem(i);
        if (galleryalbum != null)
        {
            boolean flag = false;
            viewgroup.getImageView().setImageBitmap(null, true);
            viewgroup.getImageView().setBackgroundColor(0x40ffffff);
            i = ((flag) ? 1 : 0);
            if (galleryalbum.getUrls() != null)
            {
                i = ((flag) ? 1 : 0);
                if (!galleryalbum.getUrls().isEmpty())
                {
                    i = galleryalbum.getUrls().size();
                    Object obj = galleryalbum.getImageUrl();
                    String s = ((String) (obj));
                    if (StringUtils.isEmpty(((String) (obj))))
                    {
                        s = (String)galleryalbum.getUrls().get(0);
                    }
                    obj = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
                    ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setView(viewgroup.getImageView());
                    ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setTint(null);
                    ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setUrl(s);
                    ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageSrc(true);
                    ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageType(1);
                    viewgroup.getImageView().setImageDrawable(s, ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)));
                }
            }
            viewgroup.getTextViewComments().setText((new StringBuilder()).append("").append(i).toString());
            viewgroup.getTextViewTitle().setText(galleryalbum.getTitle());
            if (galleryalbum.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(galleryalbum.getItemColor()));
                setTextColorToView(galleryalbum.getItemTextColor(), new TextView[] {
                    viewgroup.getTextViewTitle()
                });
            }
        }
        return view;
    }
}
