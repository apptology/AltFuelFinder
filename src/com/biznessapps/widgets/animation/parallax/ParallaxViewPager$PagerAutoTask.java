// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.parallax;

import java.util.TimerTask;

// Referenced classes of package com.biznessapps.widgets.animation.parallax:
//            ParallaxViewPager

private class <init> extends TimerTask
{

    final ParallaxViewPager this$0;

    public void run()
    {
        if (ParallaxViewPager.access$200(ParallaxViewPager.this))
        {
            ParallaxViewPager.access$400(ParallaxViewPager.this).post(new Runnable() {

                final ParallaxViewPager.PagerAutoTask this$1;

                public void run()
                {
                    ParallaxViewPager.access$600(this$0);
                    int i = ParallaxViewPager.access$400(this$0).getCurrentItem();
                    ParallaxViewPager.access$400(this$0).setCurrentItem(i + 1);
                }

            
            {
                this$1 = ParallaxViewPager.PagerAutoTask.this;
                super();
            }
            });
        }
    }

    private _cls1.this._cls1()
    {
        this$0 = ParallaxViewPager.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
