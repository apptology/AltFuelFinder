// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import com.biznessapps.fan_wall.CommentEntity;

// Referenced classes of package com.biznessapps.events:
//            EventCommentsAdapter

class this._cls0
    implements com.biznessapps.utils.google.caching.llback
{

    final EventCommentsAdapter this$0;

    public void onImageLoaded(String s, Bitmap bitmap, View view)
    {
        if (bitmap != null && !bitmap.isRecycled() && ((CommentEntity)view.getTag()).getImageUrl().equals(s))
        {
            view.setBackgroundDrawable(new BitmapDrawable(view.getResources(), bitmap));
        }
    }

    er.ImageLoadCallback()
    {
        this$0 = EventCommentsAdapter.this;
        super();
    }
}
