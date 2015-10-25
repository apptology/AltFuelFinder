// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.parallax;

import android.view.View;

// Referenced classes of package com.biznessapps.widgets.animation.parallax:
//            LoopPagerAdapter

class this._cls0
    implements android.view.r
{

    final LoopPagerAdapter this$0;

    public void onClick(View view)
    {
        if (LoopPagerAdapter.access$100(LoopPagerAdapter.this) != null)
        {
            LoopPagerAdapter.access$100(LoopPagerAdapter.this).onClick(LoopPagerAdapter.access$000(LoopPagerAdapter.this) - 1);
        }
    }

    ItemClickListener()
    {
        this$0 = LoopPagerAdapter.this;
        super();
    }
}
