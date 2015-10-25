// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen.components;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.AsyncTask;
import android.view.View;
import android.view.ViewGroup;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.images.BitmapDownloader;
import com.biznessapps.utils.BlurEffectUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageCache;
import com.biznessapps.utils.google.caching.ImageFetcher;

// Referenced classes of package com.biznessapps.home_screen.components:
//            BackgroundComponent

public static class url extends AsyncTask
{

    private Activity activity;
    private String url;
    private View view;

    protected transient Bitmap doInBackground(String as[])
    {
        as = null;
        if (StringUtils.isNotEmpty(url))
        {
            ImageFetcher imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
            Bitmap bitmap = imagefetcher.getImageFromCache(url);
            as = bitmap;
            if (bitmap == null)
            {
                as = BitmapDownloader.downloadBitmap(url);
                imagefetcher.getCache().addBitmapToCache(url, as);
            }
            as = BlurEffectUtils.addBlurEffect(as, 30);
        }
        return as;
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected void onPostExecute(Bitmap bitmap)
    {
        if (activity != null && bitmap != null)
        {
            Drawable adrawable[] = new Drawable[2];
            adrawable[0] = new BitmapDrawable(bitmap);
            adrawable[1] = new ColorDrawable(-1);
            adrawable[1].setAlpha(ViewUtils.getOpacity(30F));
            bitmap = new LayerDrawable(adrawable);
            view.setBackgroundDrawable(bitmap.getCurrent());
        }
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Bitmap)obj);
    }

    public (Activity activity1, ViewGroup viewgroup, String s)
    {
        activity = activity1;
        view = viewgroup;
        url = s;
    }
}
