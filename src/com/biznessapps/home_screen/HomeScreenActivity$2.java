// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.view.ViewGroup;
import android.widget.ImageView;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeScreenActivity

class this._cls0
    implements android.support.v4.view.eListener
{

    final HomeScreenActivity this$0;

    public void onPageScrollStateChanged(int i)
    {
    }

    public void onPageScrolled(int i, float f, int j)
    {
    }

    public void onPageSelected(int i)
    {
        if (HomeScreenActivity.access$200(HomeScreenActivity.this) != null)
        {
            int k = HomeScreenActivity.access$200(HomeScreenActivity.this).getChildCount();
            int j = 0;
            while (j < k) 
            {
                ImageView imageview = (ImageView)HomeScreenActivity.access$200(HomeScreenActivity.this).getChildAt(j);
                if (j == i)
                {
                    imageview.setImageResource(com.biznessapps.layout.ircle);
                } else
                {
                    imageview.setImageResource(com.biznessapps.layout._circle);
                }
                j++;
            }
        }
    }

    tener()
    {
        this$0 = HomeScreenActivity.this;
        super();
    }
}
