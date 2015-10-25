// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;

public class SquareFrameLayout extends FrameLayout
{

    private boolean mKeepWidth;

    public SquareFrameLayout(Context context)
    {
        super(context);
    }

    public SquareFrameLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        initAttrs(attributeset);
    }

    public SquareFrameLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        initAttrs(attributeset);
    }

    public void initAttrs(AttributeSet attributeset)
    {
        attributeset = getContext().obtainStyledAttributes(attributeset, com.biznessapps.layout.R.styleable.SquareFrameLayout);
        mKeepWidth = attributeset.getBoolean(0, true);
        attributeset.recycle();
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        i = getMeasuredWidth();
        j = getMeasuredHeight();
        if (mKeepWidth)
        {
            j = i;
        } else
        {
            i = j;
        }
        setMeasuredDimension(i, j);
    }
}
