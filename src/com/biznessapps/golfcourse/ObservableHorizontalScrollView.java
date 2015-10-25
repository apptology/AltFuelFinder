// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.HorizontalScrollView;

// Referenced classes of package com.biznessapps.golfcourse:
//            HorizontalScrollViewListener

public class ObservableHorizontalScrollView extends HorizontalScrollView
{

    private HorizontalScrollViewListener scrollViewListener;

    public ObservableHorizontalScrollView(Context context)
    {
        super(context);
        scrollViewListener = null;
    }

    public ObservableHorizontalScrollView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        scrollViewListener = null;
    }

    public ObservableHorizontalScrollView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        scrollViewListener = null;
    }

    protected void onScrollChanged(int i, int j, int k, int l)
    {
        super.onScrollChanged(i, j, k, l);
        if (scrollViewListener != null)
        {
            scrollViewListener.onScrollChanged(this, i, j, k, l);
        }
    }

    public void setScrollViewListener(HorizontalScrollViewListener horizontalscrollviewlistener)
    {
        scrollViewListener = horizontalscrollviewlistener;
    }
}
