// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.menudrawer;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.FloatMath;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

public class Scroller
{

    private static final float ALPHA = 800F;
    private static final float DECELERATION_RATE = (float)(Math.log(0.75D) / Math.log(0.90000000000000002D));
    private static final int DEFAULT_DURATION = 250;
    private static final float END_TENSION = 0.6F;
    private static final int FLING_MODE = 1;
    private static final int NB_SAMPLES = 100;
    private static final int SCROLL_MODE = 0;
    private static final float SPLINE[];
    private static final float START_TENSION = 0.4F;
    private static float sViscousFluidNormalize;
    private static float sViscousFluidScale;
    private int mCurrX;
    private int mCurrY;
    private float mDeceleration;
    private float mDeltaX;
    private float mDeltaY;
    private int mDuration;
    private float mDurationReciprocal;
    private int mFinalX;
    private int mFinalY;
    private boolean mFinished;
    private boolean mFlywheel;
    private Interpolator mInterpolator;
    private int mMaxX;
    private int mMaxY;
    private int mMinX;
    private int mMinY;
    private int mMode;
    private final float mPpi;
    private long mStartTime;
    private int mStartX;
    private int mStartY;
    private float mVelocity;

    public Scroller(Context context)
    {
        this(context, null);
    }

    public Scroller(Context context, Interpolator interpolator)
    {
        boolean flag;
        if (context.getApplicationInfo().targetSdkVersion >= 11)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        this(context, interpolator, flag);
    }

    public Scroller(Context context, Interpolator interpolator, boolean flag)
    {
        mFinished = true;
        mInterpolator = interpolator;
        mPpi = context.getResources().getDisplayMetrics().density * 160F;
        mDeceleration = computeDeceleration(ViewConfiguration.getScrollFriction());
        mFlywheel = flag;
    }

    private float computeDeceleration(float f)
    {
        return 386.0878F * mPpi * f;
    }

    static float viscousFluid(float f)
    {
        f *= sViscousFluidScale;
        if (f < 1.0F)
        {
            f -= 1.0F - (float)Math.exp(-f);
        } else
        {
            f = 0.3678795F + (1.0F - 0.3678795F) * (1.0F - (float)Math.exp(1.0F - f));
        }
        return f * sViscousFluidNormalize;
    }

    public void abortAnimation()
    {
        mCurrX = mFinalX;
        mCurrY = mFinalY;
        mFinished = true;
    }

    public boolean computeScrollOffset()
    {
        boolean flag1 = true;
        boolean flag;
        if (mFinished)
        {
            flag = false;
        } else
        {
            int i = (int)(AnimationUtils.currentAnimationTimeMillis() - mStartTime);
            if (i < mDuration)
            {
                switch (mMode)
                {
                default:
                    return true;

                case 0: // '\0'
                    float f = (float)i * mDurationReciprocal;
                    if (mInterpolator == null)
                    {
                        f = viscousFluid(f);
                    } else
                    {
                        f = mInterpolator.getInterpolation(f);
                    }
                    mCurrX = mStartX + Math.round(mDeltaX * f);
                    mCurrY = mStartY + Math.round(mDeltaY * f);
                    return true;

                case 1: // '\001'
                    float f1 = (float)i / (float)mDuration;
                    i = (int)(100F * f1);
                    float f2 = (float)i / 100F;
                    float f3 = (float)(i + 1) / 100F;
                    float f4 = SPLINE[i];
                    float f5 = SPLINE[i + 1];
                    f1 = f4 + ((f1 - f2) / (f3 - f2)) * (f5 - f4);
                    mCurrX = mStartX + Math.round((float)(mFinalX - mStartX) * f1);
                    mCurrX = Math.min(mCurrX, mMaxX);
                    mCurrX = Math.max(mCurrX, mMinX);
                    mCurrY = mStartY + Math.round((float)(mFinalY - mStartY) * f1);
                    mCurrY = Math.min(mCurrY, mMaxY);
                    mCurrY = Math.max(mCurrY, mMinY);
                    flag = flag1;
                    break;
                }
                if (mCurrX == mFinalX)
                {
                    flag = flag1;
                    if (mCurrY == mFinalY)
                    {
                        mFinished = true;
                        return true;
                    }
                }
            } else
            {
                mCurrX = mFinalX;
                mCurrY = mFinalY;
                mFinished = true;
                return true;
            }
        }
        return flag;
    }

    public void extendDuration(int i)
    {
        mDuration = timePassed() + i;
        mDurationReciprocal = 1.0F / (float)mDuration;
        mFinished = false;
    }

    public void fling(int i, int j, int k, int l, int i1, int j1, int k1, 
            int l1)
    {
        int j2 = k;
        int i2 = l;
        if (mFlywheel)
        {
            j2 = k;
            i2 = l;
            if (!mFinished)
            {
                float f = getCurrVelocity();
                float f5 = mFinalX - mStartX;
                float f2 = mFinalY - mStartY;
                float f4 = FloatMath.sqrt(f5 * f5 + f2 * f2);
                f5 /= f4;
                f2 /= f4;
                f4 = f5 * f;
                f = f2 * f;
                j2 = k;
                i2 = l;
                if (Math.signum(k) == Math.signum(f4))
                {
                    j2 = k;
                    i2 = l;
                    if (Math.signum(l) == Math.signum(f))
                    {
                        j2 = (int)((float)k + f4);
                        i2 = (int)((float)l + f);
                    }
                }
            }
        }
        mMode = 1;
        mFinished = false;
        float f3 = FloatMath.sqrt(j2 * j2 + i2 * i2);
        mVelocity = f3;
        double d = Math.log((0.4F * f3) / 800F);
        mDuration = (int)(1000D * Math.exp(d / ((double)DECELERATION_RATE - 1.0D)));
        mStartTime = AnimationUtils.currentAnimationTimeMillis();
        mStartX = i;
        mStartY = j;
        float f1;
        if (f3 == 0.0F)
        {
            f1 = 1.0F;
        } else
        {
            f1 = (float)j2 / f3;
        }
        if (f3 == 0.0F)
        {
            f3 = 1.0F;
        } else
        {
            f3 = (float)i2 / f3;
        }
        k = (int)(800D * Math.exp(((double)DECELERATION_RATE / ((double)DECELERATION_RATE - 1.0D)) * d));
        mMinX = i1;
        mMaxX = j1;
        mMinY = k1;
        mMaxY = l1;
        mFinalX = Math.round((float)k * f1) + i;
        mFinalX = Math.min(mFinalX, mMaxX);
        mFinalX = Math.max(mFinalX, mMinX);
        mFinalY = Math.round((float)k * f3) + j;
        mFinalY = Math.min(mFinalY, mMaxY);
        mFinalY = Math.max(mFinalY, mMinY);
    }

    public final void forceFinished(boolean flag)
    {
        mFinished = flag;
    }

    public float getCurrVelocity()
    {
        return mVelocity - (mDeceleration * (float)timePassed()) / 2000F;
    }

    public final int getCurrX()
    {
        return mCurrX;
    }

    public final int getCurrY()
    {
        return mCurrY;
    }

    public final int getDuration()
    {
        return mDuration;
    }

    public final int getFinalX()
    {
        return mFinalX;
    }

    public final int getFinalY()
    {
        return mFinalY;
    }

    public final int getStartX()
    {
        return mStartX;
    }

    public final int getStartY()
    {
        return mStartY;
    }

    public final boolean isFinished()
    {
        return mFinished;
    }

    public boolean isScrollingInDirection(float f, float f1)
    {
        return !mFinished && Math.signum(f) == Math.signum(mFinalX - mStartX) && Math.signum(f1) == Math.signum(mFinalY - mStartY);
    }

    public void setFinalX(int i)
    {
        mFinalX = i;
        mDeltaX = mFinalX - mStartX;
        mFinished = false;
    }

    public void setFinalY(int i)
    {
        mFinalY = i;
        mDeltaY = mFinalY - mStartY;
        mFinished = false;
    }

    public final void setFriction(float f)
    {
        mDeceleration = computeDeceleration(f);
    }

    public void startScroll(int i, int j, int k, int l)
    {
        startScroll(i, j, k, l, 250);
    }

    public void startScroll(int i, int j, int k, int l, int i1)
    {
        mMode = 0;
        mFinished = false;
        mDuration = i1;
        mStartTime = AnimationUtils.currentAnimationTimeMillis();
        mStartX = i;
        mStartY = j;
        mFinalX = i + k;
        mFinalY = j + l;
        mDeltaX = k;
        mDeltaY = l;
        mDurationReciprocal = 1.0F / (float)mDuration;
    }

    public int timePassed()
    {
        return (int)(AnimationUtils.currentAnimationTimeMillis() - mStartTime);
    }

    static 
    {
        SPLINE = new float[101];
        float f = 0.0F;
        int i = 0;
label0:
        do
        {
            if (i <= 100)
            {
                float f3 = (float)i / 100F;
                float f1 = 1.0F;
                do
                {
                    float f2 = f + (f1 - f) / 2.0F;
                    float f4 = 3F * f2 * (1.0F - f2);
                    float f5 = ((1.0F - f2) * 0.4F + 0.6F * f2) * f4 + f2 * f2 * f2;
                    if ((double)Math.abs(f5 - f3) < 1.0000000000000001E-05D)
                    {
                        SPLINE[i] = f4 + f2 * f2 * f2;
                        i++;
                        continue label0;
                    }
                    if (f5 > f3)
                    {
                        f1 = f2;
                    } else
                    {
                        f = f2;
                    }
                } while (true);
            }
            SPLINE[100] = 1.0F;
            sViscousFluidScale = 8F;
            sViscousFluidNormalize = 1.0F;
            sViscousFluidNormalize = 1.0F / viscousFluid(1.0F);
        } while (true);
    }
}
