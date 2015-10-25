// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.kenburns;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;

// Referenced classes of package com.biznessapps.widgets.animation.kenburns:
//            MyTransitionGenerator, Transition, AnimationDirection

public class KenBurnsView extends ImageView
{
    public static interface TransitionListener
    {

        public abstract void onTransitionEnd(Transition transition);

        public abstract void onTransitionStart(Transition transition);
    }


    private static final long FRAME_DELAY = 16L;
    private AnimationDirection mAnimationDirection;
    private Transition mCurrentTrans;
    private RectF mDrawableRect;
    private long mElapsedTime;
    private boolean mInitialized;
    private long mLastFrameTime;
    private final Matrix mMatrix;
    private boolean mPaused;
    private MyTransitionGenerator mTransGen;
    private TransitionListener mTransitionListener;
    private final RectF mViewportRect;

    public KenBurnsView(Context context)
    {
        this(context, null);
    }

    public KenBurnsView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public KenBurnsView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mMatrix = new Matrix();
        mViewportRect = new RectF();
        mInitialized = true;
        super.setScaleType(android.widget.ImageView.ScaleType.MATRIX);
    }

    private void fireTransitionEnd(Transition transition)
    {
        if (mTransitionListener != null && transition != null)
        {
            mTransitionListener.onTransitionEnd(transition);
        }
    }

    private void fireTransitionStart(Transition transition)
    {
        if (mTransitionListener != null && transition != null)
        {
            mTransitionListener.onTransitionStart(transition);
        }
    }

    private void handleImageChange()
    {
        updateDrawableBounds();
        if (mInitialized)
        {
            startNewTransition(mAnimationDirection);
        }
    }

    private boolean hasBounds()
    {
        return !mViewportRect.isEmpty();
    }

    private void startNewTransition(AnimationDirection animationdirection)
    {
        mAnimationDirection = animationdirection;
        if (!hasBounds())
        {
            return;
        } else
        {
            mCurrentTrans = mTransGen.generateNextTransition(mDrawableRect, mViewportRect, animationdirection);
            mElapsedTime = 0L;
            mLastFrameTime = System.currentTimeMillis();
            fireTransitionStart(mCurrentTrans);
            return;
        }
    }

    private void updateDrawableBounds()
    {
        if (mDrawableRect == null)
        {
            mDrawableRect = new RectF();
        }
        Drawable drawable = getDrawable();
        if (drawable != null)
        {
            mDrawableRect.set(0.0F, 0.0F, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
    }

    private void updateViewport(float f, float f1)
    {
        mViewportRect.set(0.0F, 0.0F, f, f1);
    }

    public MyTransitionGenerator getTransGen()
    {
        return mTransGen;
    }

    protected void onDraw(Canvas canvas)
    {
        Drawable drawable = getDrawable();
        if (mPaused || drawable == null) goto _L2; else goto _L1
_L1:
        if (!mDrawableRect.isEmpty()) goto _L4; else goto _L3
_L3:
        updateDrawableBounds();
_L6:
        mLastFrameTime = System.currentTimeMillis();
        postInvalidateDelayed(16L);
_L2:
        super.onDraw(canvas);
        return;
_L4:
        if (hasBounds())
        {
            if (mCurrentTrans == null)
            {
                startNewTransition(mAnimationDirection);
            }
            if (mCurrentTrans.getDestinyRect() != null)
            {
                mElapsedTime = mElapsedTime + (System.currentTimeMillis() - mLastFrameTime);
                RectF rectf = mCurrentTrans.getInterpolatedRect(mElapsedTime);
                float f = Math.min(mDrawableRect.width() / rectf.width(), mDrawableRect.height() / rectf.height()) * (mViewportRect.width() / rectf.width());
                float f1 = mDrawableRect.centerX();
                float f2 = rectf.left;
                float f3 = mDrawableRect.centerY();
                float f4 = rectf.top;
                mMatrix.reset();
                mMatrix.postTranslate(-mDrawableRect.width() / 2.0F, -mDrawableRect.height() / 2.0F);
                mMatrix.postScale(f, f);
                mMatrix.postTranslate(f * (f1 - f2), f * (f3 - f4));
                setImageMatrix(mMatrix);
                if (mElapsedTime >= mCurrentTrans.getDuration())
                {
                    fireTransitionEnd(mCurrentTrans);
                    startNewTransition(mAnimationDirection);
                }
            } else
            {
                fireTransitionEnd(mCurrentTrans);
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        restart();
    }

    public void pause()
    {
        mPaused = true;
    }

    public void restart()
    {
        int i = getWidth();
        int j = getHeight();
        if (i == 0 || j == 0)
        {
            return;
        } else
        {
            updateViewport(i, j);
            updateDrawableBounds();
            startNewTransition(mAnimationDirection);
            return;
        }
    }

    public void resume()
    {
        mPaused = false;
        mLastFrameTime = System.currentTimeMillis();
        invalidate();
    }

    public void setImageBitmap(Bitmap bitmap)
    {
        super.setImageBitmap(bitmap);
        handleImageChange();
    }

    public void setImageBitmap(Bitmap bitmap, AnimationDirection animationdirection)
    {
        mAnimationDirection = animationdirection;
        setImageBitmap(bitmap);
    }

    public void setImageDrawable(Drawable drawable)
    {
        super.setImageDrawable(drawable);
        handleImageChange();
    }

    public void setImageDrawable(Drawable drawable, AnimationDirection animationdirection)
    {
        mAnimationDirection = animationdirection;
        setImageDrawable(drawable);
    }

    public void setImageResource(int i)
    {
        super.setImageResource(i);
        handleImageChange();
    }

    public void setImageResource(int i, AnimationDirection animationdirection)
    {
        mAnimationDirection = animationdirection;
        setImageResource(i);
    }

    public void setImageURI(Uri uri)
    {
        super.setImageURI(uri);
        handleImageChange();
    }

    public void setImageURI(Uri uri, AnimationDirection animationdirection)
    {
        mAnimationDirection = animationdirection;
        setImageURI(uri);
    }

    public void setScaleType(android.widget.ImageView.ScaleType scaletype)
    {
    }

    public void setTransGen(MyTransitionGenerator mytransitiongenerator)
    {
        mTransGen = mytransitiongenerator;
    }

    public void setTransitionGenerator(MyTransitionGenerator mytransitiongenerator)
    {
        mTransGen = mytransitiongenerator;
        startNewTransition(mAnimationDirection);
    }

    public void setVisibility(int i)
    {
        super.setVisibility(i);
        switch (i)
        {
        default:
            pause();
            return;

        case 0: // '\0'
            resume();
            break;
        }
    }
}
