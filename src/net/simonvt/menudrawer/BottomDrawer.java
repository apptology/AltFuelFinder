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
//            VerticalDrawer, BuildLayerFrameLayout, Scroller

public class BottomDrawer extends VerticalDrawer
{

    private int mIndicatorLeft;

    BottomDrawer(Activity activity, int i)
    {
        super(activity, i);
    }

    public BottomDrawer(Context context)
    {
        super(context);
    }

    public BottomDrawer(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public BottomDrawer(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    private void offsetMenu(int i)
    {
        float f;
        int j;
        int l;
label0:
        {
label1:
            {
                if (mOffsetMenu && mMenuSize != 0)
                {
                    j = getHeight();
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
                    mMenuContainer.setTranslationY(i);
                }
                return;
            }
            mMenuContainer.setTranslationY(j + l);
            return;
        }
        int k = mMenuContainer.getTop();
        l = (int)((float)l * f * 0.25F);
        int i1 = mMenuSize;
        mMenuContainer.offsetTopAndBottom(((j - i1) + l) - k);
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
        int j = getWidth();
        int k = getHeight();
        mDropShadowDrawable.setBounds(0, k + i, j, k + i + mDropShadowSize);
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
                j = getHeight();
                int l = mMenuSize;
                int k = mActiveIndicator.getHeight();
                float f = (float)Math.abs(i) / (float)l;
                mActiveView.getDrawingRect(mActiveRect);
                offsetDescendantRectToMyCoords(mActiveView, mActiveRect);
                l = mActiveIndicator.getWidth();
                f = INDICATOR_INTERPOLATOR.getInterpolation(1.0F - f);
                int i1 = j + i + (int)((float)k * (1.0F - f));
                if (mIndicatorAnimating)
                {
                    int j1 = mActiveRect.left;
                    int k1 = (mActiveRect.width() - l) / 2;
                    int l1 = mIndicatorStartPos;
                    mIndicatorLeft = l1 + (int)((float)((j1 + k1) - l1) * mIndicatorOffset);
                } else
                {
                    mIndicatorLeft = mActiveRect.left + (mActiveRect.width() - l) / 2;
                }
                canvas.save();
                canvas.clipRect(mIndicatorLeft, j + i, mIndicatorLeft + l, i1);
                canvas.drawBitmap(mActiveIndicator, mIndicatorLeft, i1 - k, null);
                canvas.restore();
            }
        }
    }

    protected void drawMenuOverlay(Canvas canvas, int i)
    {
        int j = getWidth();
        int k = getHeight();
        float f = (float)Math.abs(i) / (float)mMenuSize;
        mMenuOverlay.setBounds(0, k + i, j, k);
        mMenuOverlay.setAlpha((int)(185F * (1.0F - f)));
        mMenuOverlay.draw(canvas);
    }

    protected int getIndicatorStartPos()
    {
        return mIndicatorLeft;
    }

    protected void initPeekScroller()
    {
        int i = -mMenuSize / 3;
        mPeekScroller.startScroll(0, 0, i, 0, 5000);
    }

    protected boolean isContentTouch(MotionEvent motionevent)
    {
        return motionevent.getY() < (float)getHeight() + mOffsetPixels;
    }

    protected boolean onDownAllowDrag(MotionEvent motionevent)
    {
        int i = getHeight();
        return !mMenuVisible && mInitialMotionY >= (float)(i - mTouchSize) || mMenuVisible && mInitialMotionY <= (float)i + mOffsetPixels;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        i = k - i;
        j = l - j;
        k = (int)mOffsetPixels;
        l = mMenuSize;
        mMenuContainer.layout(0, j - l, i, j);
        offsetMenu(k);
        if (USE_TRANSLATIONS)
        {
            mContentContainer.layout(0, 0, i, j);
            return;
        } else
        {
            mContentContainer.layout(0, k, i, j + k);
            return;
        }
    }

    protected boolean onMoveAllowDrag(MotionEvent motionevent, float f)
    {
        int i = getHeight();
        return !mMenuVisible && mInitialMotionY >= (float)(i - mTouchSize) && f < 0.0F || mMenuVisible && mInitialMotionY <= (float)i + mOffsetPixels;
    }

    protected void onMoveEvent(float f)
    {
        setOffsetPixels(Math.max(Math.min(mOffsetPixels + f, 0.0F), -mMenuSize));
    }

    protected void onOffsetPixelsChanged(int i)
    {
        if (USE_TRANSLATIONS)
        {
            mContentContainer.setTranslationY(i);
            offsetMenu(i);
            invalidate();
            return;
        } else
        {
            mContentContainer.offsetTopAndBottom(i - mContentContainer.getTop());
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
            mLastMotionY = motionevent.getY();
            if (mVelocityTracker.getYVelocity() < 0.0F)
            {
                i = -mMenuSize;
            } else
            {
                i = 0;
            }
            animateOffsetTo(i, j, true);
        } else
        if (mMenuVisible && motionevent.getY() < (float)(getHeight() + i))
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
        mDropShadowDrawable = new GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.TOP_BOTTOM, new int[] {
            i, i & 0xffffff
        });
        invalidate();
    }
}
