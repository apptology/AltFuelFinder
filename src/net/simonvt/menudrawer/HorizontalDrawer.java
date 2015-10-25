// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.menudrawer;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;

// Referenced classes of package net.simonvt.menudrawer:
//            DraggableDrawer, BuildLayerFrameLayout

public abstract class HorizontalDrawer extends DraggableDrawer
{

    private static final String TAG = "HorizontalDrawer";

    HorizontalDrawer(Activity activity, int i)
    {
        super(activity, i);
    }

    public HorizontalDrawer(Context context)
    {
        super(context);
    }

    public HorizontalDrawer(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public HorizontalDrawer(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        int i;
        i = motionevent.getAction() & 0xff;
        if (mTouchMode == 0)
        {
            return false;
        }
        if (i == 0 && mMenuVisible && isCloseEnough())
        {
            setOffsetPixels(0.0F);
            stopAnimation();
            endPeek();
            setDrawerState(0);
        }
        if (mMenuVisible && isContentTouch(motionevent))
        {
            return true;
        }
        if (i != 0 && mIsDragging)
        {
            return true;
        }
        i;
        JVM INSTR tableswitch 0 3: default 120
    //                   0 147
    //                   1 352
    //                   2 224
    //                   3 352;
           goto _L1 _L2 _L3 _L4 _L3
_L1:
        if (mVelocityTracker == null)
        {
            mVelocityTracker = VelocityTracker.obtain();
        }
        mVelocityTracker.addMovement(motionevent);
        return mIsDragging;
_L2:
        float f = motionevent.getX();
        mInitialMotionX = f;
        mLastMotionX = f;
        f = motionevent.getY();
        mInitialMotionY = f;
        mLastMotionY = f;
        if (onDownAllowDrag(motionevent))
        {
            byte byte0;
            if (mMenuVisible)
            {
                byte0 = 8;
            } else
            {
                byte0 = 0;
            }
            setDrawerState(byte0);
            stopAnimation();
            endPeek();
            mIsDragging = false;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        float f1 = motionevent.getX();
        float f2 = f1 - mLastMotionX;
        float f3 = Math.abs(f2);
        float f4 = motionevent.getY();
        float f5 = Math.abs(f4 - mLastMotionY);
        if (f3 > (float)mTouchSlop && f3 > f5)
        {
            if (mOnInterceptMoveEventListener != null && mTouchMode == 2 && canChildScrollHorizontally(mContentContainer, false, (int)f2, (int)f1, (int)f4))
            {
                endDrag();
                return false;
            }
            if (onMoveAllowDrag(motionevent, f2))
            {
                setDrawerState(2);
                mIsDragging = true;
                mLastMotionX = f1;
                mLastMotionY = f4;
            }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (Math.abs(mOffsetPixels) > (float)(mMenuSize / 2))
        {
            openMenu();
        } else
        {
            closeMenu();
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    protected void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getMode(i);
        int l = android.view.View.MeasureSpec.getMode(j);
        if (k != 0x40000000 || l != 0x40000000)
        {
            throw new IllegalStateException("Must measure with an exact size");
        }
        k = android.view.View.MeasureSpec.getSize(i);
        j = android.view.View.MeasureSpec.getSize(j);
        if (!mMenuSizeSet)
        {
            mMenuSize = (int)((float)k * 0.8F);
        }
        if (mOffsetPixels == -1F)
        {
            openMenu(false);
        }
        l = getChildMeasureSpec(i, 0, mMenuSize);
        int i1 = getChildMeasureSpec(i, 0, j);
        mMenuContainer.measure(l, i1);
        l = getChildMeasureSpec(i, 0, k);
        i = getChildMeasureSpec(i, 0, j);
        mContentContainer.measure(l, i);
        setMeasuredDimension(k, j);
        updateTouchAreaSize();
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i;
        if (!mMenuVisible && !mIsDragging && mTouchMode == 0)
        {
            return false;
        }
        i = motionevent.getAction();
        if (mVelocityTracker == null)
        {
            mVelocityTracker = VelocityTracker.obtain();
        }
        mVelocityTracker.addMovement(motionevent);
        i & 0xff;
        JVM INSTR tableswitch 0 3: default 88
    //                   0 90
    //                   1 297
    //                   2 143
    //                   3 297;
           goto _L1 _L2 _L3 _L4 _L3
_L1:
        return true;
_L2:
        float f = motionevent.getX();
        mInitialMotionX = f;
        mLastMotionX = f;
        f = motionevent.getY();
        mInitialMotionY = f;
        mLastMotionY = f;
        if (onDownAllowDrag(motionevent))
        {
            stopAnimation();
            endPeek();
            startLayerTranslation();
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (!mIsDragging)
        {
            float f1 = motionevent.getX();
            float f2 = f1 - mLastMotionX;
            float f4 = Math.abs(f2);
            float f5 = Math.abs(motionevent.getY() - mLastMotionY);
            if (f4 > (float)mTouchSlop && f4 > f5 && onMoveAllowDrag(motionevent, f2))
            {
                setDrawerState(2);
                mIsDragging = true;
                float f3;
                if (f1 - mInitialMotionX > 0.0F)
                {
                    f1 = mInitialMotionX + (float)mTouchSlop;
                } else
                {
                    f1 = mInitialMotionX - (float)mTouchSlop;
                }
                mLastMotionX = f1;
            }
        }
        if (mIsDragging)
        {
            startLayerTranslation();
            f1 = motionevent.getX();
            f3 = mLastMotionX;
            mLastMotionX = f1;
            onMoveEvent(f1 - f3);
        }
        continue; /* Loop/switch isn't completed */
_L3:
        onUpEvent(motionevent);
        if (true) goto _L1; else goto _L5
_L5:
    }
}
