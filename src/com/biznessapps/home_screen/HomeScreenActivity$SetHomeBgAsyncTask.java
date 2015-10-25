// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.AsyncTask;
import android.widget.FrameLayout;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.images.BitmapDownloader;
import com.biznessapps.utils.BlurEffectUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageCache;
import com.biznessapps.utils.google.caching.ImageFetcher;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeScreenActivity

private class <init> extends AsyncTask
{

    final HomeScreenActivity this$0;

    protected transient Bitmap doInBackground(String as[])
    {
        as = null;
        if (StringUtils.isNotEmpty(HomeScreenActivity.access$1100(HomeScreenActivity.this)))
        {
            ImageFetcher imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
            Bitmap bitmap = imagefetcher.getImageFromCache(HomeScreenActivity.access$1100(HomeScreenActivity.this));
            as = bitmap;
            if (bitmap == null)
            {
                as = BitmapDownloader.downloadBitmap(HomeScreenActivity.access$1100(HomeScreenActivity.this));
                imagefetcher.getCache().addBitmapToCache(HomeScreenActivity.access$1100(HomeScreenActivity.this), as);
            }
            as = BlurEffectUtils.addBlurEffect(as, 85);
        }
        return as;
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected void onPostExecute(Bitmap bitmap)
    {
        if (HomeScreenActivity.this != null)
        {
            FrameLayout framelayout = (FrameLayout)findViewById(com.biznessapps.layout.Task.this._fld0);
            if (bitmap != null)
            {
                Drawable adrawable[] = new Drawable[2];
                adrawable[0] = new BitmapDrawable(bitmap);
                adrawable[1] = new ColorDrawable(-1);
                adrawable[1].setAlpha(ViewUtils.getOpacity(30F));
                framelayout.setBackgroundDrawable((new LayerDrawable(adrawable)).getCurrent());
            }
        }
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Bitmap)obj);
    }

    private ()
    {
        this$0 = HomeScreenActivity.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
