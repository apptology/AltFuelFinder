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

public class TopDrawer extends VerticalDrawer
{

    private int mIndicatorLeft;

    TopDrawer(Activity activity, int i)
    {
        super(activity, i);
    }

    public TopDrawer(Context context)
    {
        super(context);
    }

    public TopDrawer(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public TopDrawer(Context context, AttributeSet attributeset, int i)
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
                    mMenuContainer.setTranslationY(i);
                }
                return;
            }
            mMenuContainer.setTranslationY(-k);
            return;
        }
        int j = mMenuContainer.getTop();
        k = (int)(-f * (float)k * 0.25F);
        mMenuContainer.offsetTopAndBottom(k - j);
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
        mDropShadowDrawable.setBounds(0, i - mDropShadowSize, j, i);
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
                j = mMenuSize;
                int k = mActiveIndicator.getHeight();
                float f = (float)i / (float)j;
                mActiveView.getDrawingRect(mActiveRect);
                offsetDescendantRectToMyCoords(mActiveView, mActiveRect);
                j = mActiveIndicator.getWidth();
                f = INDICATOR_INTERPOLATOR.getInterpolation(1.0F - f);
                k = i - (int)((float)k * (1.0F - f));
                if (mIndicatorAnimating)
                {
                    int l = mActiveRect.left;
                    int i1 = (mActiveRect.width() - j) / 2;
                    int j1 = mIndicatorStartPos;
                    mIndicatorLeft = j1 + (int)((float)((l + i1) - j1) * mIndicatorOffset);
                } else
                {
                    mIndicatorLeft = mActiveRect.left + (mActiveRect.width() - j) / 2;
                }
                canvas.save();
                canvas.clipRect(mIndicatorLeft, k, mIndicatorLeft + j, i);
                canvas.drawBitmap(mActiveIndicator, mIndicatorLeft, k, null);
                canvas.restore();
            }
        }
    }

    protected void drawMenuOverlay(Canvas canvas, int i)
    {
        int j = getWidth();
        float f = (float)i / (float)mMenuSize;
        mMenuOverlay.setBounds(0, 0, j, i);
        mMenuOverlay.setAlpha((int)(185F * (1.0F - f)));
        mMenuOverlay.draw(canvas);
    }

    protected int getIndicatorStartPos()
    {
        return mIndicatorLeft;
    }

    protected void initPeekScroller()
    {
        int i = mMenuSize / 3;
        mPeekScroller.startScroll(0, 0, i, 0, 5000);
    }

    protected boolean isContentTouch(MotionEvent motionevent)
    {
        return motionevent.getY() > mOffsetPixels;
    }

    protected boolean onDownAllowDrag(MotionEvent motionevent)
    {
        return !mMenuVisible && mInitialMotionY <= (float)mTouchSize || mMenuVisible && mInitialMotionY >= mOffsetPixels;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        i = k - i;
        j = l - j;
        k = (int)mOffsetPixels;
        mMenuContainer.layout(0, 0, i, mMenuSize);
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
        return !mMenuVisible && mInitialMotionY <= (float)mTouchSize && f > 0.0F || mMenuVisible && mInitialMotionY >= mOffsetPixels;
    }

    protected void onMoveEvent(float f)
    {
        setOffsetPixels(Math.min(Math.max(mOffsetPixels + f, 0.0F), mMenuSize));
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
            if (mVelocityTracker.getYVelocity() > 0.0F)
            {
                i = mMenuSize;
            } else
            {
                i = 0;
            }
            animateOffsetTo(i, j, true);
        } else
        if (mMenuVisible && motionevent.getY() > (float)i)
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
        mDropShadowDrawable = new GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.BOTTOM_TOP, new int[] {
            i, i & 0xffffff
        });
        invalidate();
    }
}
