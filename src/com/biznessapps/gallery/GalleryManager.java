// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.gallery;

import java.util.List;

// Referenced classes of package com.biznessapps.gallery:
//            GalleryData

public class GalleryManager
{
    private static class GalleryManagerHolder
    {

        private static final GalleryManager instance = new GalleryManager();



        private GalleryManagerHolder()
        {
        }
    }


    private GalleryData galleryData;
    private List galleryItems;

    private GalleryManager()
    {
    }


    public static GalleryManager getInstance()
    {
        return GalleryManagerHolder.instance;
    }

    public GalleryData getGalleryData()
    {
        return galleryData;
    }

    public List getGalleryItems()
    {
        return galleryItems;
    }

    public void setGalleryData(GalleryData gallerydata)
    {
        galleryData = gallerydata;
    }

    public void setGalleryItems(List list)
    {
        galleryItems = list;
    }
}
