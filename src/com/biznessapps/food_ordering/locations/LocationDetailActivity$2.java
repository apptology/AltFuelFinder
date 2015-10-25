// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.locations;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;

// Referenced classes of package com.biznessapps.food_ordering.locations:
//            LocationDetailActivity

class this._cls0
    implements com.biznessapps.utils.google.caching.back
{

    final LocationDetailActivity this$0;

    public void onImageLoaded(String s, Bitmap bitmap, View view)
    {
        getViewForBg().setBackgroundDrawable(new BitmapDrawable(view.getResources(), bitmap));
    }

    k()
    {
        this$0 = LocationDetailActivity.this;
        super();
    }
}
