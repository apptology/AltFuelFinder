// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.wheel;

import android.view.View;
import android.widget.LinearLayout;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.biznessapps.widgets.wheel:
//            WheelView, WheelViewAdapter, ItemsRange

public class ItemsCacher
{

    private List emptyItems;
    private List items;
    private WheelView wheel;

    public ItemsCacher(WheelView wheelview)
    {
        wheel = wheelview;
    }

    private List addView(View view, List list)
    {
        Object obj = list;
        if (list == null)
        {
            obj = new LinkedList();
        }
        ((List) (obj)).add(view);
        return ((List) (obj));
    }

    private View getCachedView(List list)
    {
        if (list != null && list.size() > 0)
        {
            View view = (View)list.get(0);
            list.remove(0);
            return view;
        } else
        {
            return null;
        }
    }

    private void recycleView(View view, int i)
    {
        int j;
        int k;
label0:
        {
            k = wheel.getViewAdapter().getItemsCount();
            if (i >= 0)
            {
                j = i;
                if (i < k)
                {
                    break label0;
                }
            }
            j = i;
            if (!wheel.isCyclic())
            {
                emptyItems = addView(view, emptyItems);
                return;
            }
        }
        for (; j < 0; j += k) { }
        items = addView(view, items);
    }

    public void clearAll()
    {
        if (items != null)
        {
            items.clear();
        }
        if (emptyItems != null)
        {
            emptyItems.clear();
        }
    }

    public View getEmptyItem()
    {
        return getCachedView(emptyItems);
    }

    public View getItem()
    {
        return getCachedView(items);
    }

    public int recycleItems(LinearLayout linearlayout, int i, ItemsRange itemsrange)
    {
        int k = i;
        boolean flag = false;
        int j = i;
        i = k;
        k = ((flag) ? 1 : 0);
        while (k < linearlayout.getChildCount()) 
        {
            int l;
            int i1;
            if (!itemsrange.contains(i))
            {
                recycleView(linearlayout.getChildAt(k), i);
                linearlayout.removeViewAt(k);
                l = k;
                i1 = j;
                if (k == 0)
                {
                    i1 = j + 1;
                    l = k;
                }
            } else
            {
                l = k + 1;
                i1 = j;
            }
            i++;
            k = l;
            j = i1;
        }
        return j;
    }
}
