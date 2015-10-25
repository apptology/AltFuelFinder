// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.kenburns;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;

// Referenced classes of package com.biznessapps.widgets.animation.kenburns:
//            AdvancedKenBurnsView, KenBurnsEntity

class val.newIndex
    implements com.biznessapps.utils.google.caching.llback
{

    final AdvancedKenBurnsView this$0;
    final int val$newIndex;

    public void onImageLoaded(String s, Bitmap bitmap, View view)
    {
        setImageDrawable(new BitmapDrawable(bitmap), AdvancedKenBurnsView.access$000(AdvancedKenBurnsView.this)[val$newIndex].getDirection());
    }

    ()
    {
        this$0 = final_advancedkenburnsview;
        val$newIndex = I.this;
        super();
    }
}
