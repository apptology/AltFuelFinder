// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.view.ViewGroup;
import android.view.animation.Animation;

// Referenced classes of package com.biznessapps.golfcourse:
//            SmartTableView, OnTableResizeListener

class ener
    implements android.view.animation.onListener
{

    final SmartTableView this$0;
    final OnTableResizeListener val$listener;

    public void onAnimationEnd(Animation animation)
    {
        if (val$listener != null)
        {
            val$listener.onResized(SmartTableView.access$000(SmartTableView.this).getWidth(), SmartTableView.access$000(SmartTableView.this).getHeight());
        }
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    ener()
    {
        this$0 = final_smarttableview;
        val$listener = OnTableResizeListener.this;
        super();
    }
}
