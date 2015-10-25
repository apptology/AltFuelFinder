// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.menudrawer;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;

// Referenced classes of package net.simonvt.menudrawer:
//            MenuDrawer, PeekInterpolator, Scroller, BuildLayerFrameLayout

public abstract class DraggableDrawer extends MenuDrawer
{

    private static final int CLOSE_ENOUGH = 3;
    private static final long DEFAULT_PEEK_DELAY = 10000L;
    private static final long DEFAULT_PEEK_START_DELAY = 5000L;
    protected static final Interpolator INDICATOR_INTERPOLATOR = new AccelerateInterpolator();
    protected static final int MAX_MENU_OVERLAY_ALPHA = 185;
    protected static final int PEEK_DURATION = 5000;
    private static final Interpolator PEEK_INTERPOLATOR = new PeekInterpolator();
    private static final String STATE_MENU_VISIBLE = "net.simonvt.menudrawer.MenuDrawer.menuVisible";
    protected int mCloseEnough;
    private final Runnable mDragRunnable;
    protected float mInitialMotionX;
    protected float mInitialMotionY;
    protected boolean mIsDragging;
    protected float mLastMotionX;
    protected float mLastMotionY;
    private boolean mLayerTypeHardware;
    protected int mMaxVelocity;
    protected boolean mOffsetMenu;
    protected float mOffsetPixels;
    protected long mPeekDelay;
    protected final Runnable mPeekRunnable;
    protected Scroller mPeekScroller;
    private Runnable mPeekStartRunnable;
    private Scroller mScroller;
    protected int mTouchSlop;
    protected VelocityTracker mVelocityTracker;

    DraggableDrawer(Activity activity, int i)
    {
        super(activity, i);
        mPeekRunnable = new Runnable() {

            final DraggableDrawer this$0;

            public void run()
            {
                peekDrawerInvalidate();
            }

            
            {
                this$0 = DraggableDrawer.this;
                super();
            }
        };
        mDragRunnable = new Runnable() {

            final DraggableDrawer this$0;

            public void run()
            {
                postAnimationInvalidate();
            }

            
            {
                this$0 = DraggableDrawer.this;
                super();
            }
        };
        mLastMotionX = -1F;
        mLastMotionY = -1F;
        mOffsetMenu = true;
    }

    public DraggableDrawer(Context context)
    {
        super(context);
        mPeekRunnable = new _cls1();
        mDragRunnable = new _cls2();
        mLastMotionX = -1F;
        mLastMotionY = -1F;
        mOffsetMenu = true;
    }

    public DraggableDrawer(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mPeekRunnable = new _cls1();
        mDragRunnable = new _cls2();
        mLastMotionX = -1F;
        mLastMotionY = -1F;
        mOffsetMenu = true;
    }

    public DraggableDrawer(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mPeekRunnable = new _cls1();
        mDragRunnable = new _cls2();
        mLastMotionX = -1F;
        mLastMotionY = -1F;
        mOffsetMenu = true;
    }

    private void completeAnimation()
    {
        mScroller.abortAnimation();
        int i = mScroller.getFinalX();
        setOffsetPixels(i);
        if (i == 0)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        setDrawerState(i);
        stopLayerTranslation();
    }

    private void completePeek()
    {
        mPeekScroller.abortAnimation();
        setOffsetPixels(0.0F);
        setDrawerState(0);
        stopLayerTranslation();
    }

    private void peekDrawerInvalidate()
    {
        if (mPeekScroller.computeScrollOffset())
        {
            int i = (int)mOffsetPixels;
            int j = mPeekScroller.getCurrX();
            if (j != i)
            {
                setOffsetPixels(j);
            }
            if (!mPeekScroller.isFinished())
            {
                postOnAnimation(mPeekRunnable);
                return;
            }
            if (mPeekDelay > 0L)
            {
                mPeekStartRunnable = new Runnable() {

                    final DraggableDrawer this$0;

                    public void run()
                    {
                        startPeek();
                    }

            
            {
                this$0 = DraggableDrawer.this;
                super();
            }
                };
                postDelayed(mPeekStartRunnable, mPeekDelay);
            }
        }
        completePeek();
    }

    private void postAnimationInvalidate()
    {
        if (mScroller.computeScrollOffset())
        {
            int i = (int)mOffsetPixels;
            int j = mScroller.getCurrX();
            if (j != i)
            {
                setOffsetPixels(j);
            }
            if (j != mScroller.getFinalX())
            {
                postOnAnimation(mDragRunnable);
                return;
            }
        }
        completeAnimation();
    }

    private void stopLayerTranslation()
    {
        if (mLayerTypeHardware)
        {
            mLayerTypeHardware = false;
            mContentContainer.setLayerType(0, null);
            mMenuContainer.setLayerType(0, null);
        }
    }

    private int supportGetTranslationX(View view)
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            return (int)view.getTranslationX();
        } else
        {
            return 0;
        }
    }

    private int supportGetTranslationY(View view)
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            return (int)view.getTranslationY();
        } else
        {
            return 0;
        }
    }

    protected void animateOffsetTo(int i, int j, boolean flag)
    {
        boolean flag1 = false;
        endDrag();
        endPeek();
        int k = (int)mOffsetPixels;
        int l = i - k;
        if (l == 0 || !flag)
        {
            setOffsetPixels(i);
            if (i == 0)
            {
                i = ((flag1) ? 1 : 0);
            } else
            {
                i = 8;
            }
            setDrawerState(i);
            stopLayerTranslation();
            return;
        }
        i = Math.abs(j);
        if (i > 0)
        {
            i = Math.round(1000F * Math.abs((float)l / (float)i)) * 4;
        } else
        {
            i = (int)(600F * Math.abs((float)l / (float)mMenuSize));
        }
        i = Math.min(i, mMaxAnimationDuration);
        if (l > 0)
        {
            setDrawerState(4);
            mScroller.startScroll(k, 0, l, 0, i);
        } else
        {
            setDrawerState(1);
            mScroller.startScroll(k, 0, l, 0, i);
        }
        startLayerTranslation();
        postAnimationInvalidate();
    }

    protected boolean canChildScrollHorizontally(View view, boolean flag, int i, int j, int k)
    {
        if (view instanceof ViewGroup)
        {
            ViewGroup viewgroup = (ViewGroup)view;
            for (int l = viewgroup.getChildCount() - 1; l >= 0; l--)
            {
                View view1 = viewgroup.getChildAt(l);
                int i1 = view1.getLeft() + supportGetTranslationX(view1);
                int j1 = view1.getRight();
                int k1 = supportGetTranslationX(view1);
                int l1 = view1.getTop() + supportGetTranslationY(view1);
                int i2 = view1.getBottom();
                int j2 = supportGetTranslationY(view1);
                if (j >= i1 && j < j1 + k1 && k >= l1 && k < i2 + j2 && canChildScrollHorizontally(view1, true, i, j - i1, k - l1))
                {
                    return true;
                }
            }

        }
        return flag && mOnInterceptMoveEventListener.isViewDraggable(view, i, j, k);
    }

    protected boolean canChildScrollVertically(View view, boolean flag, int i, int j, int k)
    {
        if (view instanceof ViewGroup)
        {
            ViewGroup viewgroup = (ViewGroup)view;
            for (int l = viewgroup.getChildCount() - 1; l >= 0; l--)
            {
                View view1 = viewgroup.getChildAt(l);
                int i1 = view1.getLeft() + supportGetTranslationX(view1);
                int j1 = view1.getRight();
                int k1 = supportGetTranslationX(view1);
                int l1 = view1.getTop() + supportGetTranslationY(view1);
                int i2 = view1.getBottom();
                int j2 = supportGetTranslationY(view1);
                if (j >= i1 && j < j1 + k1 && k >= l1 && k < i2 + j2 && canChildScrollVertically(view1, true, i, j - i1, k - l1))
                {
                    return true;
                }
            }

        }
        return flag && mOnInterceptMoveEventListener.isViewDraggable(view, i, j, k);
    }

    protected void dispatchDraw(Canvas canvas)
    {
        super.dispatchDraw(canvas);
        int i = (int)mOffsetPixels;
        if (i != 0)
        {
            drawMenuOverlay(canvas, i);
        }
        if (mDropShadowEnabled)
        {
            drawDropShadow(canvas, i);
        }
        if (mActiveIndicator != null)
        {
            drawIndicator(canvas, i);
        }
    }

    protected abstract void drawDropShadow(Canvas canvas, int i);

    protected abstract void drawIndicator(Canvas canvas, int i);

    protected abstract void drawMenuOverlay(Canvas canvas, int i);

    protected void endDrag()
    {
        mIsDragging = false;
        if (mVelocityTracker != null)
        {
            mVelocityTracker.recycle();
            mVelocityTracker = null;
        }
    }

    protected void endPeek()
    {
        removeCallbacks(mPeekStartRunnable);
        removeCallbacks(mPeekRunnable);
        stopLayerTranslation();
    }

    public boolean getOffsetMenuEnabled()
    {
        return mOffsetMenu;
    }

    public int getTouchBezelSize()
    {
        return mTouchBezelSize;
    }

    public int getTouchMode()
    {
        return mTouchMode;
    }

    protected void initDrawer(Context context, AttributeSet attributeset, int i)
    {
        super.initDrawer(context, attributeset, i);
        attributeset = ViewConfiguration.get(context);
        mTouchSlop = attributeset.getScaledTouchSlop();
        mMaxVelocity = attributeset.getScaledMaximumFlingVelocity();
        mScroller = new Scroller(context, MenuDrawer.SMOOTH_INTERPOLATOR);
        mPeekScroller = new Scroller(context, PEEK_INTERPOLATOR);
        mCloseEnough = dpToPx(3);
    }

    protected abstract void initPeekScroller();

    protected boolean isCloseEnough()
    {
        return Math.abs(mOffsetPixels) <= (float)mCloseEnough;
    }

    protected abstract boolean isContentTouch(MotionEvent motionevent);

    public boolean isMenuVisible()
    {
        return mMenuVisible;
    }

    protected abstract boolean onDownAllowDrag(MotionEvent motionevent);

    protected abstract boolean onMoveAllowDrag(MotionEvent motionevent, float f);

    protected abstract void onMoveEvent(float f);

    protected abstract void onOffsetPixelsChanged(int i);

    protected abstract void onUpEvent(MotionEvent motionevent);

    public void peekDrawer()
    {
        peekDrawer(5000L, 10000L);
    }

    public void peekDrawer(long l)
    {
        peekDrawer(5000L, l);
    }

    public void peekDrawer(long l, long l1)
    {
        if (l < 0L)
        {
            throw new IllegalArgumentException("startDelay must be zero or larger.");
        }
        if (l1 < 0L)
        {
            throw new IllegalArgumentException("delay must be zero or larger");
        } else
        {
            removeCallbacks(mPeekRunnable);
            removeCallbacks(mPeekStartRunnable);
            mPeekDelay = l1;
            mPeekStartRunnable = new Runnable() {

                final DraggableDrawer this$0;

                public void run()
                {
                    startPeek();
                }

            
            {
                this$0 = DraggableDrawer.this;
                super();
            }
            };
            postDelayed(mPeekStartRunnable, l);
            return;
        }
    }

    public void restoreState(Parcelable parcelable)
    {
        int i = 0;
        super.restoreState(parcelable);
        boolean flag = ((Bundle)parcelable).getBoolean("net.simonvt.menudrawer.MenuDrawer.menuVisible");
        if (flag)
        {
            openMenu(false);
        } else
        {
            setOffsetPixels(0.0F);
        }
        if (flag)
        {
            i = 8;
        }
        mDrawerState = i;
    }

    void saveState(Bundle bundle)
    {
        boolean flag;
        if (mDrawerState == 8 || mDrawerState == 4)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        bundle.putBoolean("net.simonvt.menudrawer.MenuDrawer.menuVisible", flag);
    }

    public void setHardwareLayerEnabled(boolean flag)
    {
        if (flag != mHardwareLayersEnabled)
        {
            mHardwareLayersEnabled = flag;
            mMenuContainer.setHardwareLayersEnabled(flag);
            mContentContainer.setHardwareLayersEnabled(flag);
            stopLayerTranslation();
        }
    }

    public void setMenuSize(int i)
    {
        mMenuSize = i;
        mMenuSizeSet = true;
        if (mDrawerState == 8 || mDrawerState == 4)
        {
            setOffsetPixels(mMenuSize);
        }
        requestLayout();
        invalidate();
    }

    public void setOffsetMenuEnabled(boolean flag)
    {
        if (flag != mOffsetMenu)
        {
            mOffsetMenu = flag;
            requestLayout();
            invalidate();
        }
    }

    protected void setOffsetPixels(float f)
    {
        int i = (int)mOffsetPixels;
        int j = (int)f;
        mOffsetPixels = f;
        if (j != i)
        {
            onOffsetPixelsChanged(j);
            boolean flag;
            if (j != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            mMenuVisible = flag;
        }
    }

    public void setTouchBezelSize(int i)
    {
        mTouchBezelSize = i;
    }

    public void setTouchMode(int i)
    {
        if (mTouchMode != i)
        {
            mTouchMode = i;
            updateTouchAreaSize();
        }
    }

    protected void startLayerTranslation()
    {
        if (USE_TRANSLATIONS && mHardwareLayersEnabled && !mLayerTypeHardware)
        {
            mLayerTypeHardware = true;
            mContentContainer.setLayerType(2, null);
            mMenuContainer.setLayerType(2, null);
        }
    }

    protected void startPeek()
    {
        initPeekScroller();
        startLayerTranslation();
        peekDrawerInvalidate();
    }

    protected void stopAnimation()
    {
        removeCallbacks(mDragRunnable);
        mScroller.abortAnimation();
        stopLayerTranslation();
    }

    public void toggleMenu(boolean flag)
    {
        if (mDrawerState == 8 || mDrawerState == 4)
        {
            closeMenu(flag);
        } else
        if (mDrawerState == 0 || mDrawerState == 1)
        {
            openMenu(flag);
            return;
        }
    }

    protected void updateTouchAreaSize()
    {
        if (mTouchMode == 1)
        {
            mTouchSize = mTouchBezelSize;
            return;
        }
        if (mTouchMode == 2)
        {
            mTouchSize = getMeasuredWidth();
            return;
        } else
        {
            mTouchSize = 0;
            return;
        }
    }



}
