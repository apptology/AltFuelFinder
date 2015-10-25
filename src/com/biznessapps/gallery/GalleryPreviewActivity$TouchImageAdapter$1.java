// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.gallery;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.biznessapps.utils.BlurEffectUtils;

// Referenced classes of package com.biznessapps.gallery:
//            GalleryPreviewActivity

class val.item
    implements com.biznessapps.utils.google.caching.val.item.this
{

    final is._cls0 this$1;
    final is._cls0 val$item;

    public void onImageLoaded(String s, Bitmap bitmap, View view)
    {
        s = bitmap;
        if (val$item.item() != 0)
        {
            s = BlurEffectUtils.addBlurEffect(bitmap, val$item.item());
        }
        GalleryPreviewActivity.access$1100(_fld0).setImageBitmap(s);
    }

    ()
    {
        this$1 = final_;
        val$item = val.item.this;
        super();
    }
}
