// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.view.animation.Animation;

// Referenced classes of package com.biznessapps.golfcourse:
//            SmartTableView, OnTableResizeListener

class val.contentHeight
    implements android.view.animation.onListener
{

    final SmartTableView this$0;
    final int val$contentHeight;
    final int val$contentWidth;
    final OnTableResizeListener val$listener;

    public void onAnimationEnd(Animation animation)
    {
        if (val$listener != null)
        {
            val$listener.onResized(val$contentWidth, val$contentHeight);
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
        val$listener = ontableresizelistener;
        val$contentWidth = i;
        val$contentHeight = I.this;
        super();
    }
}
