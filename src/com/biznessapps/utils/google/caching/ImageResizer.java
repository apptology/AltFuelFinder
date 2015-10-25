// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils.google.caching;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import com.biznessapps.api.AppCore;
import java.io.FileDescriptor;

// Referenced classes of package com.biznessapps.utils.google.caching:
//            ImageWorker

public class ImageResizer extends ImageWorker
{

    public static final int APP_IMAGE_TYPE = 2;
    public static final int GALLERY_THUMBNAIL_TYPE = 4;
    public static final int IMAGE_CIRCLE_TYPE = 1;
    public static final int IMAGE_FILE_TYPE = 4;
    public static final int IMAGE_ORDINARY_TYPE = 0;
    public static final int IMAGE_ROUNDED_TYPE = 2;
    public static final int IMAGE_YOUTUBE_TYPE = 3;
    public static final int LIST_ICON_TYPE = 1;
    private static final int MIN_SIZE = 200;
    public static final int PREVIEW_IMAGE_TYPE = 3;
    private static final float ROUND_PERCENT = 0.1F;
    protected int mImageHeight;
    protected int mImageWidth;

    public ImageResizer(Context context, int i)
    {
        super(context);
        setImageSize(i);
    }

    public ImageResizer(Context context, int i, int j)
    {
        super(context);
        setImageSize(i, j);
    }

    public static int calculateInSampleSize(android.graphics.BitmapFactory.Options options, int i, int j)
    {
        int i1 = options.outHeight;
        int j1 = options.outWidth;
        int l = 1;
        if (i1 > j || j1 > i)
        {
            int k = Math.round((float)i1 / (float)j);
            l = Math.round((float)j1 / (float)i);
            float f;
            float f1;
            if (k >= l)
            {
                k = l;
            }
            f = j1 * i1;
            f1 = i * j * 2;
            do
            {
                l = k;
                if (f / (float)(k * k) <= f1)
                {
                    break;
                }
                k++;
            } while (true);
        }
        return l;
    }

    private static Bitmap decodeSampledBitmapFromDescriptor(FileDescriptor filedescriptor, int i, int j)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(filedescriptor, null, options);
        options.inSampleSize = calculateInSampleSize(options, i, j);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFileDescriptor(filedescriptor, null, options);
    }

    private static Bitmap decodeSampledBitmapFromFile(String s, int i, int j)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(s, options);
        options.inSampleSize = calculateInSampleSize(options, i, j);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(s, options);
    }

    private static Bitmap decodeSampledBitmapFromResource(Resources resources, int i, int j, int k, int l)
    {
        Object obj = new android.graphics.BitmapFactory.Options();
        obj.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i, ((android.graphics.BitmapFactory.Options) (obj)));
        obj.inSampleSize = calculateInSampleSize(((android.graphics.BitmapFactory.Options) (obj)), j, k);
        obj.inJustDecodeBounds = false;
        resources = BitmapFactory.decodeResource(resources, i, ((android.graphics.BitmapFactory.Options) (obj)));
        switch (l)
        {
        default:
            return resources;

        case 1: // '\001'
            resources = getLargedBitmap(resources, ((android.graphics.BitmapFactory.Options) (obj)), j, k);
            obj = getRoundedCornerBitmap(resources);
            resources.recycle();
            return ((Bitmap) (obj));

        case 2: // '\002'
            resources = getLargedBitmap(resources, ((android.graphics.BitmapFactory.Options) (obj)), j, k);
            break;
        }
        obj = getCircledBitmap(resources);
        resources.recycle();
        return ((Bitmap) (obj));
    }

    public static Bitmap getCircledBitmap(Bitmap bitmap)
    {
        float f;
        Object obj;
        int i;
        if (bitmap.getWidth() < bitmap.getHeight())
        {
            i = bitmap.getWidth();
        } else
        {
            i = bitmap.getHeight();
        }
        f = i;
        if (f == 0.0F)
        {
            obj = null;
        } else
        {
            float f1;
            float f2;
            Bitmap bitmap1;
            Bitmap bitmap2;
            Paint paint;
            Rect rect;
            Rect rect1;
            if (f < 200F)
            {
                int j = (int)(200F / f) + 1;
                f *= j;
                bitmap1 = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth() * j, bitmap.getHeight() * j, true);
            } else
            {
                bitmap1 = bitmap;
            }
            bitmap2 = Bitmap.createBitmap((int)f, (int)f, android.graphics.Bitmap.Config.ARGB_8888);
            obj = new Canvas(bitmap2);
            paint = new Paint();
            paint.setAntiAlias(true);
            paint.setColor(0xff424242);
            ((Canvas) (obj)).drawARGB(0, 0, 0, 0);
            ((Canvas) (obj)).drawCircle(f / 2.0F, f / 2.0F, f / 2.0F, paint);
            rect = new Rect(0, 0, (int)f, (int)f);
            f1 = ((float)bitmap1.getWidth() - f) / 2.0F;
            f2 = ((float)bitmap1.getHeight() - f) / 2.0F;
            rect1 = new Rect((int)f1, (int)f2, (int)(f1 + f), (int)(f2 + f));
            paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
            ((Canvas) (obj)).drawBitmap(bitmap1, rect1, rect, paint);
            obj = bitmap2;
            if (bitmap1 != bitmap)
            {
                bitmap1.recycle();
                return bitmap2;
            }
        }
        return ((Bitmap) (obj));
    }

    public static Bitmap getCropped280Bitmap(Bitmap bitmap)
    {
        int i = bitmap.getWidth();
        int j = bitmap.getHeight();
        int k = (j * 45) / 360;
        Bitmap bitmap1 = Bitmap.createBitmap(i, j - k * 2, android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap1);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, i, j - k * 2);
        canvas.drawBitmap(bitmap, new Rect(0, k + 0, i, j - k), rect, paint);
        return bitmap1;
    }

    public static Bitmap getLargedBitmap(Bitmap bitmap, android.graphics.BitmapFactory.Options options, int i, int j)
    {
        if (bitmap == null)
        {
            return null;
        }
        float f = 1.0F;
        float f1 = 1.0F;
        if (i > options.outWidth)
        {
            f = i / options.outWidth;
        }
        if (j > options.outHeight)
        {
            f1 = j / options.outHeight;
        }
        if (f <= f1)
        {
            f = f1;
        }
        options = Bitmap.createScaledBitmap(bitmap, (int)((float)options.outWidth * f), (int)((float)options.outHeight * f), false);
        if (!bitmap.equals(options))
        {
            bitmap.recycle();
        }
        return options;
    }

    public static Bitmap getRoundedCornerBitmap(Bitmap bitmap)
    {
        float f;
        Object obj;
        int i;
        if (bitmap.getWidth() < bitmap.getHeight())
        {
            i = bitmap.getWidth();
        } else
        {
            i = bitmap.getHeight();
        }
        f = i;
        if (f == 0.0F)
        {
            obj = null;
        } else
        {
            float f1;
            float f2;
            Bitmap bitmap1;
            Bitmap bitmap2;
            Paint paint;
            Rect rect;
            Object obj1;
            if (f < 200F)
            {
                int j = (int)(200F / f) + 1;
                f *= j;
                bitmap1 = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth() * j, bitmap.getHeight() * j, true);
            } else
            {
                bitmap1 = bitmap;
            }
            bitmap2 = Bitmap.createBitmap((int)f, (int)f, android.graphics.Bitmap.Config.ARGB_8888);
            obj = new Canvas(bitmap2);
            paint = new Paint();
            f1 = f * 0.1F;
            paint.setAntiAlias(true);
            paint.setColor(0xff424242);
            rect = new Rect(0, 0, (int)f, (int)f);
            obj1 = new RectF(rect);
            ((Canvas) (obj)).drawARGB(0, 0, 0, 0);
            ((Canvas) (obj)).drawRoundRect(((RectF) (obj1)), f1, f1, paint);
            f1 = ((float)bitmap1.getWidth() - f) / 2.0F;
            f2 = ((float)bitmap1.getHeight() - f) / 2.0F;
            obj1 = new Rect((int)f1, (int)f2, (int)(f1 + f), (int)(f2 + f));
            paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
            ((Canvas) (obj)).drawBitmap(bitmap1, ((Rect) (obj1)), rect, paint);
            obj = bitmap2;
            if (bitmap1 != bitmap)
            {
                bitmap1.recycle();
                return bitmap2;
            }
        }
        return ((Bitmap) (obj));
    }

    private Bitmap processBitmap(int i, int j, int k)
    {
        mImageWidth = getImageSize(j);
        mImageHeight = mImageWidth;
        return decodeSampledBitmapFromResource(mResources, i, mImageWidth, mImageHeight, k);
    }

    protected int getImageSize(int i)
    {
        if (i == 2)
        {
            return mResources.getDimensionPixelSize(com.biznessapps.layout.R.dimen.image_thumbnail_size);
        }
        if (i == 4)
        {
            return mResources.getDimensionPixelSize(com.biznessapps.layout.R.dimen.image_gallery_size);
        }
        if (i == 3)
        {
            i = AppCore.getInstance().getDeviceHeight();
            int j = AppCore.getInstance().getDeviceWidth();
            if (i <= j)
            {
                i = j;
            }
            return (int)((double)i * 0.80000000000000004D);
        } else
        {
            return mResources.getDimensionPixelSize(com.biznessapps.layout.R.dimen.image_list_size);
        }
    }

    protected Bitmap processBitmap(Object obj, int i, int j)
    {
        return processBitmap(Integer.parseInt(String.valueOf(obj)), i, j);
    }

    public void setImageSize(int i)
    {
        setImageSize(i, i);
    }

    public void setImageSize(int i, int j)
    {
        mImageWidth = i;
        mImageHeight = j;
    }
}
