// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.images;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.view.View;
import com.biznessapps.utils.google.caching.ImageCache;
import java.lang.ref.WeakReference;
import java.util.List;

// Referenced classes of package com.biznessapps.images:
//            BitmapDownloader, BitmapWrapper

private class Size extends AsyncTask
{

    private PreImageLoading callback;
    private int sampleSize;
    final BitmapDownloader this$0;
    private String url;
    private boolean useImageReflection;
    private PreImageLoading usingParams;
    private final WeakReference viewReference;

    protected transient Bitmap doInBackground(String as[])
    {
        BitmapDownloader.access$000(BitmapDownloader.this).add(this);
        if (usingParams.ght() > 0 && usingParams.th() > 0)
        {
            as = BitmapDownloader.access$100(usingParams.usingParams(), usingParams.th(), usingParams.ght());
        } else
        {
            as = BitmapDownloader.access$200(BitmapDownloader.this, url, sampleSize);
        }
        if (useImageReflection && as != null)
        {
            as = BitmapDownloader.access$300(BitmapDownloader.this, as);
        }
        BitmapDownloader.access$000(BitmapDownloader.this).remove(this);
        return as;
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    public String getUrl()
    {
        return url;
    }

    protected void onPostExecute(Bitmap bitmap)
    {
        if (isCancelled())
        {
            bitmap = null;
        }
        if (bitmap != null)
        {
            BitmapWrapper bitmapwrapper = new BitmapWrapper(bitmap, url);
            BitmapDownloader.access$400().addBitmapToCache(url, bitmap);
            if (viewReference != null)
            {
                bitmap = (View)viewReference.get();
                url url1 = BitmapDownloader.access$500(BitmapDownloader.this, bitmap);
                if (bitmap != null)
                {
                    bitmap.setTag(null);
                }
                if (this == url1 && callback != null)
                {
                    callback.PostImageLoading(bitmapwrapper, bitmap);
                }
            }
        }
        BitmapDownloader.access$600(BitmapDownloader.this);
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Bitmap)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        if (callback != null)
        {
            callback.PreImageLoading();
        }
    }

    public ( )
    {
        this$0 = BitmapDownloader.this;
        super();
        usingParams = ;
        viewReference = new WeakReference(.viewReference());
        useImageReflection = .ection();
        callback = .ck();
        url = .url();
        sampleSize = .Size();
    }
}
