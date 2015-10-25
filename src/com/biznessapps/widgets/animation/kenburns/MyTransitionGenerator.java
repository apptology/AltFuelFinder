// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.kenburns;

import android.graphics.RectF;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;

// Referenced classes of package com.biznessapps.widgets.animation.kenburns:
//            AnimationDirection, Transition

public class MyTransitionGenerator
{

    public static final int DEFAULT_TRANSITION_DURATION = 10000;
    private long mTransitionDuration;
    private Interpolator mTransitionInterpolator;

    public MyTransitionGenerator()
    {
        this(10000L, ((Interpolator) (new AccelerateDecelerateInterpolator())));
    }

    public MyTransitionGenerator(long l, Interpolator interpolator)
    {
        setTransitionDuration(l);
        setTransitionInterpolator(interpolator);
    }

    private RectF calcLeftRect(RectF rectf, RectF rectf1)
    {
        float f = rectf1.width() / rectf1.height();
        return new RectF(0.0F, 0.0F, rectf.height() * f, rectf.height());
    }

    private RectF calcRightRect(RectF rectf, RectF rectf1)
    {
        float f = rectf1.width() / rectf1.height();
        f = rectf.height() * f;
        float f1 = rectf.width() - f;
        return new RectF(f1, 0.0F, f1 + f, rectf.height());
    }

    public Transition generateNextTransition(RectF rectf, RectF rectf1, AnimationDirection animationdirection)
    {
        if (animationdirection == AnimationDirection.LEFT_TO_RIGHT)
        {
            animationdirection = calcLeftRect(rectf, rectf1);
            rectf1 = calcRightRect(rectf, rectf1);
            rectf = animationdirection;
        } else
        {
            animationdirection = calcRightRect(rectf, rectf1);
            rectf1 = calcLeftRect(rectf, rectf1);
            rectf = animationdirection;
        }
        return new Transition(rectf, rectf1, mTransitionDuration, mTransitionInterpolator);
    }

    public void setTransitionDuration(long l)
    {
        mTransitionDuration = l;
    }

    public void setTransitionInterpolator(Interpolator interpolator)
    {
        mTransitionInterpolator = interpolator;
    }
}
