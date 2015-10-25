// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;

// Referenced classes of package com.biznessapps.fan_wall:
//            NewFanWallAdapter, CommentEntity

class this._cls0
    implements com.biznessapps.utils.google.caching.dCallback
{

    final NewFanWallAdapter this$0;

    public void onImageLoaded(String s, Bitmap bitmap, View view)
    {
        if (bitmap != null && !bitmap.isRecycled() && ((CommentEntity)view.getTag()).getImageUrl().equals(s))
        {
            view.setBackgroundDrawable(new BitmapDrawable(view.getResources(), bitmap));
        }
    }

    ker.ImageLoadCallback()
    {
        this$0 = NewFanWallAdapter.this;
        super();
    }
}
