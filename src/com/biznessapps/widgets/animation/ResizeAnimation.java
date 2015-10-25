// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public class ResizeAnimation extends Animation
{

    final int startHeight;
    final int targetHeight;
    View view;

    public ResizeAnimation(View view1, int i)
    {
        view = view1;
        targetHeight = i;
        startHeight = view1.getHeight();
    }

    protected void applyTransformation(float f, Transformation transformation)
    {
        int i = (int)((float)startHeight + (float)(targetHeight - startHeight) * f);
        view.getLayoutParams().height = i;
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
