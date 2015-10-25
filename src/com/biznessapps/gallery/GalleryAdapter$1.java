// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.gallery;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.biznessapps.images.BitmapWrapper;

// Referenced classes of package com.biznessapps.gallery:
//            GalleryAdapter

class  extends com.biznessapps.images.BitmapLoadCallback
{

    final GalleryAdapter this$0;

    public void onPostImageLoading(BitmapWrapper bitmapwrapper, View view)
    {
        ((ImageView)view).setImageBitmap(bitmapwrapper.getBitmap());
        GalleryAdapter.access$000(GalleryAdapter.this).setVisibility(4);
    }

    itmapLoadCallback()
    {
        this$0 = GalleryAdapter.this;
        super();
    }
}
