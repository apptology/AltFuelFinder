// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.flickr;

import com.biznessapps.api.UrlWrapper;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.utils.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GalleryAlbum extends CommonListEntity
{

    private static final long serialVersionUID = 0x52e98bda93801d7cL;
    private List items;
    private List urls;
    private boolean useCoverflow;

    public GalleryAlbum()
    {
    }

    public List getItems()
    {
        return items;
    }

    public List getItemsUrls()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = items.iterator();
        while (iterator.hasNext()) 
        {
            Object obj = (com.biznessapps.gallery.GalleryData.Item)iterator.next();
            if (StringUtils.isEmpty(((com.biznessapps.gallery.GalleryData.Item) (obj)).getFullUrl()))
            {
                obj = String.format(UrlWrapper.getInstance().getGalleryThumbplayUrlFormat(), new Object[] {
                    ((com.biznessapps.gallery.GalleryData.Item) (obj)).getId(), ((com.biznessapps.gallery.GalleryData.Item) (obj)).getExt()
                });
            } else
            {
                obj = ((com.biznessapps.gallery.GalleryData.Item) (obj)).getFullUrl();
            }
            arraylist.add(obj);
        }
        return arraylist;
    }

    public List getUrls()
    {
        if (getItems() != null)
        {
            urls = getItemsUrls();
        }
        return urls;
    }

    public boolean isUseCoverflow()
    {
        return useCoverflow;
    }

    public void setItems(List list)
    {
        items = list;
    }

    public void setUrls(List list)
    {
        urls = list;
    }

    public void setUseCoverflow(boolean flag)
    {
        useCoverflow = flag;
    }
}
