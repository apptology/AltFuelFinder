// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.biznessapps.api.AppCore;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.utils.ViewUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.api.navigation:
//            TabView

public class NavigationBar
{

    public static final int HORISONTAL_ORIENTATION = 1;
    public static final int VERTICAL_ORIENTATION = 2;
    private static long currentTabId = 0L;
    private final Context context;
    private boolean isSelectionSet;
    private int orientation;
    private int tabCount;
    private ViewGroup tabRootLayout;
    private final List tabs = new ArrayList();
    private ViewGroup tabsContainer;

    public NavigationBar(Context context1, int i)
    {
        isSelectionSet = false;
        orientation = 1;
        context = context1;
        orientation = i;
        initTabContainerLayout();
    }

    private void initTabContainerLayout()
    {
        int i;
        if (orientation == 1)
        {
            i = com.biznessapps.layout.R.layout.navigation_bar;
        } else
        {
            i = com.biznessapps.layout.R.layout.navigation_bar_vertical;
        }
        tabRootLayout = (ViewGroup)ViewUtils.loadLayout(context, i);
        tabsContainer = (ViewGroup)tabRootLayout.findViewById(com.biznessapps.layout.R.id.navigation_tab_container);
        tabsContainer.removeAllViews();
    }

    public void addTab(TabView tabview, int i)
    {
        tabs.add(tabview);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -1);
        layoutparams.weight = 1.0F;
        if (tabview.withOldDesign())
        {
            android.widget.LinearLayout.LayoutParams layoutparams1 = new android.widget.LinearLayout.LayoutParams(1, -1);
            LinearLayout linearlayout = new LinearLayout(context);
            LinearLayout linearlayout1 = new LinearLayout(context);
            linearlayout.setBackgroundResource(com.biznessapps.layout.R.drawable.side_line_background);
            linearlayout1.setBackgroundResource(com.biznessapps.layout.R.drawable.side_line_background);
            tabsContainer.addView(linearlayout, layoutparams1);
            tabsContainer.addView(tabview.getView(), layoutparams);
            tabsContainer.addView(linearlayout1, layoutparams1);
            return;
        }
        if (orientation == 1)
        {
            tabsContainer.addView(tabview.getView(), layoutparams);
            return;
        }
        float f1 = context.getResources().getDimension(com.biznessapps.layout.R.dimen.vertical_navigation_margin);
        AppSettings appsettings = AppCore.getInstance().getAppSettings();
        float f2 = context.getResources().getDimension(com.biznessapps.layout.R.dimen.news_feed_height);
        float f = f1;
        if (appsettings.showNewsFeed())
        {
            f = f1 + f2;
        }
        if (tabCount < i)
        {
            layoutparams.height = (int)((float)AppCore.getInstance().getDeviceHeight() - f) / tabCount;
        } else
        {
            layoutparams.height = (int)((float)AppCore.getInstance().getDeviceHeight() - f) / i;
        }
        tabsContainer.addView(tabview.getView(), layoutparams);
    }

    public void clearTabs()
    {
        TabView tabview;
        for (Iterator iterator = tabs.iterator(); iterator.hasNext(); tabsContainer.removeView(tabview.getView()))
        {
            tabview = (TabView)iterator.next();
        }

        tabsContainer.removeAllViewsInLayout();
        tabs.clear();
    }

    public long getCurrentTab()
    {
        return currentTabId;
    }

    public ViewGroup getLayout()
    {
        return tabRootLayout;
    }

    public boolean openFirstTab()
    {
        boolean flag = false;
        if (tabs.size() > 0)
        {
            ((TabView)tabs.get(0)).getView().performClick();
            flag = true;
        }
        return flag;
    }

    public void resetTabsSelection()
    {
        for (Iterator iterator = tabs.iterator(); iterator.hasNext(); ((TabView)iterator.next()).setSelected(false)) { }
        isSelectionSet = false;
    }

    public void setActiveTab(long l)
    {
        resetTabsSelection();
        Iterator iterator = tabs.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            TabView tabview = (TabView)iterator.next();
            if (!tabview.shouldBeSelectedForView(l))
            {
                continue;
            }
            tabview.setSelected(true);
            isSelectionSet = true;
            currentTabId = l;
            break;
        } while (true);
        if (!isSelectionSet && tabs.size() > 0)
        {
            ((TabView)tabs.get(tabs.size() - 1)).setSelected(true);
            isSelectionSet = true;
        }
    }

    public void setTabCount(int i)
    {
        tabCount = i;
    }

}
