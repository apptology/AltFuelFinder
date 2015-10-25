// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils.google.caching;

import android.graphics.Bitmap;
import android.view.View;
import com.biznessapps.api.UiSettings;
import com.biznessapps.utils.BlurEffectUtils;
import java.lang.ref.WeakReference;

// Referenced classes of package com.biznessapps.utils.google.caching:
//            AsyncTask, ImageWorker, ImageCache

private class etView extends AsyncTask
{

    private String dataString;
    private final onPostExecute imageParams;
    private final WeakReference imageViewReference;
    final ImageWorker this$0;

    private View getAttachedImageView()
    {
        View view = (View)imageViewReference.get();
        if (this == ImageWorker.access$500(view))
        {
            return view;
        } else
        {
            return null;
        }
    }

    protected transient Bitmap doInBackground(Object aobj[])
    {
        dataString = (String)aobj[0];
        Bitmap bitmap = null;
        Object obj = bitmap;
        if (ImageWorker.access$200(ImageWorker.this) != null)
        {
            obj = bitmap;
            if (!isCancelled())
            {
                obj = bitmap;
                if (getAttachedImageView() != null)
                {
                    obj = ImageWorker.access$200(ImageWorker.this).getBitmapFromDiskCache((new StringBuilder()).append(dataString).append(imageParams.etImageType()).toString());
                }
            }
        }
        bitmap = ((Bitmap) (obj));
        if (obj == null)
        {
            bitmap = ((Bitmap) (obj));
            if (!isCancelled())
            {
                bitmap = ((Bitmap) (obj));
                if (getAttachedImageView() != null)
                {
                    bitmap = processBitmap(aobj[0], imageParams.etImageType(), imageParams.etImageFormType());
                }
            }
        }
        obj = ImageWorker.access$300(dataString, imageParams);
        if (bitmap != null && imageParams.etSettings() != null && imageParams.etSettings().useBlurEffect())
        {
            aobj = BlurEffectUtils.applyBlurring(bitmap);
        } else
        {
            aobj = bitmap;
        }
        if (aobj != null && ImageWorker.access$200(ImageWorker.this) != null)
        {
            ImageWorker.access$200(ImageWorker.this).addBitmapToCache(((String) (obj)), ((Bitmap) (aobj)));
        }
        return ((Bitmap) (aobj));
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground(aobj);
    }

    protected void onPostExecute(Bitmap bitmap)
    {
        if (isCancelled())
        {
            bitmap = null;
        }
        View view = getAttachedImageView();
        if (view != null)
        {
            ImageWorker.access$400(ImageWorker.this, view, imageParams, bitmap);
        }
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Bitmap)obj);
    }


    public ( )
    {
        this$0 = ImageWorker.this;
        super();
        imageParams = ;
        imageViewReference = new WeakReference(.etView());
    }
}
