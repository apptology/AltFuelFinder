// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.Scroller;
import java.util.LinkedList;
import java.util.Queue;

public class HorizontalListView extends AdapterView
{

    public boolean alwaysOverrideTouch;
    protected int currentX;
    private boolean dataChanged;
    private DataSetObserver dataObserver;
    private int displayOffset;
    private GestureDetector gestureDetector;
    private int leftViewIndex;
    protected ListAdapter listAdapter;
    private int maxX;
    protected int nextX;
    private android.view.GestureDetector.OnGestureListener onGesture;
    private android.widget.AdapterView.OnItemClickListener onItemClicked;
    private android.widget.AdapterView.OnItemLongClickListener onItemLongClicked;
    private android.widget.AdapterView.OnItemSelectedListener onItemSelected;
    private Queue removedViewQueue;
    private int rightViewIndex;
    protected Scroller scroller;

    public HorizontalListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        alwaysOverrideTouch = true;
        leftViewIndex = -1;
        rightViewIndex = 0;
        maxX = 0x7fffffff;
        displayOffset = 0;
        removedViewQueue = new LinkedList();
        dataChanged = false;
        dataObserver = new DataSetObserver() {

            final HorizontalListView this$0;

            public void onChanged()
            {
                synchronized (HorizontalListView.this)
                {
                    dataChanged = true;
                }
                invalidate();
                requestLayout();
                return;
                exception;
                horizontallistview;
                JVM INSTR monitorexit ;
                throw exception;
            }

            public void onInvalidated()
            {
                reset();
                invalidate();
                requestLayout();
            }

            
            {
                this$0 = HorizontalListView.this;
                super();
            }
        };
        onGesture = new android.view.GestureDetector.SimpleOnGestureListener() {

            final HorizontalListView this$0;

            private boolean isEventWithinView(MotionEvent motionevent, View view)
            {
                Rect rect = new Rect();
                int ai[] = new int[2];
                view.getLocationOnScreen(ai);
                int i = ai[0];
                int j = view.getWidth();
                int k = ai[1];
                rect.set(i, k, i + j, k + view.getHeight());
                return rect.contains((int)motionevent.getRawX(), (int)motionevent.getRawY());
            }

            public boolean onDown(MotionEvent motionevent)
            {
                return HorizontalListView.this.onDown(motionevent);
            }

            public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
            {
                return HorizontalListView.this.onFling(motionevent, motionevent1, f, f1);
            }

            public void onLongPress(MotionEvent motionevent)
            {
                int j = getChildCount();
                int i = 0;
                do
                {
label0:
                    {
                        if (i < j)
                        {
                            View view = getChildAt(i);
                            if (!isEventWithinView(motionevent, view))
                            {
                                break label0;
                            }
                            if (onItemLongClicked != null)
                            {
                                onItemLongClicked.onItemLongClick(HorizontalListView.this, view, leftViewIndex + 1 + i, listAdapter.getItemId(leftViewIndex + 1 + i));
                            }
                        }
                        return;
                    }
                    i++;
                } while (true);
            }

            public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
            {
                synchronized (HorizontalListView.this)
                {
                    motionevent1 = HorizontalListView.this;
                    motionevent1.nextX = ((HorizontalListView) (motionevent1)).nextX + (int)f;
                }
                requestLayout();
                return true;
                motionevent1;
                motionevent;
                JVM INSTR monitorexit ;
                throw motionevent1;
            }

            public boolean onSingleTapConfirmed(MotionEvent motionevent)
            {
                int i = 0;
                do
                {
label0:
                    {
                        if (i < getChildCount())
                        {
                            View view = getChildAt(i);
                            if (!isEventWithinView(motionevent, view))
                            {
                                break label0;
                            }
                            if (onItemClicked != null)
                            {
                                onItemClicked.onItemClick(HorizontalListView.this, view, leftViewIndex + 1 + i, listAdapter.getItemId(leftViewIndex + 1 + i));
                            }
                            if (onItemSelected != null)
                            {
                                onItemSelected.onItemSelected(HorizontalListView.this, view, leftViewIndex + 1 + i, listAdapter.getItemId(leftViewIndex + 1 + i));
                            }
                        }
                        return true;
                    }
                    i++;
                } while (true);
            }

            
            {
                this$0 = HorizontalListView.this;
                super();
            }
        };
        initView();
    }

    private void addAndMeasureChild(View view, int i)
    {
        android.view.ViewGroup.LayoutParams layoutparams1 = view.getLayoutParams();
        android.view.ViewGroup.LayoutParams layoutparams = layoutparams1;
        if (layoutparams1 == null)
        {
            layoutparams = new android.view.ViewGroup.LayoutParams(-1, -1);
        }
        addViewInLayout(view, i, layoutparams, true);
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(getWidth(), 0x80000000), android.view.View.MeasureSpec.makeMeasureSpec(getHeight(), 0x80000000));
    }

    private void fillList(int i)
    {
        int j = 0;
        View view = getChildAt(getChildCount() - 1);
        if (view != null)
        {
            j = view.getRight();
        }
        fillListRight(j, i);
        j = 0;
        view = getChildAt(0);
        if (view != null)
        {
            j = view.getLeft();
        }
        fillListLeft(j, i);
    }

    private void fillListLeft(int i, int j)
    {
        while (i + j > 0 && leftViewIndex >= 0) 
        {
            View view = listAdapter.getView(leftViewIndex, (View)removedViewQueue.poll(), this);
            addAndMeasureChild(view, 0);
            i -= view.getMeasuredWidth();
            leftViewIndex = leftViewIndex - 1;
            displayOffset = displayOffset - view.getMeasuredWidth();
        }
    }

    private void fillListRight(int i, int j)
    {
        for (; i + j < getWidth() && rightViewIndex < listAdapter.getCount(); rightViewIndex = rightViewIndex + 1)
        {
            View view = listAdapter.getView(rightViewIndex, (View)removedViewQueue.poll(), this);
            addAndMeasureChild(view, -1);
            i += view.getMeasuredWidth();
            if (rightViewIndex == listAdapter.getCount() - 1)
            {
                maxX = (currentX + i) - getWidth();
            }
            if (maxX < 0)
            {
                maxX = 0;
            }
        }

    }

    private void initView()
    {
        this;
        JVM INSTR monitorenter ;
        leftViewIndex = -1;
        rightViewIndex = 0;
        displayOffset = 0;
        currentX = 0;
        nextX = 0;
        maxX = 0x7fffffff;
        scroller = new Scroller(getContext());
        gestureDetector = new GestureDetector(getContext(), onGesture);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void positionItems(int i)
    {
        if (getChildCount() > 0)
        {
            displayOffset = displayOffset + i;
            int j = displayOffset;
            for (i = 0; i < getChildCount(); i++)
            {
                View view = getChildAt(i);
                int k = view.getMeasuredWidth();
                view.layout(j, 0, j + k, view.getMeasuredHeight());
                j += k;
            }

        }
    }

    private void removeNonVisibleItems(int i)
    {
        for (View view = getChildAt(0); view != null && view.getRight() + i <= 0; view = getChildAt(0))
        {
            displayOffset = displayOffset + view.getMeasuredWidth();
            removedViewQueue.offer(view);
            removeViewInLayout(view);
            leftViewIndex = leftViewIndex + 1;
        }

        for (View view1 = getChildAt(getChildCount() - 1); view1 != null && view1.getLeft() + i >= getWidth(); view1 = getChildAt(getChildCount() - 1))
        {
            removedViewQueue.offer(view1);
            removeViewInLayout(view1);
            rightViewIndex = rightViewIndex - 1;
        }

    }

    private void reset()
    {
        this;
        JVM INSTR monitorenter ;
        initView();
        removeAllViewsInLayout();
        requestLayout();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        return super.dispatchTouchEvent(motionevent) | gestureDetector.onTouchEvent(motionevent);
    }

    public volatile Adapter getAdapter()
    {
        return getAdapter();
    }

    public ListAdapter getAdapter()
    {
        return listAdapter;
    }

    public View getSelectedView()
    {
        return null;
    }

    protected boolean onDown(MotionEvent motionevent)
    {
        scroller.forceFinished(true);
        return true;
    }

    protected boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        this;
        JVM INSTR monitorenter ;
        scroller.fling(nextX, 0, (int)(-f), 0, 0, maxX, 0, 0);
        this;
        JVM INSTR monitorexit ;
        requestLayout();
        return true;
        motionevent;
        this;
        JVM INSTR monitorexit ;
        throw motionevent;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        this;
        JVM INSTR monitorenter ;
        ListAdapter listadapter;
        super.onLayout(flag, i, j, k, l);
        listadapter = listAdapter;
        if (listadapter != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (dataChanged)
        {
            i = currentX;
            initView();
            removeAllViewsInLayout();
            nextX = i;
            dataChanged = false;
        }
        if (scroller.computeScrollOffset())
        {
            nextX = scroller.getCurrX();
        }
        if (nextX <= 0)
        {
            nextX = 0;
            scroller.forceFinished(true);
        }
        if (nextX >= maxX)
        {
            nextX = maxX;
            scroller.forceFinished(true);
        }
        i = currentX - nextX;
        removeNonVisibleItems(i);
        fillList(i);
        positionItems(i);
        currentX = nextX;
        if (!scroller.isFinished())
        {
            post(new Runnable() {

                final HorizontalListView this$0;

                public void run()
                {
                    requestLayout();
                }

            
            {
                this$0 = HorizontalListView.this;
                super();
            }
            });
        }
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void scrollTo(int i)
    {
        this;
        JVM INSTR monitorenter ;
        scroller.startScroll(nextX, 0, i - nextX, 0);
        requestLayout();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public volatile void setAdapter(Adapter adapter)
    {
        setAdapter((ListAdapter)adapter);
    }

    public void setAdapter(ListAdapter listadapter)
    {
        if (listAdapter != null)
        {
            listAdapter.unregisterDataSetObserver(dataObserver);
        }
        listAdapter = listadapter;
        listAdapter.registerDataSetObserver(dataObserver);
        reset();
    }

    public void setOnItemClickListener(android.widget.AdapterView.OnItemClickListener onitemclicklistener)
    {
        onItemClicked = onitemclicklistener;
    }

    public void setOnItemLongClickListener(android.widget.AdapterView.OnItemLongClickListener onitemlongclicklistener)
    {
        onItemLongClicked = onitemlongclicklistener;
    }

    public void setOnItemSelectedListener(android.widget.AdapterView.OnItemSelectedListener onitemselectedlistener)
    {
        onItemSelected = onitemselectedlistener;
    }

    public void setSelection(int i)
    {
    }


/*
    static boolean access$002(HorizontalListView horizontallistview, boolean flag)
    {
        horizontallistview.dataChanged = flag;
        return flag;
    }

*/





}
