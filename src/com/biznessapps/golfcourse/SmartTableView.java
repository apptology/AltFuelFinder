// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Point;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import java.util.Hashtable;

// Referenced classes of package com.biznessapps.golfcourse:
//            HorizontalScrollViewListener, SmartTableViewAdapter, ObservableHorizontalScrollView, OnCellClickListener, 
//            OnTableResizeListener

public class SmartTableView extends FrameLayout
    implements HorizontalScrollViewListener
{

    private SmartTableViewAdapter mAdapter;
    private DataSetObserver mAdapterDataSetObjserver;
    private OnCellClickListener mCellClickListener;
    private int mContentBackroundResID;
    private ObservableHorizontalScrollView mContentHorizontalScrollView;
    private int mFrozenColumnHeaderBackroundResID;
    private int mFrozenCrossHeaderBackroundResID;
    private int mFrozenRowHeaderBackroundResID;
    private ObservableHorizontalScrollView mHeaderHorizontalScrollView;
    private boolean mIsBuilt;
    private TableLayout mTLContentTable;
    private TableLayout mTLFrozenColumnHeaderTable;
    private TableLayout mTLFrozenCrossHeaderTable;
    private TableLayout mTLFrozenRowHeaderTable;
    private android.view.View.OnClickListener mTableCellClickListener;
    private ViewGroup mVGRoot;
    private Hashtable mViewPositionMap;

    public SmartTableView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mIsBuilt = false;
        mViewPositionMap = new Hashtable();
        mTableCellClickListener = new android.view.View.OnClickListener() {

            final SmartTableView this$0;

            public void onClick(View view)
            {
                view = (Point)mViewPositionMap.get(view);
                if (mCellClickListener != null)
                {
                    mCellClickListener.onCellClicked(((Point) (view)).x, ((Point) (view)).y);
                }
            }

            
            {
                this$0 = SmartTableView.this;
                super();
            }
        };
        mAdapterDataSetObjserver = new DataSetObserver() {

            final SmartTableView this$0;

            public void onChanged()
            {
                if (mIsBuilt)
                {
                    updateTableView();
                    return;
                } else
                {
                    buildTableView();
                    return;
                }
            }

            public void onInvalidated()
            {
                onChanged();
            }

            
            {
                this$0 = SmartTableView.this;
                super();
            }
        };
        initView();
    }

    private void buildTableView()
    {
        if (mAdapter == null)
        {
            return;
        }
        mViewPositionMap.clear();
        mTLFrozenCrossHeaderTable.removeAllViews();
        mTLFrozenCrossHeaderTable.setBackgroundResource(mFrozenCrossHeaderBackroundResID);
        TableRow tablerow = new TableRow(getContext());
        tablerow.addView(setViewListener(mAdapter.getFrozenCrossHeaderItemView(null), 0, 0));
        mTLFrozenCrossHeaderTable.addView(tablerow);
        mTLFrozenRowHeaderTable.removeAllViews();
        mTLFrozenRowHeaderTable.setBackgroundResource(mFrozenRowHeaderBackroundResID);
        tablerow = new TableRow(getContext());
        for (int i = 0; i < mAdapter.getColumnCount() - 1; i++)
        {
            tablerow.addView(setViewListener(mAdapter.getFrozenRowHeaderItemView(null, i), 0, i + 1));
        }

        mTLFrozenRowHeaderTable.addView(tablerow);
        mTLFrozenColumnHeaderTable.removeAllViews();
        mTLFrozenColumnHeaderTable.setBackgroundResource(mFrozenColumnHeaderBackroundResID);
        for (int j = 0; j < mAdapter.getRowCount() - 1; j++)
        {
            TableRow tablerow1 = new TableRow(getContext());
            tablerow1.addView(setViewListener(mAdapter.getFrozenColumnHeaderItemView(null, j), j + 1, 0));
            mTLFrozenColumnHeaderTable.addView(tablerow1);
        }

        mTLContentTable.removeAllViews();
        mTLContentTable.setBackgroundResource(mContentBackroundResID);
        for (int k = 0; k < mAdapter.getRowCount() - 1; k++)
        {
            TableRow tablerow2 = new TableRow(getContext());
            for (int l = 0; l < mAdapter.getColumnCount() - 1; l++)
            {
                tablerow2.addView(setViewListener(mAdapter.getContentView(null, k, l), k + 1, l + 1));
            }

            mTLContentTable.addView(tablerow2);
        }

        mIsBuilt = true;
    }

    private void initView()
    {
        mVGRoot = (ViewGroup)View.inflate(getContext(), com.biznessapps.layout.R.layout.common_smart_tableview_layout, null);
        addView(mVGRoot);
        mTLFrozenCrossHeaderTable = (TableLayout)mVGRoot.findViewById(com.biznessapps.layout.R.id.frozenTableCrossHeader);
        mTLFrozenRowHeaderTable = (TableLayout)mVGRoot.findViewById(com.biznessapps.layout.R.id.fronzeTableRowHeader);
        mTLFrozenColumnHeaderTable = (TableLayout)mVGRoot.findViewById(com.biznessapps.layout.R.id.frozenTableColumnHeader);
        mTLContentTable = (TableLayout)mVGRoot.findViewById(com.biznessapps.layout.R.id.contentTable);
        mHeaderHorizontalScrollView = (ObservableHorizontalScrollView)mVGRoot.findViewById(com.biznessapps.layout.R.id.contentTableHeaderHorizontalScrollView);
        mHeaderHorizontalScrollView.setHorizontalScrollBarEnabled(false);
        mHeaderHorizontalScrollView.setScrollViewListener(this);
        mContentHorizontalScrollView = (ObservableHorizontalScrollView)mVGRoot.findViewById(com.biznessapps.layout.R.id.contentTableHorizontalScrollView);
        mContentHorizontalScrollView.setHorizontalScrollBarEnabled(false);
        mContentHorizontalScrollView.setScrollViewListener(this);
    }

    private View setViewListener(View view, int i, int j)
    {
        mViewPositionMap.put(view, new Point(i, j));
        view.setOnClickListener(mTableCellClickListener);
        return view;
    }

    private void updateTableView()
    {
        if (mAdapter != null)
        {
            mTLFrozenCrossHeaderTable.setBackgroundResource(mFrozenCrossHeaderBackroundResID);
            TableRow tablerow = (TableRow)mTLFrozenCrossHeaderTable.getChildAt(0);
            mAdapter.getFrozenCrossHeaderItemView(tablerow);
            mTLFrozenRowHeaderTable.setBackgroundResource(mFrozenRowHeaderBackroundResID);
            for (int i = 0; i < mAdapter.getColumnCount() - 1; i++)
            {
                TableRow tablerow1 = (TableRow)mTLFrozenRowHeaderTable.getChildAt(i);
                mAdapter.getFrozenRowHeaderItemView(tablerow1, i);
            }

            mTLFrozenColumnHeaderTable.setBackgroundResource(mFrozenColumnHeaderBackroundResID);
            for (int j = 0; j < mAdapter.getRowCount() - 1; j++)
            {
                TableRow tablerow2 = (TableRow)mTLFrozenColumnHeaderTable.getChildAt(j);
                mAdapter.getFrozenColumnHeaderItemView(tablerow2, j);
            }

            mTLContentTable.setBackgroundResource(mContentBackroundResID);
            int k = 0;
            while (k < mAdapter.getRowCount() - 1) 
            {
                TableRow tablerow3 = (TableRow)mTLContentTable.getChildAt(k);
                for (int l = 0; l < mAdapter.getColumnCount() - 1; l++)
                {
                    View view = tablerow3.getChildAt(l);
                    mAdapter.getContentView(view, k, l);
                }

                k++;
            }
        }
    }

    public void fitViewToContents(final OnTableResizeListener listener)
    {
        final int contentWidth = mTLFrozenCrossHeaderTable.getWidth() + mHeaderHorizontalScrollView.getChildAt(0).getWidth();
        final int contentHeight = mHeaderHorizontalScrollView.getChildAt(0).getHeight() + mContentHorizontalScrollView.getChildAt(0).getHeight() + (int)TypedValue.applyDimension(1, 1.0F, getResources().getDisplayMetrics());
        Object obj = new android.widget.FrameLayout.LayoutParams(contentWidth, contentHeight);
        mVGRoot.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        obj = new ScaleAnimation(1.0F, 1.0F, 1.0F, 1.0F, 1, 0.0F, 1, 0.0F);
        ((ScaleAnimation) (obj)).setFillAfter(true);
        ((ScaleAnimation) (obj)).setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final SmartTableView this$0;
            final int val$contentHeight;
            final int val$contentWidth;
            final OnTableResizeListener val$listener;

            public void onAnimationEnd(Animation animation)
            {
                if (listener != null)
                {
                    listener.onResized(contentWidth, contentHeight);
                }
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = SmartTableView.this;
                listener = ontableresizelistener;
                contentWidth = i;
                contentHeight = j;
                super();
            }
        });
        mVGRoot.startAnimation(((Animation) (obj)));
    }

    public int getScrollPosoitionX()
    {
        return mHeaderHorizontalScrollView.getScrollX();
    }

    public int getScrollPosoitionY()
    {
        return mContentHorizontalScrollView.getScrollY();
    }

    public void onScrollChanged(ObservableHorizontalScrollView observablehorizontalscrollview, int i, int j, int k, int l)
    {
        if (observablehorizontalscrollview == mHeaderHorizontalScrollView)
        {
            mContentHorizontalScrollView.scrollTo(i, j);
        } else
        if (observablehorizontalscrollview == mContentHorizontalScrollView)
        {
            mHeaderHorizontalScrollView.scrollTo(i, j);
            return;
        }
    }

    public void restoreViewToScreen(final OnTableResizeListener listener)
    {
        mVGRoot.clearAnimation();
        mVGRoot.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-2, -2));
        ScaleAnimation scaleanimation = new ScaleAnimation(1.0F, 1.0F, 1.0F, 1.0F, 1, 0.0F, 1, 0.0F);
        scaleanimation.setFillAfter(true);
        scaleanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final SmartTableView this$0;
            final OnTableResizeListener val$listener;

            public void onAnimationEnd(Animation animation)
            {
                if (listener != null)
                {
                    listener.onResized(mVGRoot.getWidth(), mVGRoot.getHeight());
                }
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = SmartTableView.this;
                listener = ontableresizelistener;
                super();
            }
        });
        mVGRoot.startAnimation(scaleanimation);
    }

    public void setAdapter(SmartTableViewAdapter smarttableviewadapter)
    {
        if (smarttableviewadapter == null && mAdapter != null)
        {
            mAdapter.unregisterDataSetObserver();
        }
        mAdapter = smarttableviewadapter;
        if (mAdapter != null)
        {
            mIsBuilt = false;
            mAdapter.registerDataSetObserver(mAdapterDataSetObjserver);
            mAdapter.notifyDataSetChanged();
        }
    }

    public void setContentBcakground(int i)
    {
        mContentBackroundResID = i;
    }

    public void setFrozenColumnHeaderBackground(int i)
    {
        mFrozenColumnHeaderBackroundResID = i;
    }

    public void setFrozenCrossHeaderBackground(int i)
    {
        mFrozenCrossHeaderBackroundResID = i;
    }

    public void setFrozenRowHeaderBackground(int i)
    {
        mFrozenRowHeaderBackroundResID = i;
    }

    public void setOnCellClickListener(OnCellClickListener oncellclicklistener)
    {
        mCellClickListener = oncellclicklistener;
    }

    public void setScrollPosition(int i, int j)
    {
        mHeaderHorizontalScrollView.setScrollX(i);
        mContentHorizontalScrollView.setScrollY(j);
    }






}
