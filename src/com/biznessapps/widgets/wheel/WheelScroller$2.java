// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.wheel;

import android.os.Handler;
import android.os.Message;
import android.widget.Scroller;

// Referenced classes of package com.biznessapps.widgets.wheel:
//            WheelScroller

class this._cls0 extends Handler
{

    final WheelScroller this$0;

    public void handleMessage(Message message)
    {
        WheelScroller.access$100(WheelScroller.this).computeScrollOffset();
        int i = WheelScroller.access$100(WheelScroller.this).getCurrY();
        int j = WheelScroller.access$000(WheelScroller.this) - i;
        WheelScroller.access$002(WheelScroller.this, i);
        if (j != 0)
        {
            WheelScroller.access$300(WheelScroller.this).onScroll(j);
        }
        if (Math.abs(i - WheelScroller.access$100(WheelScroller.this).getFinalY()) < 1)
        {
            WheelScroller.access$100(WheelScroller.this).getFinalY();
            WheelScroller.access$100(WheelScroller.this).forceFinished(true);
        }
        if (!WheelScroller.access$100(WheelScroller.this).isFinished())
        {
            WheelScroller.access$400(WheelScroller.this).sendEmptyMessage(message.what);
            return;
        }
        if (message.what == 0)
        {
            WheelScroller.access$500(WheelScroller.this);
            return;
        } else
        {
            finishScrolling();
            return;
        }
    }

    rollingListener()
    {
        this$0 = WheelScroller.this;
        super();
    }
}
