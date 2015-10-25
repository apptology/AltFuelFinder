// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.menudrawer;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.animation.Interpolator;

// Referenced classes of package net.simonvt.menudrawer:
//            SmoothInterpolator, FloatScroller, Position, BuildLayerFrameLayout, 
//            LeftStaticDrawer, RightStaticDrawer, TopStaticDrawer, BottomStaticDrawer, 
//            LeftDrawer, RightDrawer, TopDrawer, BottomDrawer, 
//            NoClickThroughFrameLayout, ColorDrawable

public abstract class MenuDrawer extends ViewGroup
{
    public static interface OnDrawerStateChangeListener
    {

        public abstract void onDrawerStateChange(int i, int j);
    }

    public static interface OnInterceptMoveEventListener
    {

        public abstract boolean isViewDraggable(View view, int i, int j, int k);
    }

    static class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public SavedState createFromParcel(Parcel parcel)
            {
                return new SavedState(parcel);
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

            public SavedState[] newArray(int i)
            {
                return new SavedState[i];
            }

        };
        Bundle mState;

        public void writeToParcel(Parcel parcel, int i)
        {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(mState);
        }


        public SavedState(Parcel parcel)
        {
            super(parcel);
            mState = parcel.readBundle();
        }

        public SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }


    protected static final int ANIMATION_DELAY = 16;
    private static final boolean DEBUG = false;
    private static final int DEFAULT_ANIMATION_DURATION = 600;
    private static final int DEFAULT_DRAG_BEZEL_DP = 24;
    private static final int DEFAULT_DROP_SHADOW_DP = 6;
    static final int INDICATOR_ANIM_DURATION = 800;
    public static final int MENU_DRAG_CONTENT = 0;
    public static final int MENU_DRAG_WINDOW = 1;
    protected static final Interpolator SMOOTH_INTERPOLATOR = new SmoothInterpolator();
    public static final int STATE_CLOSED = 0;
    public static final int STATE_CLOSING = 1;
    public static final int STATE_DRAGGING = 2;
    public static final int STATE_OPEN = 8;
    public static final int STATE_OPENING = 4;
    private static final String TAG = "MenuDrawer";
    public static final int TOUCH_MODE_BEZEL = 1;
    public static final int TOUCH_MODE_FULLSCREEN = 2;
    public static final int TOUCH_MODE_NONE = 0;
    static final boolean USE_TRANSLATIONS;
    protected Bitmap mActiveIndicator;
    protected int mActivePosition;
    protected final Rect mActiveRect;
    protected View mActiveView;
    private Activity mActivity;
    private boolean mAllowIndicatorAnimation;
    protected BuildLayerFrameLayout mContentContainer;
    private int mDragMode;
    protected int mDrawerState;
    protected Drawable mDropShadowDrawable;
    protected boolean mDropShadowEnabled;
    protected int mDropShadowSize;
    protected boolean mHardwareLayersEnabled;
    protected boolean mIndicatorAnimating;
    protected float mIndicatorOffset;
    private Runnable mIndicatorRunnable = new Runnable() {

        final MenuDrawer this$0;

        public void run()
        {
            animateIndicatorInvalidate();
        }

            
            {
                this$0 = MenuDrawer.this;
                super();
            }
    };
    private FloatScroller mIndicatorScroller;
    protected int mIndicatorStartPos;
    protected int mMaxAnimationDuration;
    protected BuildLayerFrameLayout mMenuContainer;
    protected Drawable mMenuOverlay;
    protected int mMenuSize;
    protected boolean mMenuSizeSet;
    private View mMenuView;
    protected boolean mMenuVisible;
    private OnDrawerStateChangeListener mOnDrawerStateChangeListener;
    protected OnInterceptMoveEventListener mOnInterceptMoveEventListener;
    private android.view.ViewTreeObserver.OnScrollChangedListener mScrollListener = new android.view.ViewTreeObserver.OnScrollChangedListener() {

        final MenuDrawer this$0;

        public void onScrollChanged()
        {
            if (mActiveView != null && isViewDescendant(mActiveView))
            {
                mActiveView.getDrawingRect(mTempRect);
                offsetDescendantRectToMyCoords(mActiveView, mTempRect);
                if (mTempRect.left != mActiveRect.left || mTempRect.top != mActiveRect.top || mTempRect.right != mActiveRect.right || mTempRect.bottom != mActiveRect.bottom)
                {
                    invalidate();
                }
            }
        }

            
            {
                this$0 = MenuDrawer.this;
                super();
            }
    };
    protected Bundle mState;
    private final Rect mTempRect;
    protected int mTouchBezelSize;
    protected int mTouchMode;
    protected int mTouchSize;

    MenuDrawer(Activity activity, int i)
    {
        this(((Context) (activity)));
        mActivity = activity;
        mDragMode = i;
    }

    public MenuDrawer(Context context)
    {
        this(context, ((AttributeSet) (null)));
    }

    public MenuDrawer(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, com.biznessapps.layout.R.attr.menuDrawerStyle);
    }

    public MenuDrawer(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mActiveRect = new Rect();
        mTempRect = new Rect();
        mDragMode = 0;
        mDrawerState = 0;
        mTouchMode = 1;
        mHardwareLayersEnabled = true;
        mMaxAnimationDuration = 600;
        initDrawer(context, attributeset, i);
    }

    private void animateIndicatorInvalidate()
    {
        if (mIndicatorScroller.computeScrollOffset())
        {
            mIndicatorOffset = mIndicatorScroller.getCurr();
            invalidate();
            if (!mIndicatorScroller.isFinished())
            {
                postOnAnimation(mIndicatorRunnable);
                return;
            }
        }
        completeAnimatingIndicator();
    }

    public static MenuDrawer attach(Activity activity)
    {
        return attach(activity, 0);
    }

    public static MenuDrawer attach(Activity activity, int i)
    {
        return attach(activity, i, Position.LEFT);
    }

    public static MenuDrawer attach(Activity activity, int i, Position position)
    {
        return attach(activity, i, position, false);
    }

    public static MenuDrawer attach(Activity activity, int i, Position position, boolean flag)
    {
        position = createMenuDrawer(activity, i, position, flag);
        position.setId(com.biznessapps.layout.R.id.md__drawer);
        switch (i)
        {
        default:
            throw new RuntimeException((new StringBuilder()).append("Unknown menu mode: ").append(i).toString());

        case 0: // '\0'
            attachToContent(activity, position);
            return position;

        case 1: // '\001'
            attachToDecor(activity, position);
            break;
        }
        return position;
    }

    public static MenuDrawer attach(Activity activity, Position position)
    {
        return attach(activity, 0, position);
    }

    private static void attachToContent(Activity activity, MenuDrawer menudrawer)
    {
        activity = (ViewGroup)activity.findViewById(0x1020002);
        activity.removeAllViews();
        activity.addView(menudrawer, -1, -1);
    }

    private static void attachToDecor(Activity activity, MenuDrawer menudrawer)
    {
        activity = (ViewGroup)activity.getWindow().getDecorView();
        ViewGroup viewgroup = (ViewGroup)activity.getChildAt(0);
        activity.removeAllViews();
        activity.addView(menudrawer, -1, -1);
        menudrawer.mContentContainer.addView(viewgroup, viewgroup.getLayoutParams());
    }

    private void completeAnimatingIndicator()
    {
        mIndicatorOffset = 1.0F;
        mIndicatorAnimating = false;
        invalidate();
    }

    private static MenuDrawer createMenuDrawer(Activity activity, int i, Position position, boolean flag)
    {
        static class _cls3
        {

            static final int $SwitchMap$net$simonvt$menudrawer$Position[];

            static 
            {
                $SwitchMap$net$simonvt$menudrawer$Position = new int[Position.values().length];
                try
                {
                    $SwitchMap$net$simonvt$menudrawer$Position[Position.LEFT.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$net$simonvt$menudrawer$Position[Position.RIGHT.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$net$simonvt$menudrawer$Position[Position.TOP.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$net$simonvt$menudrawer$Position[Position.BOTTOM.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        if (flag)
        {
            switch (_cls3..SwitchMap.net.simonvt.menudrawer.Position[position.ordinal()])
            {
            default:
                throw new IllegalArgumentException("position must be one of LEFT, TOP, RIGHT or BOTTOM");

            case 1: // '\001'
                return new LeftStaticDrawer(activity, i);

            case 2: // '\002'
                return new RightStaticDrawer(activity, i);

            case 3: // '\003'
                return new TopStaticDrawer(activity, i);

            case 4: // '\004'
                return new BottomStaticDrawer(activity, i);
            }
        }
        switch (_cls3..SwitchMap.net.simonvt.menudrawer.Position[position.ordinal()])
        {
        default:
            throw new IllegalArgumentException("position must be one of LEFT, TOP, RIGHT or BOTTOM");

        case 1: // '\001'
            return new LeftDrawer(activity, i);

        case 2: // '\002'
            return new RightDrawer(activity, i);

        case 3: // '\003'
            return new TopDrawer(activity, i);

        case 4: // '\004'
            return new BottomDrawer(activity, i);
        }
    }

    private void startAnimatingIndicator()
    {
        mIndicatorStartPos = getIndicatorStartPos();
        mIndicatorAnimating = true;
        mIndicatorScroller.startScroll(0.0F, 1.0F, 800);
        animateIndicatorInvalidate();
    }

    public void addView(View view, int i, android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (mMenuContainer.getChildCount() == 0)
        {
            mMenuContainer.addView(view, i, layoutparams);
            return;
        }
        if (mContentContainer.getChildCount() == 0)
        {
            mContentContainer.addView(view, i, layoutparams);
            return;
        } else
        {
            throw new IllegalStateException("MenuDrawer can only hold two child views");
        }
    }

    public void closeMenu()
    {
        closeMenu(true);
    }

    public abstract void closeMenu(boolean flag);

    protected int dpToPx(int i)
    {
        return (int)(getResources().getDisplayMetrics().density * (float)i + 0.5F);
    }

    protected boolean fitSystemWindows(Rect rect)
    {
        if (mDragMode == 1)
        {
            mMenuContainer.setPadding(0, rect.top, 0, 0);
        }
        return super.fitSystemWindows(rect);
    }

    public boolean getAllowIndicatorAnimation()
    {
        return mAllowIndicatorAnimation;
    }

    public ViewGroup getContentContainer()
    {
        if (mDragMode == 0)
        {
            return mContentContainer;
        } else
        {
            return (ViewGroup)findViewById(0x1020002);
        }
    }

    public int getDrawerState()
    {
        return mDrawerState;
    }

    public Drawable getDropShadow()
    {
        return mDropShadowDrawable;
    }

    protected abstract int getIndicatorStartPos();

    public ViewGroup getMenuContainer()
    {
        return mMenuContainer;
    }

    public int getMenuSize()
    {
        return mMenuSize;
    }

    public View getMenuView()
    {
        return mMenuView;
    }

    public abstract boolean getOffsetMenuEnabled();

    public abstract int getTouchBezelSize();

    public abstract int getTouchMode();

    protected void initDrawer(Context context, AttributeSet attributeset, int i)
    {
        setWillNotDraw(false);
        setFocusable(false);
        attributeset = context.obtainStyledAttributes(attributeset, com.biznessapps.layout.R.styleable.MenuDrawer, com.biznessapps.layout.R.attr.menuDrawerStyle, com.biznessapps.layout.R.style.Widget_MenuDrawer);
        Drawable drawable = attributeset.getDrawable(0);
        Drawable drawable1 = attributeset.getDrawable(1);
        mMenuSize = attributeset.getDimensionPixelSize(2, -1);
        boolean flag;
        if (mMenuSize != -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mMenuSizeSet = flag;
        i = attributeset.getResourceId(3, 0);
        if (i != 0)
        {
            mActiveIndicator = BitmapFactory.decodeResource(getResources(), i);
        }
        mDropShadowEnabled = attributeset.getBoolean(4, true);
        mDropShadowDrawable = attributeset.getDrawable(7);
        if (mDropShadowDrawable == null)
        {
            setDropShadowColor(attributeset.getColor(6, 0xff000000));
        }
        mDropShadowSize = attributeset.getDimensionPixelSize(5, dpToPx(6));
        mTouchBezelSize = attributeset.getDimensionPixelSize(8, dpToPx(24));
        mAllowIndicatorAnimation = attributeset.getBoolean(9, false);
        mMaxAnimationDuration = attributeset.getInt(10, 600);
        attributeset.recycle();
        mMenuContainer = new BuildLayerFrameLayout(context);
        mMenuContainer.setId(com.biznessapps.layout.R.id.md__menu);
        mMenuContainer.setBackgroundDrawable(drawable1);
        super.addView(mMenuContainer, -1, new android.view.ViewGroup.LayoutParams(-1, -1));
        mContentContainer = new NoClickThroughFrameLayout(context);
        mContentContainer.setId(com.biznessapps.layout.R.id.md__content);
        mContentContainer.setBackgroundDrawable(drawable);
        super.addView(mContentContainer, -1, new android.view.ViewGroup.LayoutParams(-1, -1));
        mContentContainer.setClipChildren(false);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            mContentContainer.setLayerType(1, null);
        }
        mMenuOverlay = new ColorDrawable(0xff000000);
        mIndicatorScroller = new FloatScroller(SMOOTH_INTERPOLATOR);
    }

    public abstract boolean isMenuVisible();

    protected boolean isViewDescendant(View view)
    {
        for (view = view.getParent(); view != null; view = view.getParent())
        {
            if (view == this)
            {
                return true;
            }
        }

        return false;
    }

    protected void logDrawerState(int i)
    {
        switch (i)
        {
        case 3: // '\003'
        case 5: // '\005'
        case 6: // '\006'
        case 7: // '\007'
        default:
            Log.d("MenuDrawer", (new StringBuilder()).append("[DrawerState] Unknown: ").append(i).toString());
            return;

        case 0: // '\0'
            Log.d("MenuDrawer", "[DrawerState] STATE_CLOSED");
            return;

        case 1: // '\001'
            Log.d("MenuDrawer", "[DrawerState] STATE_CLOSING");
            return;

        case 2: // '\002'
            Log.d("MenuDrawer", "[DrawerState] STATE_DRAGGING");
            return;

        case 4: // '\004'
            Log.d("MenuDrawer", "[DrawerState] STATE_OPENING");
            return;

        case 8: // '\b'
            Log.d("MenuDrawer", "[DrawerState] STATE_OPEN");
            break;
        }
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnScrollChangedListener(mScrollListener);
    }

    protected void onDetachedFromWindow()
    {
        getViewTreeObserver().removeOnScrollChangedListener(mScrollListener);
        super.onDetachedFromWindow();
    }

    protected void onRestoreInstanceState(Parcelable parcelable)
    {
        parcelable = (SavedState)parcelable;
        super.onRestoreInstanceState(parcelable.getSuperState());
        restoreState(((SavedState) (parcelable)).mState);
    }

    protected Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        if (mState == null)
        {
            mState = new Bundle();
        }
        saveState(mState);
        savedstate.mState = mState;
        return savedstate;
    }

    public void openMenu()
    {
        openMenu(true);
    }

    public abstract void openMenu(boolean flag);

    public abstract void peekDrawer();

    public abstract void peekDrawer(long l);

    public abstract void peekDrawer(long l, long l1);

    public void postOnAnimation(Runnable runnable)
    {
        postDelayed(runnable, 16L);
    }

    public void restoreState(Parcelable parcelable)
    {
        mState = (Bundle)parcelable;
    }

    public final Parcelable saveState()
    {
        if (mState == null)
        {
            mState = new Bundle();
        }
        saveState(mState);
        return mState;
    }

    void saveState(Bundle bundle)
    {
    }

    public void setActiveView(View view)
    {
        setActiveView(view, 0);
    }

    public void setActiveView(View view, int i)
    {
        View view1 = mActiveView;
        mActiveView = view;
        mActivePosition = i;
        if (mAllowIndicatorAnimation && view1 != null)
        {
            startAnimatingIndicator();
        }
        invalidate();
    }

    public void setAllowIndicatorAnimation(boolean flag)
    {
        if (flag != mAllowIndicatorAnimation)
        {
            mAllowIndicatorAnimation = flag;
            completeAnimatingIndicator();
        }
    }

    public void setContentView(int i)
    {
        switch (mDragMode)
        {
        default:
            return;

        case 0: // '\0'
            mContentContainer.removeAllViews();
            LayoutInflater.from(getContext()).inflate(i, mContentContainer, true);
            return;

        case 1: // '\001'
            mActivity.setContentView(i);
            break;
        }
    }

    public void setContentView(View view)
    {
        setContentView(view, new android.view.ViewGroup.LayoutParams(-1, -1));
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        switch (mDragMode)
        {
        default:
            return;

        case 0: // '\0'
            mContentContainer.removeAllViews();
            mContentContainer.addView(view, layoutparams);
            return;

        case 1: // '\001'
            mActivity.setContentView(view, layoutparams);
            break;
        }
    }

    protected void setDrawerState(int i)
    {
        if (i != mDrawerState)
        {
            int j = mDrawerState;
            mDrawerState = i;
            if (mOnDrawerStateChangeListener != null)
            {
                mOnDrawerStateChangeListener.onDrawerStateChange(j, i);
            }
        }
    }

    public void setDropShadow(int i)
    {
        setDropShadow(getResources().getDrawable(i));
    }

    public void setDropShadow(Drawable drawable)
    {
        mDropShadowDrawable = drawable;
        invalidate();
    }

    public abstract void setDropShadowColor(int i);

    public void setDropShadowEnabled(boolean flag)
    {
        mDropShadowEnabled = flag;
        invalidate();
    }

    public void setDropShadowSize(int i)
    {
        mDropShadowSize = i;
        invalidate();
    }

    public abstract void setHardwareLayerEnabled(boolean flag);

    public void setMaxAnimationDuration(int i)
    {
        mMaxAnimationDuration = i;
    }

    public abstract void setMenuSize(int i);

    public void setMenuView(int i)
    {
        mMenuContainer.removeAllViews();
        mMenuView = LayoutInflater.from(getContext()).inflate(i, mMenuContainer, false);
        mMenuContainer.addView(mMenuView);
    }

    public void setMenuView(View view)
    {
        setMenuView(view, new android.view.ViewGroup.LayoutParams(-1, -1));
    }

    public void setMenuView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        mMenuView = view;
        mMenuContainer.removeAllViews();
        mMenuContainer.addView(view, layoutparams);
    }

    public abstract void setOffsetMenuEnabled(boolean flag);

    public void setOnDrawerStateChangeListener(OnDrawerStateChangeListener ondrawerstatechangelistener)
    {
        mOnDrawerStateChangeListener = ondrawerstatechangelistener;
    }

    public void setOnInterceptMoveEventListener(OnInterceptMoveEventListener oninterceptmoveeventlistener)
    {
        mOnInterceptMoveEventListener = oninterceptmoveeventlistener;
    }

    public abstract void setTouchBezelSize(int i);

    public abstract void setTouchMode(int i);

    public void toggleMenu()
    {
        toggleMenu(true);
    }

    public abstract void toggleMenu(boolean flag);

    static 
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 12)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        USE_TRANSLATIONS = flag;
    }


}
