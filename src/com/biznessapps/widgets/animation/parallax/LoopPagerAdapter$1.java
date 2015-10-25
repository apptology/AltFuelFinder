// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.parallax;

import android.support.v4.view.ViewPager;

// Referenced classes of package com.biznessapps.widgets.animation.parallax:
//            LoopPagerAdapter

class val.viewPager
    implements android.support.v4.view.ngeListener
{

    final LoopPagerAdapter this$0;
    final ViewPager val$viewPager;

    public void onPageScrollStateChanged(int i)
    {
    }

    public void onPageScrolled(int i, float f, int j)
    {
        if (f == 0.0F)
        {
            LoopPagerAdapter.access$002(LoopPagerAdapter.this, i);
            j = getCount();
            if (i == 0)
            {
                val$viewPager.setCurrentItem(j - 2, false);
            } else
            if (i == j - 1)
            {
                val$viewPager.setCurrentItem(1, false);
                return;
            }
        }
    }

    public void onPageSelected(int i)
    {
    }

    ()
    {
        this$0 = final_looppageradapter;
        val$viewPager = ViewPager.this;
        super();
    }
}
