// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.images;

import android.graphics.drawable.BitmapDrawable;
import android.view.View;

// Referenced classes of package com.biznessapps.images:
//            BitmapDownloader, BitmapWrapper

public static abstract class 
{

    public void onPostImageLoading(BitmapWrapper bitmapwrapper, View view)
    {
        if (view != null)
        {
            view.setBackgroundDrawable(new BitmapDrawable(bitmapwrapper.getBitmap()));
        }
    }

    public void onPreImageLoading()
    {
    }

    public ()
    {
    }
}
