// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.ScrollView;

public class CustomScrollView extends ScrollView
{

    private static final int MAX_HEIGHT = 120;
    private int maxHeight;

    public CustomScrollView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        maxHeight = 120;
    }

    private int dpToPx(Resources resources, int i)
    {
        return (int)TypedValue.applyDimension(1, i, resources.getDisplayMetrics());
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, android.view.View.MeasureSpec.makeMeasureSpec(dpToPx(getResources(), maxHeight), 0x80000000));
    }

    public void setMaxHeight(int i)
    {
        maxHeight = i;
    }
}
