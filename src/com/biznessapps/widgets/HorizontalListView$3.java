// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListAdapter;

// Referenced classes of package com.biznessapps.widgets:
//            HorizontalListView

class istener extends android.view.eOnGestureListener
{

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
                    if (HorizontalListView.access$500(HorizontalListView.this) != null)
                    {
                        HorizontalListView.access$500(HorizontalListView.this).onItemLongClick(HorizontalListView.this, view, HorizontalListView.access$300(HorizontalListView.this) + 1 + i, listAdapter.getItemId(HorizontalListView.access$300(HorizontalListView.this) + 1 + i));
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
                    if (HorizontalListView.access$200(HorizontalListView.this) != null)
                    {
                        HorizontalListView.access$200(HorizontalListView.this).onItemClick(HorizontalListView.this, view, HorizontalListView.access$300(HorizontalListView.this) + 1 + i, listAdapter.getItemId(HorizontalListView.access$300(HorizontalListView.this) + 1 + i));
                    }
                    if (HorizontalListView.access$400(HorizontalListView.this) != null)
                    {
                        HorizontalListView.access$400(HorizontalListView.this).onItemSelected(HorizontalListView.this, view, HorizontalListView.access$300(HorizontalListView.this) + 1 + i, listAdapter.getItemId(HorizontalListView.access$300(HorizontalListView.this) + 1 + i));
                    }
                }
                return true;
            }
            i++;
        } while (true);
    }

    ener()
    {
        this$0 = HorizontalListView.this;
        super();
    }
}
