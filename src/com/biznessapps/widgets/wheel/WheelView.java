// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.wheel;

import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.biznessapps.widgets.wheel:
//            ItemsCacher, ItemsRange, WheelViewAdapter, WheelScroller

public class WheelView extends View
{
    public static interface OnStateChangedListener
    {

        public abstract void onStateChanged(WheelView wheelview);
    }


    private static final int DEF_VISIBLE_ITEMS = 5;
    private static final int ITEM_OFFSET_PERCENT = 10;
    private static final int PADDING = 10;
    private static final int SHADOWS_COLORS[] = {
        0xff111111, 0xaaaaaa, 0xaaaaaa
    };
    private GradientDrawable bottomShadow;
    private Drawable centerDrawable;
    private List changingListeners;
    private int currentItem;
    private DataSetObserver dataObserver = new DataSetObserver() {

        final WheelView this$0;

        public void onChanged()
        {
            invalidateWheel(false);
        }

        public void onInvalidated()
        {
            invalidateWheel(true);
        }

            
            {
                this$0 = WheelView.this;
                super();
            }
    };
    private int firstItem;
    boolean isCyclic;
    private int itemHeight;
    private LinearLayout itemsLayout;
    private ItemsCacher recycle;
    private WheelScroller scroller;
    WheelScroller.ScrollingListener scrollingListener = new WheelScroller.ScrollingListener() {

        final WheelView this$0;

        public void onFinished()
        {
            scrollingOffset = 0;
            invalidate();
        }

        public void onJustify()
        {
            if (Math.abs(scrollingOffset) > 1)
            {
                scroller.scroll(scrollingOffset, 0);
            }
        }

        public void onScroll(int i)
        {
            doScroll(i);
            i = getHeight();
            if (scrollingOffset > i)
            {
                scrollingOffset = i;
                scroller.stopScrolling();
            } else
            if (scrollingOffset < -i)
            {
                scrollingOffset = -i;
                scroller.stopScrolling();
                return;
            }
        }

        public void onStarted()
        {
        }

            
            {
                this$0 = WheelView.this;
                super();
            }
    };
    private int scrollingOffset;
    private GradientDrawable topShadow;
    private WheelViewAdapter viewAdapter;
    private int visibleItems;

    public WheelView(Context context)
    {
        super(context);
        currentItem = 0;
        visibleItems = 5;
        itemHeight = 0;
        isCyclic = false;
        recycle = new ItemsCacher(this);
        changingListeners = new LinkedList();
        initData(context);
    }

    public WheelView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        currentItem = 0;
        visibleItems = 5;
        itemHeight = 0;
        isCyclic = false;
        recycle = new ItemsCacher(this);
        changingListeners = new LinkedList();
        initData(context);
    }

    public WheelView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        currentItem = 0;
        visibleItems = 5;
        itemHeight = 0;
        isCyclic = false;
        recycle = new ItemsCacher(this);
        changingListeners = new LinkedList();
        initData(context);
    }

    private boolean addViewItem(int i, boolean flag)
    {
        boolean flag1 = false;
        View view = getItemView(i);
        if (view != null)
        {
            if (flag)
            {
                itemsLayout.addView(view, 0);
            } else
            {
                itemsLayout.addView(view);
            }
            flag1 = true;
        }
        return flag1;
    }

    private void buildViewForMeasuring()
    {
        int j;
        if (itemsLayout != null)
        {
            recycle.recycleItems(itemsLayout, firstItem, new ItemsRange());
        } else
        {
            createItemsLayout();
        }
        j = visibleItems / 2;
        for (int i = currentItem + j; i >= currentItem - j; i--)
        {
            if (addViewItem(i, true))
            {
                firstItem = i;
            }
        }

    }

    private int calculateLayoutWidth(int i, int j)
    {
        int k;
        initResourcesIfNecessary();
        itemsLayout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-2, -2));
        itemsLayout.measure(android.view.View.MeasureSpec.makeMeasureSpec(i, 0), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
        k = itemsLayout.getMeasuredWidth();
        if (j != 0x40000000) goto _L2; else goto _L1
_L1:
        k = i;
_L4:
        itemsLayout.measure(android.view.View.MeasureSpec.makeMeasureSpec(k - 20, 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
        return k;
_L2:
        int l = Math.max(k + 20, getSuggestedMinimumWidth());
        k = l;
        if (j == 0x80000000)
        {
            k = l;
            if (i < l)
            {
                k = i;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void createItemsLayout()
    {
        if (itemsLayout == null)
        {
            itemsLayout = new LinearLayout(getContext());
            itemsLayout.setOrientation(1);
        }
    }

    private void doScroll(int i)
    {
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        scrollingOffset = scrollingOffset + i;
        j1 = getItemHeight();
        k = scrollingOffset / j1;
        l = currentItem - k;
        k1 = viewAdapter.getItemsCount();
        i = scrollingOffset % j1;
        i1 = i;
        if (Math.abs(i) <= j1 / 2)
        {
            i1 = 0;
        }
        if (!isCyclic || k1 <= 0)
        {
            break MISSING_BLOCK_LABEL_192;
        }
        if (i1 <= 0) goto _L2; else goto _L1
_L1:
        int j;
        j = l - 1;
        i = k + 1;
_L4:
        for (; j < 0; j += k1) { }
        break; /* Loop/switch isn't completed */
_L2:
        i = k;
        j = l;
        if (i1 < 0)
        {
            j = l + 1;
            i = k - 1;
        }
        if (true) goto _L4; else goto _L3
_L3:
        j %= k1;
_L5:
        k = scrollingOffset;
        if (j != currentItem)
        {
            setCurrentItem(j, false);
        } else
        {
            invalidate();
        }
        scrollingOffset = k - i * j1;
        if (scrollingOffset > getHeight())
        {
            scrollingOffset = scrollingOffset % getHeight() + getHeight();
        }
        return;
        if (l < 0)
        {
            i = currentItem;
            j = 0;
        } else
        if (l >= k1)
        {
            i = (currentItem - k1) + 1;
            j = k1 - 1;
        } else
        if (l > 0 && i1 > 0)
        {
            j = l - 1;
            i = k + 1;
        } else
        {
            i = k;
            j = l;
            if (l < k1 - 1)
            {
                i = k;
                j = l;
                if (i1 < 0)
                {
                    j = l + 1;
                    i = k - 1;
                }
            }
        }
          goto _L5
    }

    private void drawCenterRect(Canvas canvas)
    {
        int i = getHeight() / 2;
        int j = (int)((double)(getItemHeight() / 2) * 1.2D);
        centerDrawable.setBounds(0, i - j, getWidth(), i + j);
        centerDrawable.draw(canvas);
    }

    private void drawItems(Canvas canvas)
    {
        canvas.save();
        canvas.translate(10F, -((currentItem - firstItem) * getItemHeight() + (getItemHeight() - getHeight()) / 2) + scrollingOffset);
        itemsLayout.draw(canvas);
        canvas.restore();
    }

    private void drawShadows(Canvas canvas)
    {
        int i = (int)(1.5D * (double)getItemHeight());
        topShadow.setBounds(0, 0, getWidth(), i);
        topShadow.draw(canvas);
        bottomShadow.setBounds(0, getHeight() - i, getWidth(), getHeight());
        bottomShadow.draw(canvas);
    }

    private int getDesiredHeight(LinearLayout linearlayout)
    {
        if (linearlayout != null && linearlayout.getChildAt(0) != null)
        {
            itemHeight = linearlayout.getChildAt(0).getMeasuredHeight();
        }
        return Math.max(itemHeight * visibleItems - (itemHeight * 10) / 50, getSuggestedMinimumHeight());
    }

    private int getItemHeight()
    {
        if (itemHeight != 0)
        {
            return itemHeight;
        }
        if (itemsLayout != null && itemsLayout.getChildAt(0) != null)
        {
            itemHeight = itemsLayout.getChildAt(0).getHeight();
            return itemHeight;
        } else
        {
            return getHeight() / visibleItems;
        }
    }

    private View getItemView(int i)
    {
        if (viewAdapter == null || viewAdapter.getItemsCount() == 0)
        {
            return null;
        }
        int k = viewAdapter.getItemsCount();
        int j = i;
        if (!isValidItemIndex(i))
        {
            return viewAdapter.getEmptyItem(recycle.getEmptyItem(), itemsLayout);
        }
        for (; j < 0; j += k) { }
        return viewAdapter.getItem(j % k, recycle.getItem(), itemsLayout);
    }

    private ItemsRange getItemsRange()
    {
        if (getItemHeight() == 0)
        {
            return null;
        }
        int i = currentItem;
        int j;
        for (j = 1; getItemHeight() * j < getHeight(); j += 2)
        {
            i--;
        }

        int l = j;
        int k = i;
        if (scrollingOffset != 0)
        {
            k = i;
            if (scrollingOffset > 0)
            {
                k = i - 1;
            }
            i = scrollingOffset / getItemHeight();
            k -= i;
            l = (int)((double)(j + 1) + Math.asin(i));
        }
        return new ItemsRange(k, l);
    }

    private void initData(Context context)
    {
        scroller = new WheelScroller(getContext(), scrollingListener);
    }

    private void initResourcesIfNecessary()
    {
        if (centerDrawable == null)
        {
            centerDrawable = getContext().getResources().getDrawable(com.biznessapps.layout.R.drawable.wheel_view_line);
        }
        if (topShadow == null)
        {
            topShadow = new GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.TOP_BOTTOM, SHADOWS_COLORS);
        }
        if (bottomShadow == null)
        {
            bottomShadow = new GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.BOTTOM_TOP, SHADOWS_COLORS);
        }
        setBackgroundResource(com.biznessapps.layout.R.drawable.wheel_view_bg);
    }

    private boolean isValidItemIndex(int i)
    {
        return viewAdapter != null && viewAdapter.getItemsCount() > 0 && (isCyclic || i >= 0 && i < viewAdapter.getItemsCount());
    }

    private void layout(int i, int j)
    {
        itemsLayout.layout(0, 0, i - 20, j);
    }

    private boolean rebuildItems()
    {
        ItemsRange itemsrange;
        int i;
        int j;
        boolean flag1;
        itemsrange = getItemsRange();
        boolean flag;
        if (itemsLayout != null)
        {
            i = recycle.recycleItems(itemsLayout, firstItem, itemsrange);
            int k;
            if (firstItem != i)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            firstItem = i;
        } else
        {
            createItemsLayout();
            flag = true;
        }
        flag1 = flag;
        if (!flag)
        {
            if (firstItem != itemsrange.getFirst() || itemsLayout.getChildCount() != itemsrange.getCount())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
        }
        if (firstItem <= itemsrange.getFirst() || firstItem > itemsrange.getLast()) goto _L2; else goto _L1
_L1:
        i = firstItem - 1;
_L7:
        if (i >= itemsrange.getFirst() && addViewItem(i, true)) goto _L4; else goto _L3
_L3:
        j = firstItem;
        for (i = itemsLayout.getChildCount(); i < itemsrange.getCount();)
        {
            k = j;
            if (!addViewItem(firstItem + i, false))
            {
                k = j;
                if (itemsLayout.getChildCount() == 0)
                {
                    k = j + 1;
                }
            }
            i++;
            j = k;
        }

        break; /* Loop/switch isn't completed */
_L4:
        firstItem = i;
        i--;
        continue; /* Loop/switch isn't completed */
_L2:
        firstItem = itemsrange.getFirst();
        if (true) goto _L3; else goto _L5
_L5:
        firstItem = j;
        return flag1;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private void updateView()
    {
        if (rebuildItems())
        {
            calculateLayoutWidth(getWidth(), 0x40000000);
            layout(getWidth(), getHeight());
        }
    }

    public void addChangingListener(OnStateChangedListener onstatechangedlistener)
    {
        changingListeners.add(onstatechangedlistener);
    }

    public int getCurrentItem()
    {
        return currentItem;
    }

    public WheelViewAdapter getViewAdapter()
    {
        return viewAdapter;
    }

    public int getVisibleItems()
    {
        return visibleItems;
    }

    public void invalidateWheel(boolean flag)
    {
        if (!flag) goto _L2; else goto _L1
_L1:
        recycle.clearAll();
        if (itemsLayout != null)
        {
            itemsLayout.removeAllViews();
        }
        scrollingOffset = 0;
_L4:
        invalidate();
        return;
_L2:
        if (itemsLayout != null)
        {
            recycle.recycleItems(itemsLayout, firstItem, new ItemsRange());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean isCyclic()
    {
        return isCyclic;
    }

    protected void notifyChangingListeners()
    {
        for (Iterator iterator = changingListeners.iterator(); iterator.hasNext(); ((OnStateChangedListener)iterator.next()).onStateChanged(this)) { }
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (viewAdapter != null && viewAdapter.getItemsCount() > 0)
        {
            updateView();
            drawItems(canvas);
            drawCenterRect(canvas);
        }
        drawShadows(canvas);
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        layout(k - i, l - j);
    }

    protected void onMeasure(int i, int j)
    {
        int i1;
        int j1;
        int k = android.view.View.MeasureSpec.getMode(i);
        i1 = android.view.View.MeasureSpec.getMode(j);
        i = android.view.View.MeasureSpec.getSize(i);
        j = android.view.View.MeasureSpec.getSize(j);
        buildViewForMeasuring();
        j1 = calculateLayoutWidth(i, k);
        if (i1 != 0x40000000) goto _L2; else goto _L1
_L1:
        i = j;
_L4:
        setMeasuredDimension(j1, i);
        return;
_L2:
        int l = getDesiredHeight(itemsLayout);
        i = l;
        if (i1 == 0x80000000)
        {
            i = Math.min(l, j);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (!isEnabled() || getViewAdapter() == null)
        {
            return true;
        }
        motionevent.getAction();
        JVM INSTR tableswitch 2 2: default 40
    //                   2 49;
           goto _L1 _L2
_L1:
        return scroller.onTouchEvent(motionevent);
_L2:
        if (getParent() != null)
        {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void removeChangingListener(OnStateChangedListener onstatechangedlistener)
    {
        changingListeners.remove(onstatechangedlistener);
    }

    public void scroll(int i, int j)
    {
        int k = getItemHeight();
        int l = scrollingOffset;
        scroller.scroll(k * i - l, j);
    }

    public void setCurrentItem(int i)
    {
        setCurrentItem(i, false);
    }

    public void setCurrentItem(int i, boolean flag)
    {
        if (viewAdapter != null && viewAdapter.getItemsCount() != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j;
        int l;
        l = viewAdapter.getItemsCount();
        if (i < 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        j = i;
        if (i < l)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!isCyclic) goto _L1; else goto _L3
_L3:
        for (; i < 0; i += l) { }
        j = i % l;
        if (j == currentItem) goto _L1; else goto _L4
_L4:
        if (flag)
        {
            int k = j - currentItem;
            i = k;
            if (isCyclic)
            {
                j = (Math.min(j, currentItem) + l) - Math.max(j, currentItem);
                i = k;
                if (j < Math.abs(k))
                {
                    if (k < 0)
                    {
                        i = j;
                    } else
                    {
                        i = -j;
                    }
                }
            }
            scroll(i, 0);
            return;
        } else
        {
            scrollingOffset = 0;
            currentItem = j;
            notifyChangingListeners();
            invalidate();
            return;
        }
    }

    public void setCyclic(boolean flag)
    {
        isCyclic = flag;
        invalidateWheel(false);
    }

    public void setInterpolator(Interpolator interpolator)
    {
        scroller.setInterpolator(interpolator);
    }

    public void setViewAdapter(WheelViewAdapter wheelviewadapter)
    {
        if (viewAdapter != null)
        {
            viewAdapter.unregisterDataSetObserver(dataObserver);
        }
        viewAdapter = wheelviewadapter;
        if (viewAdapter != null)
        {
            viewAdapter.registerDataSetObserver(dataObserver);
        }
        invalidateWheel(true);
    }

    public void setVisibleItems(int i)
    {
        visibleItems = i;
    }

    public void stopScrolling()
    {
        scroller.stopScrolling();
    }





/*
    static int access$102(WheelView wheelview, int i)
    {
        wheelview.scrollingOffset = i;
        return i;
    }

*/

}
