// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.app.Activity;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import com.biznessapps.utils.ViewUtils;
import java.util.List;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeAnimation

private class urls extends PagerAdapter
{

    private ViewGroup currentView;
    final HomeAnimation this$0;
    private List urls;

    public void destroyItem(ViewGroup viewgroup, int i, Object obj)
    {
        viewgroup.removeView((View)obj);
    }

    public int getCount()
    {
        return urls.size();
    }

    public ViewGroup getCurrentView()
    {
        return currentView;
    }

    public View instantiateItem(ViewGroup viewgroup, int i)
    {
        String s = (String)urls.get(i);
        ViewGroup viewgroup1 = (ViewGroup)ViewUtils.loadLayout(HomeAnimation.access$100(HomeAnimation.this).getApplicationContext(), com.biznessapps.layout.pter.this._fld0);
        HomeAnimation.access$200(HomeAnimation.this, s, viewgroup1);
        viewgroup.addView(viewgroup1, -1, -1);
        return viewgroup1;
    }

    public volatile Object instantiateItem(ViewGroup viewgroup, int i)
    {
        return instantiateItem(viewgroup, i);
    }

    public boolean isViewFromObject(View view, Object obj)
    {
        return view == obj;
    }

    public void setPrimaryItem(ViewGroup viewgroup, int i, Object obj)
    {
        currentView = (ViewGroup)obj;
    }

    public (List list)
    {
        this$0 = HomeAnimation.this;
        super();
        urls = list;
    }
}
