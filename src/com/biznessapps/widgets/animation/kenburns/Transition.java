// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.kenburns;

import android.graphics.RectF;
import android.view.animation.Interpolator;

// Referenced classes of package com.biznessapps.widgets.animation.kenburns:
//            MathUtils, IncompatibleRatioException

public class Transition
{

    private float mCenterXDiff;
    private float mCenterYDiff;
    private final RectF mCurrentRect = new RectF();
    private RectF mDstRect;
    private long mDuration;
    private float mHeightDiff;
    private Interpolator mInterpolator;
    private RectF mSrcRect;
    private float mWidthDiff;

    public Transition(RectF rectf, RectF rectf1, long l, Interpolator interpolator)
    {
        if (!MathUtils.haveSameAspectRatio(rectf, rectf1))
        {
            throw new IncompatibleRatioException();
        } else
        {
            mSrcRect = rectf;
            mDstRect = rectf1;
            mDuration = l;
            mInterpolator = interpolator;
            mWidthDiff = rectf1.width() - rectf.width();
            mHeightDiff = rectf1.height() - rectf.height();
            mCenterXDiff = rectf1.centerX() - rectf.centerX();
            mCenterYDiff = rectf1.centerY() - rectf.centerY();
            return;
        }
    }

    public RectF getDestinyRect()
    {
        return mDstRect;
    }

    public long getDuration()
    {
        return mDuration;
    }

    public RectF getInterpolatedRect(long l)
    {
        float f = Math.min((float)l / (float)mDuration, 1.0F);
        float f2 = mInterpolator.getInterpolation(f);
        f = mSrcRect.width() + mWidthDiff * f2;
        float f1 = mSrcRect.height() + mHeightDiff * f2;
        float f5 = mSrcRect.centerX();
        float f6 = mCenterXDiff;
        float f3 = mSrcRect.centerY();
        float f4 = mCenterYDiff;
        f5 = (f5 + f6 * f2) - f / 2.0F;
        f2 = (f3 + f4 * f2) - f1 / 2.0F;
        mCurrentRect.set(f5, f2, f5 + f, f2 + f1);
        return mCurrentRect;
    }

    public RectF getSourceRect()
    {
        return mSrcRect;
    }
}
