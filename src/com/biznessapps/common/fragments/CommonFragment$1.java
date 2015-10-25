// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.fragments;

import android.graphics.Bitmap;
import android.view.View;

// Referenced classes of package com.biznessapps.common.fragments:
//            CommonFragment

class this._cls0
    implements com.biznessapps.utils.google.caching.LoadCallback
{

    final CommonFragment this$0;

    public void onImageLoaded(String s, Bitmap bitmap, View view)
    {
        onBackgroundLoaded(bitmap);
    }

    mageLoadCallback()
    {
        this$0 = CommonFragment.this;
        super();
    }
}
