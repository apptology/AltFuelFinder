// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.menudrawer;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

public class ColorDrawable extends Drawable
{
    static final class ColorState extends android.graphics.drawable.Drawable.ConstantState
    {

        int mBaseColor;
        int mChangingConfigurations;
        int mUseColor;

        public int getChangingConfigurations()
        {
            return mChangingConfigurations;
        }

        public Drawable newDrawable()
        {
            return new ColorDrawable(this);
        }

        public Drawable newDrawable(Resources resources)
        {
            return new ColorDrawable(this);
        }

        ColorState(ColorState colorstate)
        {
            if (colorstate != null)
            {
                mBaseColor = colorstate.mBaseColor;
                mUseColor = colorstate.mUseColor;
            }
        }
    }


    private final Paint mPaint;
    private ColorState mState;

    public ColorDrawable()
    {
        this(((ColorState) (null)));
    }

    public ColorDrawable(int i)
    {
        this(((ColorState) (null)));
        setColor(i);
    }

    private ColorDrawable(ColorState colorstate)
    {
        mPaint = new Paint();
        mState = new ColorState(colorstate);
    }


    public void draw(Canvas canvas)
    {
        if (mState.mUseColor >>> 24 != 0)
        {
            mPaint.setColor(mState.mUseColor);
            canvas.drawRect(getBounds(), mPaint);
        }
    }

    public int getAlpha()
    {
        return mState.mUseColor >>> 24;
    }

    public int getChangingConfigurations()
    {
        return super.getChangingConfigurations() | mState.mChangingConfigurations;
    }

    public int getColor()
    {
        return mState.mUseColor;
    }

    public android.graphics.drawable.Drawable.ConstantState getConstantState()
    {
        mState.mChangingConfigurations = getChangingConfigurations();
        return mState;
    }

    public int getOpacity()
    {
        switch (mState.mUseColor >>> 24)
        {
        default:
            return -3;

        case 255: 
            return -1;

        case 0: // '\0'
            return -2;
        }
    }

    public void setAlpha(int i)
    {
        int j = mState.mBaseColor;
        int k = mState.mUseColor;
        mState.mUseColor = (mState.mBaseColor << 8) >>> 8 | ((j >>> 24) * (i + (i >> 7)) >> 8) << 24;
        if (k != mState.mUseColor)
        {
            invalidateSelf();
        }
    }

    public void setColor(int i)
    {
        if (mState.mBaseColor != i || mState.mUseColor != i)
        {
            invalidateSelf();
            ColorState colorstate = mState;
            mState.mUseColor = i;
            colorstate.mBaseColor = i;
        }
    }

    public void setColorFilter(ColorFilter colorfilter)
    {
    }
}
