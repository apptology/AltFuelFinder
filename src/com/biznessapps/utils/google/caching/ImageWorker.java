// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils.google.caching;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.view.View;
import android.widget.ImageView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.utils.BlurEffectUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import java.lang.ref.WeakReference;

// Referenced classes of package com.biznessapps.utils.google.caching:
//            ImageCache, AsyncTask

public abstract class ImageWorker
{
    private static class AsyncDrawable extends ColorDrawable
    {

        private final WeakReference bitmapWorkerTaskReference;

        public BitmapWorkerTask getBitmapWorkerTask()
        {
            return (BitmapWorkerTask)bitmapWorkerTaskReference.get();
        }

        public AsyncDrawable(Resources resources, Bitmap bitmap, BitmapWorkerTask bitmapworkertask)
        {
            super(0);
            bitmapWorkerTaskReference = new WeakReference(bitmapworkertask);
        }
    }

    private class BitmapWorkerTask extends AsyncTask
    {

        private String dataString;
        private final ImageLoadParams imageParams;
        private final WeakReference imageViewReference;
        final ImageWorker this$0;

        private View getAttachedImageView()
        {
            View view = (View)imageViewReference.get();
            if (this == ImageWorker.getBitmapWorkerTask(view))
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
            if (mImageCache != null)
            {
                obj = bitmap;
                if (!isCancelled())
                {
                    obj = bitmap;
                    if (getAttachedImageView() != null)
                    {
                        obj = mImageCache.getBitmapFromDiskCache((new StringBuilder()).append(dataString).append(imageParams.getImageType()).toString());
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
                        bitmap = processBitmap(aobj[0], imageParams.getImageType(), imageParams.getImageFormType());
                    }
                }
            }
            obj = ImageWorker.getCacheKey(dataString, imageParams);
            if (bitmap != null && imageParams.getSettings() != null && imageParams.getSettings().useBlurEffect())
            {
                aobj = BlurEffectUtils.applyBlurring(bitmap);
            } else
            {
                aobj = bitmap;
            }
            if (aobj != null && mImageCache != null)
            {
                mImageCache.addBitmapToCache(((String) (obj)), ((Bitmap) (aobj)));
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
                setImageBitmap(view, imageParams, bitmap);
            }
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Bitmap)obj);
        }


        public BitmapWorkerTask(ImageLoadParams imageloadparams)
        {
            this$0 = ImageWorker.this;
            super();
            imageParams = imageloadparams;
            imageViewReference = new WeakReference(imageloadparams.getView());
        }
    }

    protected class CacheAsyncTask extends AsyncTask
    {

        final ImageWorker this$0;

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground(aobj);
        }

        protected transient Void doInBackground(Object aobj[])
        {
            ((Integer)aobj[0]).intValue();
            JVM INSTR tableswitch 0 3: default 40
        //                       0 42
        //                       1 52
        //                       2 62
        //                       3 72;
               goto _L1 _L2 _L3 _L4 _L5
_L1:
            return null;
_L2:
            clearCacheInternal();
            continue; /* Loop/switch isn't completed */
_L3:
            initDiskCacheInternal();
            continue; /* Loop/switch isn't completed */
_L4:
            flushCacheInternal();
            continue; /* Loop/switch isn't completed */
_L5:
            closeCacheInternal();
            if (true) goto _L1; else goto _L6
_L6:
        }

        protected CacheAsyncTask()
        {
            this$0 = ImageWorker.this;
            super();
        }
    }

    public static interface ImageLoadCallback
    {

        public abstract void onImageLoaded(String s, Bitmap bitmap, View view);
    }

    public static class ImageLoadParams
        implements Cloneable
    {

        private int imageFormType;
        private int imageType;
        private boolean isImageSrc;
        private ImageLoadCallback loadCallback;
        private UiSettings settings;
        private TintContainer tint;
        private String url;
        private View view;

        public Object clone()
            throws CloneNotSupportedException
        {
            return super.clone();
        }

        public int getImageFormType()
        {
            return imageFormType;
        }

        public int getImageType()
        {
            return imageType;
        }

        public ImageLoadCallback getLoadCallback()
        {
            return loadCallback;
        }

        public UiSettings getSettings()
        {
            return settings;
        }

        public TintContainer getTint()
        {
            return tint;
        }

        public String getUrl()
        {
            return url;
        }

        public View getView()
        {
            return view;
        }

        public boolean isImageSrc()
        {
            return isImageSrc;
        }

        public void setImageFormType(int i)
        {
            imageFormType = i;
        }

        public void setImageSrc(boolean flag)
        {
            isImageSrc = flag;
        }

        public void setImageType(int i)
        {
            imageType = i;
        }

        public void setLoadCallback(ImageLoadCallback imageloadcallback)
        {
            loadCallback = imageloadcallback;
        }

        public void setSettings(UiSettings uisettings)
        {
            settings = uisettings;
        }

        public void setTint(TintContainer tintcontainer)
        {
            tint = tintcontainer;
        }

        public void setUrl(String s)
        {
            url = s;
        }

        public void setView(View view1)
        {
            view = view1;
        }


/*
        static ImageLoadCallback access$002(ImageLoadParams imageloadparams, ImageLoadCallback imageloadcallback)
        {
            imageloadparams.loadCallback = imageloadcallback;
            return imageloadcallback;
        }

*/


        public ImageLoadParams()
        {
            imageType = 1;
            imageFormType = 0;
        }

        public ImageLoadParams(String s, View view1)
        {
            imageType = 1;
            imageFormType = 0;
            url = s;
            view = view1;
        }
    }

    public static class TintContainer
    {

        private int tintColor;
        private float tintOpacity;

        public int getTintColor()
        {
            return tintColor;
        }

        public float getTintOpacity()
        {
            return tintOpacity;
        }

        public void setTintColor(int i)
        {
            tintColor = i;
        }

        public void setTintOpacity(float f)
        {
            tintOpacity = f;
        }

        public TintContainer()
        {
            tintColor = 0;
        }
    }


    private static final int MESSAGE_CLEAR = 0;
    private static final int MESSAGE_CLOSE = 3;
    private static final int MESSAGE_FLUSH = 2;
    private static final int MESSAGE_INIT_DISK_CACHE = 1;
    private ImageCache mImageCache;
    private ImageCache.ImageCacheParams mImageCacheParams;
    private Bitmap mLoadingBitmap;
    protected Resources mResources;

    protected ImageWorker(Context context)
    {
        mResources = context.getResources();
    }

    public static boolean cancelPotentialWork(Object obj, ImageLoadParams imageloadparams)
    {
label0:
        {
            imageloadparams = getBitmapWorkerTask(imageloadparams.getView());
            if (imageloadparams != null)
            {
                String s = ((BitmapWorkerTask) (imageloadparams)).dataString;
                if (s != null && s.equals(obj))
                {
                    break label0;
                }
                imageloadparams.cancel(true);
            }
            return true;
        }
        return false;
    }

    public static void cancelWork(View view)
    {
        view = getBitmapWorkerTask(view);
        if (view != null)
        {
            view.cancel(true);
        }
    }

    private static Drawable composeDrawable(Drawable drawable, TintContainer tintcontainer)
    {
        Drawable adrawable[] = new Drawable[2];
        adrawable[0] = drawable;
        adrawable[1] = new ColorDrawable(tintcontainer.getTintColor());
        adrawable[1].setAlpha(ViewUtils.getOpacity(tintcontainer.getTintOpacity()));
        return (new LayerDrawable(adrawable)).getCurrent();
    }

    private static Drawable composeDrawable(TintContainer tintcontainer)
    {
        Drawable adrawable[] = new Drawable[1];
        adrawable[0] = new ColorDrawable(tintcontainer.getTintColor());
        adrawable[0].setAlpha(ViewUtils.getOpacity(tintcontainer.getTintOpacity()));
        return (new LayerDrawable(adrawable)).getCurrent();
    }

    private static BitmapWorkerTask getBitmapWorkerTask(View view)
    {
        if (view != null)
        {
            if (view instanceof ImageView)
            {
                view = ((ImageView)view).getDrawable();
            } else
            {
                view = (Drawable)view.getTag();
            }
            if (view instanceof AsyncDrawable)
            {
                return ((AsyncDrawable)view).getBitmapWorkerTask();
            }
        }
        return null;
    }

    private static String getCacheKey(String s, ImageLoadParams imageloadparams)
    {
        String s1 = (new StringBuilder()).append(s).append(imageloadparams.getImageType()).toString();
        boolean flag;
        if (imageloadparams.getSettings() != null && imageloadparams.getSettings().useBlurEffect())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s = s1;
        if (flag)
        {
            s = (new StringBuilder()).append(s1).append("BLUR").toString();
        }
        return s;
    }

    private void loadImage(String s, View view, ImageLoadCallback imageloadcallback, TintContainer tintcontainer, int i)
    {
        ImageLoadParams imageloadparams = new ImageLoadParams();
        imageloadparams.setView(view);
        imageloadparams.setLoadCallback(imageloadcallback);
        imageloadparams.setTint(tintcontainer);
        imageloadparams.setUrl(s);
        imageloadparams.setImageType(i);
        loadImage(imageloadparams);
    }

    private void setImageBitmap(View view, ImageLoadParams imageloadparams, Bitmap bitmap)
    {
        if (imageloadparams.getLoadCallback() != null)
        {
            imageloadparams.getLoadCallback().onImageLoaded(imageloadparams.url, bitmap, view);
            return;
        }
        TintContainer tintcontainer = imageloadparams.getTint();
        if (view instanceof ImageView)
        {
            ImageView imageview = (ImageView)view;
            if (imageloadparams.isImageSrc())
            {
                if (bitmap == null)
                {
                    imageview.setImageBitmap(null);
                } else
                if (tintcontainer != null)
                {
                    imageview.setImageDrawable(composeDrawable(new BitmapDrawable(view.getResources(), bitmap), tintcontainer));
                } else
                {
                    imageview.setImageBitmap(bitmap);
                }
                imageview.invalidate();
                return;
            }
            if (bitmap == null)
            {
                imageview.setBackgroundDrawable(null);
                return;
            }
            if (tintcontainer != null)
            {
                imageview.setBackgroundDrawable(composeDrawable(new BitmapDrawable(view.getResources(), bitmap), tintcontainer));
                return;
            } else
            {
                imageview.setBackgroundDrawable(new BitmapDrawable(view.getResources(), bitmap));
                return;
            }
        }
        if (bitmap == null)
        {
            view.setBackgroundDrawable(null);
            return;
        }
        if (tintcontainer != null)
        {
            view.setBackgroundDrawable(composeDrawable(new BitmapDrawable(view.getResources(), bitmap), tintcontainer));
            return;
        } else
        {
            view.setBackgroundDrawable(new BitmapDrawable(view.getResources(), bitmap));
            return;
        }
    }

    public void addImageCache(ImageCache.ImageCacheParams imagecacheparams)
    {
        mImageCacheParams = imagecacheparams;
        setImageCache(ImageCache.findOrCreateCache(mImageCacheParams.cacheName, mImageCacheParams));
        (new CacheAsyncTask()).execute(new Object[] {
            Integer.valueOf(1)
        });
    }

    public void clearCache()
    {
        (new CacheAsyncTask()).execute(new Object[] {
            Integer.valueOf(0)
        });
    }

    protected void clearCacheInternal()
    {
        if (mImageCache != null)
        {
            mImageCache.clearCache();
        }
    }

    public void closeCache()
    {
        (new CacheAsyncTask()).execute(new Object[] {
            Integer.valueOf(3)
        });
    }

    protected void closeCacheInternal()
    {
        if (mImageCache != null)
        {
            mImageCache.close();
            mImageCache = null;
        }
    }

    public void flushCache()
    {
        (new CacheAsyncTask()).execute(new Object[] {
            Integer.valueOf(2)
        });
    }

    protected void flushCacheInternal()
    {
        if (mImageCache != null)
        {
            mImageCache.flush();
        }
    }

    public ImageCache getCache()
    {
        return mImageCache;
    }

    public Bitmap getImageFromCache(String s)
    {
        Bitmap bitmap = null;
        if (mImageCache != null)
        {
            Bitmap bitmap1 = mImageCache.getBitmapFromMemCache(s);
            bitmap = bitmap1;
            if (bitmap1 == null)
            {
                bitmap = mImageCache.getBitmapFromDiskCache(s);
            }
        }
        return bitmap;
    }

    public Bitmap getImageFromMemCache(String s)
    {
        Bitmap bitmap = null;
        if (mImageCache != null)
        {
            bitmap = mImageCache.getBitmapFromMemCache(s);
        }
        return bitmap;
    }

    protected void initDiskCacheInternal()
    {
        if (mImageCache != null)
        {
            mImageCache.initDiskCache();
        }
    }

    public void loadAppImage(String s, View view)
    {
        loadImage(s, view, null, null, 2);
    }

    public void loadBgImage(String s, View view, UiSettings uisettings)
    {
        ImageLoadParams imageloadparams = new ImageLoadParams();
        imageloadparams.setView(view);
        imageloadparams.setUrl(s);
        imageloadparams.setImageType(3);
        imageloadparams.setSettings(uisettings);
        loadImage(imageloadparams);
    }

    public void loadBgImage(String s, View view, ImageLoadCallback imageloadcallback, TintContainer tintcontainer, int i, UiSettings uisettings)
    {
        ImageLoadParams imageloadparams = new ImageLoadParams();
        imageloadparams.setView(view);
        imageloadparams.setLoadCallback(imageloadcallback);
        imageloadparams.setTint(tintcontainer);
        imageloadparams.setUrl(s);
        imageloadparams.setSettings(uisettings);
        imageloadparams.setImageType(i);
        loadImage(imageloadparams);
    }

    public void loadBigImage(String s, View view)
    {
        loadImage(s, view, null, null, 3);
    }

    public void loadCircledBackground(String s, View view)
    {
        ImageLoadParams imageloadparams = new ImageLoadParams();
        imageloadparams.setUrl(s);
        imageloadparams.setView(view);
        imageloadparams.setImageFormType(1);
        imageloadparams.setImageType(1);
        loadImage(imageloadparams);
    }

    public void loadCircledBackground(String s, View view, ImageLoadCallback imageloadcallback)
    {
        ImageLoadParams imageloadparams = new ImageLoadParams();
        imageloadparams.setUrl(s);
        imageloadparams.setView(view);
        imageloadparams.setImageFormType(1);
        imageloadparams.setImageType(1);
        imageloadparams.setLoadCallback(imageloadcallback);
        loadImage(imageloadparams);
    }

    public void loadCircledImage(String s, View view)
    {
        ImageLoadParams imageloadparams = new ImageLoadParams();
        imageloadparams.setUrl(s);
        imageloadparams.setView(view);
        imageloadparams.setImageSrc(true);
        imageloadparams.setImageFormType(1);
        imageloadparams.setImageType(1);
        loadImage(imageloadparams);
    }

    public void loadFileImage(String s, View view)
    {
        ImageLoadParams imageloadparams = new ImageLoadParams();
        imageloadparams.setUrl(s);
        imageloadparams.setView(view);
        imageloadparams.setImageFormType(4);
        loadImage(imageloadparams);
    }

    public void loadFilePreview(String s, View view)
    {
        ImageLoadParams imageloadparams = new ImageLoadParams();
        imageloadparams.setUrl(s);
        imageloadparams.setView(view);
        imageloadparams.setImageFormType(4);
        loadImage(imageloadparams);
    }

    public void loadGalleryImage(String s, View view)
    {
        loadImage(s, view, null, null, 4);
    }

    public void loadImage(ImageLoadParams imageloadparams)
    {
        String s = imageloadparams.getUrl();
        TintContainer tintcontainer = imageloadparams.getTint();
        View view = imageloadparams.getView();
        if (StringUtils.isEmpty(s))
        {
            if (tintcontainer != null)
            {
                view.setBackgroundDrawable(composeDrawable(tintcontainer));
            }
            if (imageloadparams.getLoadCallback() != null)
            {
                imageloadparams.getLoadCallback().onImageLoaded(s, null, view);
            }
        } else
        {
            Bitmap bitmap = getImageFromMemCache(getCacheKey(s, imageloadparams));
            if (bitmap != null)
            {
                if (imageloadparams.getLoadCallback() != null)
                {
                    imageloadparams.getLoadCallback().onImageLoaded(s, bitmap, view);
                    return;
                } else
                {
                    setImageBitmap(imageloadparams.getView(), imageloadparams, bitmap);
                    return;
                }
            }
            if (cancelPotentialWork(s, imageloadparams))
            {
                BitmapWorkerTask bitmapworkertask = new BitmapWorkerTask(imageloadparams);
                AsyncDrawable asyncdrawable = new AsyncDrawable(mResources, mLoadingBitmap, bitmapworkertask);
                if (imageloadparams.getView() instanceof ImageView)
                {
                    ((ImageView)imageloadparams.getView()).setImageDrawable(asyncdrawable);
                } else
                {
                    imageloadparams.getView().setTag(asyncdrawable);
                }
                bitmapworkertask.executeOnExecutor(AsyncTask.DUAL_THREAD_EXECUTOR, new Object[] {
                    s
                });
                return;
            }
        }
    }

    public void loadImage(String s, View view)
    {
        loadImage(s, view, null, null, 1);
    }

    public void loadImage(String s, View view, TintContainer tintcontainer)
    {
        loadImage(s, view, null, tintcontainer, 2);
    }

    public void loadRoundedBackground(String s, View view)
    {
        loadRoundedBackground(s, view, null);
    }

    public void loadRoundedBackground(String s, View view, ImageLoadCallback imageloadcallback)
    {
        ImageLoadParams imageloadparams = new ImageLoadParams();
        imageloadparams.setUrl(s);
        imageloadparams.setView(view);
        imageloadparams.setImageFormType(2);
        imageloadparams.setImageType(1);
        imageloadparams.loadCallback = imageloadcallback;
        loadImage(imageloadparams);
    }

    public void loadRoundedImage(String s, View view)
    {
        ImageLoadParams imageloadparams = new ImageLoadParams();
        imageloadparams.setUrl(s);
        imageloadparams.setView(view);
        imageloadparams.setImageSrc(true);
        imageloadparams.setImageFormType(2);
        imageloadparams.setImageType(1);
        loadImage(imageloadparams);
    }

    public void loadYoutubeImage(String s, View view)
    {
        ImageLoadParams imageloadparams = new ImageLoadParams();
        imageloadparams.setUrl(s);
        imageloadparams.setView(view);
        imageloadparams.setImageFormType(3);
        imageloadparams.setImageType(2);
        loadImage(imageloadparams);
    }

    protected abstract Bitmap processBitmap(Object obj, int i, int j);

    public void setImageCache(ImageCache imagecache)
    {
        mImageCache = imagecache;
    }

    public void setLoadingImage(int i)
    {
        mLoadingBitmap = null;
    }

    public void setLoadingImage(Bitmap bitmap)
    {
        mLoadingBitmap = bitmap;
    }




}
