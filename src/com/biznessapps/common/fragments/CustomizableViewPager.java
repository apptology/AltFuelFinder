// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.fragments;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.biznessapps.widgets.ExtendedViewPager;

public class CustomizableViewPager extends ExtendedViewPager
{

    private boolean enableScrolling;

    public CustomizableViewPager(Context context)
    {
        super(context);
        enableScrolling = true;
    }

    public CustomizableViewPager(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        enableScrolling = true;
    }

    public void enableScrolling(boolean flag)
    {
        enableScrolling = flag;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (!enableScrolling)
        {
            boolean flag;
            if (!enableScrolling)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            requestDisallowInterceptTouchEvent(flag);
        }
        return super.onInterceptTouchEvent(motionevent);
    }
}
