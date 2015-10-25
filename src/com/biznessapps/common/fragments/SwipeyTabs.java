// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.fragments;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

// Referenced classes of package com.biznessapps.common.fragments:
//            SwipeyTabsAdapter

public class SwipeyTabs extends ViewGroup
    implements android.support.v4.view.ViewPager.OnPageChangeListener
{

    protected final String TAG;
    private SwipeyTabsAdapter mAdapter;
    private int mBottomBarColor;
    private int mBottomBarHeight;
    private Paint mCachedTabPaint;
    private int mCurrentPos;
    private int mCurrentTabPos[];
    private int mFrontedTabPos[];
    private int mLeftTabPos[];
    private int mRightTabPos[];
    private int mTabIndicatorHeight;
    private int mTextColor;
    private int mWidth;

    public SwipeyTabs(Context context)
    {
        this(context, null);
    }

    public SwipeyTabs(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public SwipeyTabs(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        TAG = "SwipeyTabs";
        mCurrentPos = -1;
        mBottomBarHeight = 2;
        mTabIndicatorHeight = 3;
        mBottomBarColor = 0xff96aa39;
        mTextColor = 0xff949494;
        mWidth = -1;
        init();
    }

    private void calculateTabPosition(int i, int ai[])
    {
        if (mAdapter != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int k = mAdapter.getCount();
        if (i < 0 || i >= k)
        {
            break; /* Loop/switch isn't completed */
        }
        int l = getMeasuredWidth();
        View view = getChildAt(i);
        ai[i] = l / 2 - view.getMeasuredWidth() / 2;
        int j = i - 1;
        while (j >= 0) 
        {
            TextView textview = (TextView)getChildAt(j);
            if (j == i - 1)
            {
                ai[j] = 0 - textview.getPaddingLeft();
            } else
            {
                ai[j] = 0 - textview.getMeasuredWidth() - l;
            }
            ai[j] = Math.min(ai[j], ai[j + 1] - textview.getMeasuredWidth());
            j--;
        }
        j = i + 1;
        while (j < k) 
        {
            TextView textview1 = (TextView)getChildAt(j);
            if (j == i + 1)
            {
                ai[j] = (l - textview1.getMeasuredWidth()) + textview1.getPaddingRight();
            } else
            {
                ai[j] = l * 2;
            }
            textview1 = (TextView)getChildAt(j - 1);
            ai[j] = Math.max(ai[j], ai[j - 1] + textview1.getMeasuredWidth());
            j++;
        }
        if (true) goto _L1; else goto _L3
_L3:
        i = 0;
        while (i < ai.length) 
        {
            ai[i] = -1;
            i++;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private void init()
    {
        setHorizontalFadingEdgeEnabled(true);
        setFadingEdgeLength((int)(getResources().getDisplayMetrics().density * 35F + 0.5F));
        setWillNotDraw(false);
        mCachedTabPaint = new Paint();
        mCachedTabPaint.setColor(mBottomBarColor);
    }

    private int interpolateColor(int i, int j, float f)
    {
        float f5 = (float)Color.alpha(i) / 255F;
        float f6 = (float)Color.red(i) / 255F;
        float f3 = (float)Color.green(i) / 255F;
        float f1 = (float)Color.blue(i) / 255F;
        float f8 = (float)Color.alpha(j) / 255F;
        float f7 = (float)Color.red(j) / 255F;
        float f4 = (float)Color.green(j) / 255F;
        float f2 = (float)Color.blue(j) / 255F;
        f5 = Math.max(Math.min(f5 + (f8 - f5) * f, 1.0F), 0.0F);
        f6 = Math.max(Math.min(f6 + (f7 - f6) * f, 1.0F), 0.0F);
        f3 = Math.max(Math.min(f3 + (f4 - f3) * f, 1.0F), 0.0F);
        f = Math.max(Math.min(f1 + (f2 - f1) * f, 1.0F), 0.0F);
        return Color.argb((int)(255F * f5), (int)(255F * f6), (int)(255F * f3), (int)(255F * f));
    }

    private void measureTabs(int i, int j)
    {
        if (mAdapter != null)
        {
            j = (int)((double)android.view.View.MeasureSpec.getSize(i) * 0.59999999999999998D);
            int k = mAdapter.getCount();
            i = 0;
            while (i < k) 
            {
                android.view.ViewGroup.LayoutParams layoutparams = getChildAt(i).getLayoutParams();
                int l = android.view.View.MeasureSpec.makeMeasureSpec(j, 0x80000000);
                int i1 = android.view.View.MeasureSpec.makeMeasureSpec(layoutparams.height, 0x40000000);
                getChildAt(i).measure(l, i1);
                i++;
            }
        }
    }

    private void updateEllipsize()
    {
        if (mAdapter != null)
        {
            int j = mAdapter.getCount();
            int i = 0;
            while (i < j) 
            {
                TextView textview = (TextView)getChildAt(i);
                if (i < mCurrentPos)
                {
                    textview.setEllipsize(null);
                    textview.setGravity(21);
                } else
                if (i == mCurrentPos)
                {
                    textview.setEllipsize(android.text.TextUtils.TruncateAt.END);
                    textview.setGravity(19);
                } else
                if (i > mCurrentPos)
                {
                    textview.setEllipsize(null);
                    textview.setGravity(19);
                }
                i++;
            }
        }
    }

    private void updateTabPositions(boolean flag)
    {
        if (mAdapter != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        calculateTabPosition(mCurrentPos, mFrontedTabPos);
        calculateTabPosition(mCurrentPos + 1, mLeftTabPos);
        calculateTabPosition(mCurrentPos - 1, mRightTabPos);
        updateEllipsize();
        if (flag)
        {
            int j = mAdapter.getCount();
            int i = 0;
            while (i < j) 
            {
                mCurrentTabPos[i] = mFrontedTabPos[i];
                i++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    protected void dispatchDraw(Canvas canvas)
    {
        if (mCurrentPos != -1)
        {
            int i = getHeight() - getPaddingBottom() - mBottomBarHeight - mTabIndicatorHeight;
            View view = getChildAt(mCurrentPos);
            int j = mCurrentTabPos[mCurrentPos];
            int k = view.getMeasuredWidth();
            int l = view.getMeasuredWidth() / 2;
            int i1 = getWidth() / 2;
            int j1 = i1 / 3;
            float f = 1.0F - Math.min(Math.abs((float)((j + k) - l - i1) / (float)j1), 1.0F);
            mCachedTabPaint.setAlpha((int)(255F * f));
            canvas.drawRect(mCurrentTabPos[mCurrentPos], i, mCurrentTabPos[mCurrentPos] + view.getMeasuredWidth(), mTabIndicatorHeight + i, mCachedTabPaint);
            j = mAdapter.getCount();
            i = 0;
            while (i < j) 
            {
                TextView textview = (TextView)getChildAt(i);
                if (mCurrentPos == i)
                {
                    textview.setTextColor(interpolateColor(mBottomBarColor, mTextColor, 1.0F - f));
                } else
                {
                    textview.setTextColor(mTextColor);
                }
                i++;
            }
        }
        super.dispatchDraw(canvas);
    }

    public void draw(Canvas canvas)
    {
        super.draw(canvas);
        int i = getHeight() - getPaddingBottom() - mBottomBarHeight;
        mCachedTabPaint.setAlpha(255);
        canvas.drawRect(0.0F, i, getWidth(), mBottomBarHeight + i, mCachedTabPaint);
    }

    protected float getLeftFadingEdgeStrength()
    {
        return 1.0F;
    }

    protected float getRightFadingEdgeStrength()
    {
        return 1.0F;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        if (mAdapter != null)
        {
            j = mAdapter.getCount();
            i = 0;
            while (i < j) 
            {
                View view = getChildAt(i);
                view.layout(mCurrentTabPos[i], getPaddingTop(), mCurrentTabPos[i] + view.getMeasuredWidth(), getPaddingTop() + view.getMeasuredHeight());
                i++;
            }
        }
    }

    protected void onMeasure(int i, int j)
    {
        int l = android.view.View.MeasureSpec.getSize(i);
        measureTabs(i, j);
        int k = 0;
        View view = getChildAt(0);
        if (view != null)
        {
            k = view.getMeasuredHeight();
        }
        setMeasuredDimension(resolveSize(getPaddingLeft() + l + getPaddingRight(), i), resolveSize(mBottomBarHeight + k + getPaddingTop() + getPaddingBottom(), j));
        if (mWidth != l)
        {
            mWidth = l;
            updateTabPositions(true);
        }
    }

    public void onPageScrollStateChanged(int i)
    {
    }

    public void onPageScrolled(int i, float f, int j)
    {
        byte byte0;
        if (mAdapter == null)
        {
            return;
        }
        int k = mAdapter.getCount();
        float f2 = 0.0F;
        boolean flag = false;
        float f1;
        if (j != 0 && mCurrentPos == i)
        {
            byte0 = -1;
            f1 = f;
            break MISSING_BLOCK_LABEL_43;
        } else
        {
            byte0 = flag;
            f1 = f2;
            if (j != 0)
            {
                byte0 = flag;
                f1 = f2;
                if (mCurrentPos != i)
                {
                    byte0 = 1;
                    f1 = 1.0F - f;
                }
            }
            continue;
        }
        do
        {
            i = 0;
            while (i < k) 
            {
                f2 = mFrontedTabPos[i];
                if (byte0 < 0)
                {
                    f = mLeftTabPos[i];
                } else
                if (byte0 > 0)
                {
                    f = mRightTabPos[i];
                } else
                {
                    f = mFrontedTabPos[i];
                }
                j = (int)((float)(int)((f - f2) * f1 + 0.5F) + f2);
                mCurrentTabPos[i] = j;
                i++;
            }
            requestLayout();
            invalidate();
            return;
        } while (true);
    }

    public void onPageSelected(int i)
    {
        mCurrentPos = i;
        updateTabPositions(false);
    }

    public void setAdapter(SwipeyTabsAdapter swipeytabsadapter)
    {
        if (mAdapter == null);
        mAdapter = swipeytabsadapter;
        mCurrentPos = -1;
        mFrontedTabPos = null;
        mLeftTabPos = null;
        mRightTabPos = null;
        mCurrentTabPos = null;
        removeAllViews();
        if (mAdapter != null)
        {
            int j = mAdapter.getCount();
            for (int i = 0; i < j; i++) { }
            mCurrentPos = 0;
            mFrontedTabPos = new int[j];
            mLeftTabPos = new int[j];
            mRightTabPos = new int[j];
            mCurrentTabPos = new int[j];
            mWidth = -1;
            requestLayout();
        }
    }
}
