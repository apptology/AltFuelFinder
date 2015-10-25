// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;

import android.content.Context;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.google.caching.ImageGridAdapter;
import java.util.List;

public class ImageFetcherAccessor
{

    private static final String IMAGE_CACHE_DIR = "app_images3";
    private Context context;
    private ImageFetcher imageFetcher;
    private int listThumbSize;

    public ImageFetcherAccessor(Context context1)
    {
        context = context1;
        getImageFetcher();
    }

    private ImageFetcher createImageFetcher(Context context1, int i, int j, String s, float f)
    {
        s = new com.biznessapps.utils.google.caching.ImageCache.ImageCacheParams(context1, s);
        s.setMemCacheSizePercent(f);
        context1 = new ImageFetcher(context1, j);
        context1.setLoadingImage(i);
        context1.addImageCache(s);
        return context1;
    }

    public void cleanCache()
    {
        if (imageFetcher != null)
        {
            imageFetcher.clearCache();
            imageFetcher.closeCache();
            imageFetcher = null;
        }
    }

    public ImageGridAdapter createImageGridAdapter(Context context1, ImageFetcher imagefetcher, List list)
    {
        return new ImageGridAdapter(context1, imagefetcher, list);
    }

    public ImageFetcher getImageFetcher()
    {
        if (imageFetcher == null)
        {
            imageFetcher = createImageFetcher(context, com.biznessapps.layout.R.drawable.product_default, listThumbSize, "app_images3", 0.25F);
        }
        return imageFetcher;
    }
}
