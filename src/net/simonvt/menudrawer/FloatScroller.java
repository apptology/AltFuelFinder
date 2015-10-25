// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.menudrawer;

import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

public class FloatScroller
{

    private float mCurr;
    private float mDeltaX;
    private int mDuration;
    private float mDurationReciprocal;
    private float mFinal;
    private boolean mFinished;
    private Interpolator mInterpolator;
    private float mStart;
    private long mStartTime;

    public FloatScroller(Interpolator interpolator)
    {
        mFinished = true;
        mInterpolator = interpolator;
    }

    public void abortAnimation()
    {
        mCurr = mFinal;
        mFinished = true;
    }

    public boolean computeScrollOffset()
    {
        if (mFinished)
        {
            return false;
        }
        int i = (int)(AnimationUtils.currentAnimationTimeMillis() - mStartTime);
        if (i < mDuration)
        {
            float f = i;
            float f1 = mDurationReciprocal;
            f = mInterpolator.getInterpolation(f * f1);
            mCurr = mStart + mDeltaX * f;
            return true;
        } else
        {
            mCurr = mFinal;
            mFinished = true;
            return true;
        }
    }

    public void extendDuration(int i)
    {
        mDuration = timePassed() + i;
        mDurationReciprocal = 1.0F / (float)mDuration;
        mFinished = false;
    }

    public final void forceFinished(boolean flag)
    {
        mFinished = flag;
    }

    public final float getCurr()
    {
        return mCurr;
    }

    public final int getDuration()
    {
        return mDuration;
    }

    public final float getFinal()
    {
        return mFinal;
    }

    public final float getStart()
    {
        return mStart;
    }

    public final boolean isFinished()
    {
        return mFinished;
    }

    public void setFinal(float f)
    {
        mFinal = f;
        mDeltaX = mFinal - mStart;
        mFinished = false;
    }

    public void startScroll(float f, float f1, int i)
    {
        mFinished = false;
        mDuration = i;
        mStartTime = AnimationUtils.currentAnimationTimeMillis();
        mStart = f;
        mFinal = f + f1;
        mDeltaX = f1;
        mDurationReciprocal = 1.0F / (float)mDuration;
    }

    public int timePassed()
    {
        return (int)(AnimationUtils.currentAnimationTimeMillis() - mStartTime);
    }
}
