// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public class HorizAnimation extends Animation
{

    final int startWidth;
    final int targetWidth;
    View view;

    public HorizAnimation(View view1, float f)
    {
        view = view1;
        targetWidth = (int)((float)((View)view1.getParent()).getWidth() * f);
        startWidth = view1.getWidth();
    }

    protected void applyTransformation(float f, Transformation transformation)
    {
        int i = (int)((float)startWidth + (float)(targetWidth - startWidth) * f);
        view.getLayoutParams().width = i;
        view.requestLayout();
    }

    public void initialize(int i, int j, int k, int l)
    {
        super.initialize(i, j, k, l);
    }

    public boolean willChangeBounds()
    {
        return true;
    }
}
