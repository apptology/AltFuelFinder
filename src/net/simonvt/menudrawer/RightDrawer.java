// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.menudrawer;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.animation.Interpolator;

// Referenced classes of package net.simonvt.menudrawer:
//            HorizontalDrawer, BuildLayerFrameLayout, Scroller

public class RightDrawer extends HorizontalDrawer
{

    private int mIndicatorTop;

    RightDrawer(Activity activity, int i)
    {
        super(activity, i);
    }

    public RightDrawer(Context context)
    {
        super(context);
    }

    public RightDrawer(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public RightDrawer(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    private void offsetMenu(int i)
    {
        float f;
        int l;
label0:
        {
label1:
            {
                if (mOffsetMenu && mMenuSize != 0)
                {
                    l = mMenuSize;
                    f = ((float)l + (float)i) / (float)l;
                    if (!USE_TRANSLATIONS)
                    {
                        break label0;
                    }
                    if (i == 0)
                    {
                        break label1;
                    }
                    i = (int)((float)l * f * 0.25F);
                    mMenuContainer.setTranslationX(i);
                }
                return;
            }
            mMenuContainer.setTranslationX(-l);
            return;
        }
        int j = getWidth();
        int k = mMenuContainer.getRight();
        l = (int)((float)l * f * 0.25F);
        mMenuContainer.offsetLeftAndRight((j + l) - k);
        BuildLayerFrameLayout buildlayerframelayout = mMenuContainer;
        if (i == 0)
        {
            i = 4;
        } else
        {
            i = 0;
        }
        buildlayerframelayout.setVisibility(i);
    }

    public void closeMenu(boolean flag)
    {
        animateOffsetTo(0, 0, flag);
    }

    protected void drawDropShadow(Canvas canvas, int i)
    {
        int j = getHeight();
        i = getWidth() + i;
        int k = mDropShadowSize;
        mDropShadowDrawable.setBounds(i, 0, i + k, j);
        mDropShadowDrawable.draw(canvas);
    }

    protected void drawIndicator(Canvas canvas, int i)
    {
        if (mActiveView != null && isViewDescendant(mActiveView))
        {
            Integer integer = (Integer)mActiveView.getTag(com.biznessapps.layout.R.id.mdActiveViewPosition);
            int j;
            if (integer == null)
            {
                j = 0;
            } else
            {
                j = integer.intValue();
            }
            if (j == mActivePosition)
            {
                int k = getWidth();
                int l = mMenuSize;
                j = mActiveIndicator.getWidth();
                k += i;
                float f = (float)Math.abs(i) / (float)l;
                mActiveView.getDrawingRect(mActiveRect);
                offsetDescendantRectToMyCoords(mActiveView, mActiveRect);
                f = INDICATOR_INTERPOLATOR.getInterpolation(1.0F - f);
                i = k + (int)((float)j * (1.0F - f));
                if (mIndicatorAnimating)
                {
                    int i1 = mActiveRect.top;
                    int j1 = (mActiveRect.height() - mActiveIndicator.getHeight()) / 2;
                    int k1 = mIndicatorStartPos;
                    mIndicatorTop = k1 + (int)((float)((i1 + j1) - k1) * mIndicatorOffset);
                } else
                {
                    mIndicatorTop = mActiveRect.top + (mActiveRect.height() - mActiveIndicator.getHeight()) / 2;
                }
                canvas.save();
                canvas.clipRect(k, 0, i, getHeight());
                canvas.drawBitmap(mActiveIndicator, i - j, mIndicatorTop, null);
                canvas.restore();
            }
        }
    }

    protected void drawMenuOverlay(Canvas canvas, int i)
    {
        int j = getHeight();
        int k = getWidth();
        float f = (float)Math.abs(i) / (float)mMenuSize;
        mMenuOverlay.setBounds(k + i, 0, k, j);
        mMenuOverlay.setAlpha((int)(185F * (1.0F - f)));
        mMenuOverlay.draw(canvas);
    }

    protected int getIndicatorStartPos()
    {
        return mIndicatorTop;
    }

    protected void initPeekScroller()
    {
        int i = -mMenuSize / 3;
        mPeekScroller.startScroll(0, 0, i, 0, 5000);
    }

    protected boolean isContentTouch(MotionEvent motionevent)
    {
        return motionevent.getX() < (float)getWidth() + mOffsetPixels;
    }

    protected boolean onDownAllowDrag(MotionEvent motionevent)
    {
        int i = getWidth();
        int j = (int)mInitialMotionX;
        return !mMenuVisible && j >= i - mTouchSize || mMenuVisible && (float)j <= (float)i + mOffsetPixels;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        i = k - i;
        j = l - j;
        k = (int)mOffsetPixels;
        mMenuContainer.layout(i - mMenuSize, 0, i, j);
        offsetMenu(k);
        if (USE_TRANSLATIONS)
        {
            mContentContainer.layout(0, 0, i, j);
            return;
        } else
        {
            mContentContainer.layout(k, 0, i + k, j);
            return;
        }
    }

    protected boolean onMoveAllowDrag(MotionEvent motionevent, float f)
    {
        int i = getWidth();
        int j = (int)mInitialMotionX;
        return !mMenuVisible && j >= i - mTouchSize && f < 0.0F || mMenuVisible && (float)j <= (float)i + mOffsetPixels;
    }

    protected void onMoveEvent(float f)
    {
        setOffsetPixels(Math.max(Math.min(mOffsetPixels + f, 0.0F), -mMenuSize));
    }

    protected void onOffsetPixelsChanged(int i)
    {
        if (USE_TRANSLATIONS)
        {
            mContentContainer.setTranslationX(i);
            offsetMenu(i);
            invalidate();
            return;
        } else
        {
            mContentContainer.offsetLeftAndRight(i - mContentContainer.getLeft());
            offsetMenu(i);
            invalidate();
            return;
        }
    }

    protected void onUpEvent(MotionEvent motionevent)
    {
        int i = (int)mOffsetPixels;
        int j = getWidth();
        if (mIsDragging)
        {
            mVelocityTracker.computeCurrentVelocity(1000, mMaxVelocity);
            j = (int)mVelocityTracker.getXVelocity();
            mLastMotionX = motionevent.getX();
            if (mVelocityTracker.getXVelocity() > 0.0F)
            {
                i = 0;
            } else
            {
                i = -mMenuSize;
            }
            animateOffsetTo(i, j, true);
        } else
        if (mMenuVisible && motionevent.getX() < (float)(j + i))
        {
            closeMenu();
            return;
        }
    }

    public void openMenu(boolean flag)
    {
        animateOffsetTo(-mMenuSize, 0, flag);
    }

    public void setDropShadowColor(int i)
    {
        mDropShadowDrawable = new GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.LEFT_RIGHT, new int[] {
            i, i & 0xffffff
        });
        invalidate();
    }
}
