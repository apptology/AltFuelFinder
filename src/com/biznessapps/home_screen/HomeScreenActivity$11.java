// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.view.ViewPager;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeScreenActivity

class this._cls0 extends Handler
{

    final HomeScreenActivity this$0;

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 1: default 24
    //                   1 25;
           goto _L1 _L2
_L1:
        return;
_L2:
        if (HomeScreenActivity.access$1900(HomeScreenActivity.this) > 0)
        {
            HomeScreenActivity.access$1910(HomeScreenActivity.this);
            HomeScreenActivity.access$2000(HomeScreenActivity.this).setCurrentItem(HomeScreenActivity.access$1900(HomeScreenActivity.this));
            HomeScreenActivity.access$2200(HomeScreenActivity.this, 100, HomeScreenActivity.access$2100(HomeScreenActivity.this), 1);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    (Looper looper)
    {
        this$0 = HomeScreenActivity.this;
        super(looper);
    }
}
