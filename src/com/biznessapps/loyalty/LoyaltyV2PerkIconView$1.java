// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.graphics.Bitmap;
import android.view.View;
import com.biznessapps.widgets.LoaderImageView;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV2PerkIconView

class this._cls0
    implements com.biznessapps.utils.google.caching.lback
{

    final LoyaltyV2PerkIconView this$0;

    public void onImageLoaded(String s, Bitmap bitmap, View view)
    {
        ((LoaderImageView)view).setImageBitmap(bitmap, true);
        updateUI();
    }

    .ImageLoadCallback()
    {
        this$0 = LoyaltyV2PerkIconView.this;
        super();
    }
}
