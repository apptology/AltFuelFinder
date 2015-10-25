// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.View;

// Referenced classes of package com.biznessapps.widgets:
//            TouchImageView

public class ExtendedViewPager extends ViewPager
{

    public ExtendedViewPager(Context context)
    {
        super(context);
    }

    public ExtendedViewPager(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    protected boolean canScroll(View view, boolean flag, int i, int j, int k)
    {
        if (view instanceof TouchImageView)
        {
            return ((TouchImageView)view).canScrollHorizontallyFroyo(-i);
        } else
        {
            return super.canScroll(view, flag, i, j, k);
        }
    }
}
