// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.biznessapps.golfcourse.model.Hole;

// Referenced classes of package com.biznessapps.golfcourse:
//            OverviewAdapter

class this._cls0
    implements com.biznessapps.utils.google.caching.oadCallback
{

    final OverviewAdapter this$0;

    public void onImageLoaded(String s, Bitmap bitmap, View view)
    {
        if (((Hole)view.getTag()).mapThumbnailUrl.equals(s))
        {
            ((ImageView)view).setImageBitmap(bitmap);
        }
    }

    ker.ImageLoadCallback()
    {
        this$0 = OverviewAdapter.this;
        super();
    }
}
