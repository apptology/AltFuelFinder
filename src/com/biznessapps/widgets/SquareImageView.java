// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

public class SquareImageView extends ImageView
{

    private boolean mRatioByWidth;

    public SquareImageView(Context context)
    {
        super(context);
    }

    public SquareImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        initAttrs(attributeset);
    }

    public SquareImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        initAttrs(attributeset);
    }

    public void initAttrs(AttributeSet attributeset)
    {
        attributeset = getContext().obtainStyledAttributes(attributeset, com.biznessapps.layout.R.styleable.SquareImageView);
        mRatioByWidth = attributeset.getBoolean(0, true);
        attributeset.recycle();
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        int k = getMeasuredWidth();
        int l = getMeasuredHeight();
        i = l;
        j = k;
        if (k != 0)
        {
            i = l;
            j = k;
            if (l != 0)
            {
                i = l;
                j = k;
                if (getDrawable() != null)
                {
                    if (mRatioByWidth)
                    {
                        i = (int)((float)k * ((float)getDrawable().getIntrinsicHeight() / (float)getDrawable().getIntrinsicWidth()));
                        j = k;
                    } else
                    {
                        j = (int)((float)l * ((float)getDrawable().getIntrinsicWidth() / (float)getDrawable().getIntrinsicHeight()));
                        i = l;
                    }
                }
            }
        }
        setMeasuredDimension(j, i);
    }
}
