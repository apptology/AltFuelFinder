// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.gallery;

import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;

// Referenced classes of package com.biznessapps.gallery:
//            GalleryPreviewActivity

class this._cls0
    implements com.biznessapps.utils.google.caching.back
{

    final GalleryPreviewActivity this$0;

    public void onImageLoaded(String s, Bitmap bitmap, View view)
    {
        if (bitmap != null && !bitmap.isRecycled())
        {
            ((ImageView)view).setImageBitmap(bitmap);
            GalleryPreviewActivity.access$702(GalleryPreviewActivity.this, true);
        } else
        {
            GalleryPreviewActivity.access$702(GalleryPreviewActivity.this, false);
        }
        ((ProgressBar)((ViewGroup)view.getParent()).findViewById(com.biznessapps.layout..this._fld0)).setVisibility(4);
        GalleryPreviewActivity.access$800(GalleryPreviewActivity.this);
    }

    ImageLoadCallback()
    {
        this$0 = GalleryPreviewActivity.this;
        super();
    }
}
