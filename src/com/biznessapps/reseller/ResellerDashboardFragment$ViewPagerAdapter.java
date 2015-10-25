// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reseller;

import android.content.Intent;
import android.support.v4.view.PagerAdapter;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.layout.MainController;
import com.biznessapps.utils.ViewUtils;
import java.net.URLEncoder;
import java.util.List;

// Referenced classes of package com.biznessapps.reseller:
//            ResellerDashboardFragment, AppGridAdapter

private class Count extends PagerAdapter
{

    private instantiateItem appsContainer;
    final ResellerDashboardFragment this$0;

    private void addCircles(ViewGroup viewgroup, int i)
    {
        boolean flag = false;
        viewgroup.removeAllViews();
        int j = 0;
        while (j < i) 
        {
            ImageView imageview = (ImageView)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.ontext);
            imageview.setPadding(4, 0, 4, 0);
            if (j == 0)
            {
                imageview.setImageResource(com.biznessapps.layout.ontext);
            } else
            {
                imageview.setImageResource(com.biznessapps.layout.ontext);
            }
            viewgroup.addView(imageview);
            j++;
        }
        if (i > 1)
        {
            i = ((flag) ? 1 : 0);
        } else
        {
            i = 8;
        }
        viewgroup.setVisibility(i);
    }

    private void setAppsToView(List list, GridView gridview)
    {
        gridview.setAdapter(new AppGridAdapter(getApplicationContext(), list, ResellerDashboardFragment.access$1000(ResellerDashboardFragment.this)));
        gridview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final ResellerDashboardFragment.ViewPagerAdapter this$1;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                adapterview = (ResellerInfo.AppInfo)adapterview.getAdapter().getItem(i);
                view = String.format("%s %s", new Object[] {
                    getString(com.biznessapps.layout.R.string.reseller_dashboard_login), adapterview.getAppCode()
                });
                ViewUtils.showDialog(getHoldActivity(), null, view, adapterview. new Runnable() {

                    final _cls1 this$2;
                    final ResellerInfo.AppInfo val$item;

                    public void run()
                    {
                        Intent intent = (new Intent()).setClass(getApplicationContext(), com/biznessapps/layout/MainController);
                        intent.putExtra("APPCODE", URLEncoder.encode(item.getAppCode()));
                        intent.putExtra("IS_FROM_RESELLER", true);
                        startActivity(intent);
                    }

            
            {
                this$2 = final__pcls1;
                item = ResellerInfo.AppInfo.this;
                super();
            }
                }, true);
            }

            
            {
                this$1 = ResellerDashboardFragment.ViewPagerAdapter.this;
                super();
            }
        });
        gridview.setOnTouchListener(new android.view.View.OnTouchListener() {

            final ResellerDashboardFragment.ViewPagerAdapter this$1;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                ViewUtils.closeKeyboardAndClearFocus(getApplicationContext(), ResellerDashboardFragment.access$200(this$0));
                return false;
            }

            
            {
                this$1 = ResellerDashboardFragment.ViewPagerAdapter.this;
                super();
            }
        });
    }

    public void destroyItem(ViewGroup viewgroup, int i, Object obj)
    {
        viewgroup.removeView((View)obj);
    }

    public int getCount()
    {
        return appsContainer.Count();
    }

    public View instantiateItem(ViewGroup viewgroup, int i)
    {
        List list = appsContainer.List(i);
        GridView gridview = (GridView)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.ontext);
        setAppsToView(list, gridview);
        viewgroup.addView(gridview, -1, -1);
        return gridview;
    }

    public volatile Object instantiateItem(ViewGroup viewgroup, int i)
    {
        return instantiateItem(viewgroup, i);
    }

    public boolean isViewFromObject(View view, Object obj)
    {
        return view == obj;
    }

    public _cls2.this._cls1(List list)
    {
        this$0 = ResellerDashboardFragment.this;
        super();
        TextView textview = ResellerDashboardFragment.access$900(ResellerDashboardFragment.this);
        int i;
        if (list.isEmpty())
        {
            i = 0;
        } else
        {
            i = 8;
        }
        textview.setVisibility(i);
        appsContainer = new it>(ResellerDashboardFragment.this, list);
        addCircles(ResellerDashboardFragment.access$100(ResellerDashboardFragment.this), appsContainer.Count());
    }
}
