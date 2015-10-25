// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.List;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeScreenHelper

static final class val.buttonList extends BaseAdapter
{

    final List val$buttonList;

    public int getCount()
    {
        return val$buttonList.size();
    }

    public Object getItem(int i)
    {
        return val$buttonList.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        return (View)val$buttonList.get(i);
    }

    (List list)
    {
        val$buttonList = list;
        super();
    }
}
