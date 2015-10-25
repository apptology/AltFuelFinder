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

public class LeftDrawer extends HorizontalDrawer
{

    private int mIndicatorTop;

    LeftDrawer(Activity activity, int i)
    {
        super(activity, i);
    }

    public LeftDrawer(Context context)
    {
        super(context);
    }

    public LeftDrawer(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public LeftDrawer(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    private void offsetMenu(int i)
    {
        float f;
        int k;
label0:
        {
label1:
            {
                if (mOffsetMenu && mMenuSize != 0)
                {
                    k = mMenuSize;
                    f = ((float)k - (float)i) / (float)k;
                    if (!USE_TRANSLATIONS)
                    {
                        break label0;
                    }
                    if (i <= 0)
                    {
                        break label1;
                    }
                    i = (int)(-f * (float)k * 0.25F);
                    mMenuContainer.setTranslationX(i);
                }
                return;
            }
            mMenuContainer.setTranslationX(-k);
            return;
        }
        int j = mMenuContainer.getLeft();
        k = (int)(-f * (float)k * 0.25F);
        mMenuContainer.offsetLeftAndRight(k - j);
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
        mDropShadowDrawable.setBounds(i - mDropShadowSize, 0, i, j);
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
                float f = (float)i / (float)mMenuSize;
                mActiveView.getDrawingRect(mActiveRect);
                offsetDescendantRectToMyCoords(mActiveView, mActiveRect);
                f = INDICATOR_INTERPOLATOR.getInterpolation(1.0F - f);
                j = (int)((float)mActiveIndicator.getWidth() * (1.0F - f));
                if (mIndicatorAnimating)
                {
                    int k = mActiveRect.top;
                    int l = (mActiveRect.height() - mActiveIndicator.getHeight()) / 2;
                    int i1 = mIndicatorStartPos;
                    mIndicatorTop = i1 + (int)((float)((k + l) - i1) * mIndicatorOffset);
                } else
                {
                    mIndicatorTop = mActiveRect.top + (mActiveRect.height() - mActiveIndicator.getHeight()) / 2;
                }
                j = i - j;
                canvas.save();
                canvas.clipRect(j, 0, i, getHeight());
                canvas.drawBitmap(mActiveIndicator, j, mIndicatorTop, null);
                canvas.restore();
            }
        }
    }

    protected void drawMenuOverlay(Canvas canvas, int i)
    {
        int j = getHeight();
        float f = (float)i / (float)mMenuSize;
        mMenuOverlay.setBounds(0, 0, i, j);
        mMenuOverlay.setAlpha((int)(185F * (1.0F - f)));
        mMenuOverlay.draw(canvas);
    }

    protected int getIndicatorStartPos()
    {
        return mIndicatorTop;
    }

    protected void initPeekScroller()
    {
        int i = mMenuSize / 3;
        mPeekScroller.startScroll(0, 0, i, 0, 5000);
    }

    protected boolean isContentTouch(MotionEvent motionevent)
    {
        return motionevent.getX() > mOffsetPixels;
    }

    protected boolean onDownAllowDrag(MotionEvent motionevent)
    {
        return !mMenuVisible && mInitialMotionX <= (float)mTouchSize || mMenuVisible && mInitialMotionX >= mOffsetPixels;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        i = k - i;
        j = l - j;
        k = (int)mOffsetPixels;
        mMenuContainer.layout(0, 0, mMenuSize, j);
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
        return !mMenuVisible && mInitialMotionX <= (float)mTouchSize && f > 0.0F || mMenuVisible && mInitialMotionX >= mOffsetPixels;
    }

    protected void onMoveEvent(float f)
    {
        setOffsetPixels(Math.min(Math.max(mOffsetPixels + f, 0.0F), mMenuSize));
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
        if (mIsDragging)
        {
            mVelocityTracker.computeCurrentVelocity(1000, mMaxVelocity);
            int j = (int)mVelocityTracker.getXVelocity();
            mLastMotionX = motionevent.getX();
            if (mVelocityTracker.getXVelocity() > 0.0F)
            {
                i = mMenuSize;
            } else
            {
                i = 0;
            }
            animateOffsetTo(i, j, true);
        } else
        if (mMenuVisible && motionevent.getX() > (float)i)
        {
            closeMenu();
            return;
        }
    }

    public void openMenu(boolean flag)
    {
        animateOffsetTo(mMenuSize, 0, flag);
    }

    public void setDropShadowColor(int i)
    {
        mDropShadowDrawable = new GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.RIGHT_LEFT, new int[] {
            i, i & 0xffffff
        });
        invalidate();
    }
}
