// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.parallax;

import android.content.Context;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;

// Referenced classes of package com.biznessapps.widgets.animation.parallax:
//            ParallaxViewPager

private class this._cls0 extends Scroller
{

    final ParallaxViewPager this$0;

    public void startScroll(int i, int j, int k, int l, int i1)
    {
        super.startScroll(i, j, k, l, ParallaxViewPager.access$500(ParallaxViewPager.access$400(ParallaxViewPager.this)));
    }

    public (Context context)
    {
        this$0 = ParallaxViewPager.this;
        super(context, new DecelerateInterpolator());
    }
}
