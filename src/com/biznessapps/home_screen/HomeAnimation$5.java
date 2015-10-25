// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.biznessapps.widgets.ExtendedViewPager;
import java.util.List;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeAnimation

class val.urls extends Handler
{

    final HomeAnimation this$0;
    final List val$urls;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            break;
        }
        if (HomeAnimation.access$000(HomeAnimation.this) < val$urls.size() - 1)
        {
            int _tmp = HomeAnimation.access$008(HomeAnimation.this);
        } else
        {
            HomeAnimation.access$002(HomeAnimation.this, 0);
        }
        if (HomeAnimation.access$400(HomeAnimation.this))
        {
            HomeAnimation.access$200(HomeAnimation.this, (String)val$urls.get(HomeAnimation.access$000(HomeAnimation.this)), HomeAnimation.access$700(HomeAnimation.this).getCurrentView());
        } else
        {
            HomeAnimation.access$800(HomeAnimation.this).setCurrentItem(HomeAnimation.access$000(HomeAnimation.this));
        }
        HomeAnimation.access$900(HomeAnimation.this, 6000);
    }

    stomPagerAdapter(List list)
    {
        this$0 = final_homeanimation;
        val$urls = list;
        super(Looper.this);
    }
}
