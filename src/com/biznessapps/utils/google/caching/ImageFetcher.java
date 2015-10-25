// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils.google.caching;

import android.content.Context;
import android.graphics.Bitmap;
import com.biznessapps.images.BitmapDownloader;

// Referenced classes of package com.biznessapps.utils.google.caching:
//            ImageResizer

public class ImageFetcher extends ImageResizer
{

    public ImageFetcher(Context context, int i)
    {
        super(context, i);
    }

    private Bitmap processBitmap(String s, int i, int j)
    {
        Object obj;
        obj = new android.graphics.BitmapFactory.Options();
        i = getImageSize(i);
        if (j != 4) goto _L2; else goto _L1
_L1:
        obj = BitmapDownloader.getFileBitmap(s, i, i);
_L4:
        if (obj == null)
        {
            return null;
        }
        break; /* Loop/switch isn't completed */
_L2:
        Bitmap bitmap = BitmapDownloader.downloadBitmap(s, ((android.graphics.BitmapFactory.Options) (obj)), i, i);
        obj = bitmap;
        if (j == 3)
        {
            obj = bitmap;
            if (bitmap == null)
            {
                obj = BitmapDownloader.downloadBitmap(s);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        switch (j)
        {
        default:
            return ((Bitmap) (obj));

        case 2: // '\002'
            s = getRoundedCornerBitmap(((Bitmap) (obj)));
            ((Bitmap) (obj)).recycle();
            return s;

        case 1: // '\001'
            s = getCircledBitmap(((Bitmap) (obj)));
            ((Bitmap) (obj)).recycle();
            return s;

        case 3: // '\003'
            s = getCropped280Bitmap(((Bitmap) (obj)));
            break;
        }
        ((Bitmap) (obj)).recycle();
        return s;
    }

    protected Bitmap processBitmap(Object obj, int i, int j)
    {
        return processBitmap(String.valueOf(obj), i, j);
    }
}
