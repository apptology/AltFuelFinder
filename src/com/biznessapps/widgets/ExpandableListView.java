// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.Adapter;
import android.widget.ListAdapter;
import android.widget.ListView;

public class ExpandableListView extends ListView
{
    private class OnCustomGlobalLayoutListener
        implements android.view.ViewTreeObserver.OnGlobalLayoutListener
    {

        private int childViewsHeight;
        private boolean needsUpdate;
        final ExpandableListView this$0;

        public void onGlobalLayout()
        {
            if (getAdapter() != null)
            {
                ListAdapter listadapter = getAdapter();
                int k = getMeasuredHeight();
                if (listadapter.getCount() != 0 && needsUpdate)
                {
                    int l = getWidth();
                    int j = 0;
                    for (int i = 0; i < listadapter.getCount(); i++)
                    {
                        View view = listadapter.getView(i, null, ExpandableListView.this);
                        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(l, 0x80000000), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
                        j += view.getMeasuredHeight();
                    }

                    childViewsHeight = getDividerHeight() * (listadapter.getCount() - 1) + j;
                    if (childViewsHeight != k)
                    {
                        android.view.ViewGroup.LayoutParams layoutparams = getLayoutParams();
                        layoutparams.height = childViewsHeight;
                        setLayoutParams(layoutparams);
                        requestLayout();
                        return;
                    } else
                    {
                        needsUpdate = false;
                        return;
                    }
                }
            }
        }

        public void setNeedsUpdate(boolean flag)
        {
            needsUpdate = flag;
        }

        private OnCustomGlobalLayoutListener()
        {
            this$0 = ExpandableListView.this;
            super();
            childViewsHeight = 0;
            needsUpdate = true;
        }

    }


    private boolean mExpandOn;
    private OnCustomGlobalLayoutListener mListener;

    public ExpandableListView(Context context)
    {
        super(context);
        mExpandOn = false;
        mListener = new OnCustomGlobalLayoutListener();
    }

    public ExpandableListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mExpandOn = false;
        mListener = new OnCustomGlobalLayoutListener();
    }

    public ExpandableListView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mExpandOn = false;
        mListener = new OnCustomGlobalLayoutListener();
        updateListener();
    }

    private void updateListener()
    {
        if (mExpandOn)
        {
            getViewTreeObserver().removeGlobalOnLayoutListener(mListener);
            getViewTreeObserver().addOnGlobalLayoutListener(mListener);
        } else
        {
            getViewTreeObserver().removeGlobalOnLayoutListener(mListener);
        }
        requestLayout();
    }

    public volatile void setAdapter(Adapter adapter)
    {
        setAdapter((ListAdapter)adapter);
    }

    public void setAdapter(ListAdapter listadapter)
    {
        mListener.setNeedsUpdate(true);
        super.setAdapter(listadapter);
    }

    public void setExpandOn(boolean flag)
    {
        mExpandOn = flag;
        updateListener();
    }
}
