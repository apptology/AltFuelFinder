// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.parallax;


// Referenced classes of package com.biznessapps.widgets.animation.parallax:
//            ParallaxViewPager

class this._cls1
    implements Runnable
{

    final is._cls0 this$1;

    public void run()
    {
        ParallaxViewPager.access$600(_fld0);
        int i = ParallaxViewPager.access$400(_fld0).getCurrentItem();
        ParallaxViewPager.access$400(_fld0).setCurrentItem(i + 1);
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
