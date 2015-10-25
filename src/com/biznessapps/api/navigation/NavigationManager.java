// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api.navigation;

import android.app.Activity;
import android.content.Intent;
import android.view.ViewGroup;
import com.biznessapps.api.AppCore;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.more.Tab;
import com.biznessapps.more.TabManager;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.api.navigation:
//            TabViewSettings, TabView, NavigationBar, TabButton

public class NavigationManager
{

    public static final int DEFAULT_COLUMNS_COUNT = 5;
    public static final int DEFAULT_ROWS_COUNT = 1;
    public static final int DEFAULT_TAB_LIMIT = 5;
    public static final int ROWS_LIMIT = 4;
    private static final int SIDE_TAB_LIMIT = 6;
    private static List tabsItems;
    private final Activity activity;
    private NavigationBar navigationBar;
    private List rowTabsItems;
    private int tabLimit;
    private boolean useUnlimitTabCount;
    private boolean withOldDesign;

    public NavigationManager(Activity activity1)
    {
        tabLimit = 5;
        activity = activity1;
        initNavigationBar(1);
        withOldDesign = true;
    }

    public NavigationManager(Activity activity1, int i)
    {
        tabLimit = 5;
        activity = activity1;
        initNavigationBar(i);
    }

    public NavigationManager(Activity activity1, boolean flag)
    {
        tabLimit = 5;
        activity = activity1;
        initNavigationBar(1);
        withOldDesign = flag;
    }

    private void addNewTab(Tab tab, String s, boolean flag)
    {
        tab.setLabel(s);
        final Intent comingIntent = ApiUtils.getTabIntent(activity.getApplicationContext(), tab, null, null);
        TabViewSettings tabviewsettings = new TabViewSettings();
        AppSettings appsettings = AppCore.getInstance().getAppSettings();
        float f;
        String s1;
        String s2;
        if (tab.hasCustomDesign())
        {
            s1 = (new StringBuilder()).append(tab.getTabIcon()).append(tab.getImage()).toString();
        } else
        {
            s1 = (new StringBuilder()).append(appsettings.getTabIcon()).append(tab.getImage()).toString();
        }
        if (tab.hasCustomDesign())
        {
            flag = tab.isShowText();
        } else
        {
            flag = appsettings.isShowText();
        }
        tabviewsettings.setShowText(flag);
        if (tab.hasCustomDesign())
        {
            s2 = tab.getTabTint();
        } else
        {
            s2 = appsettings.getTabTint();
        }
        tabviewsettings.setTabTint(s2);
        if (tab.hasCustomDesign())
        {
            f = tab.getTabTintOpacity();
        } else
        {
            f = appsettings.getTabTintOpacity();
        }
        tabviewsettings.setTabTintOpacity(f);
        if (tab.hasCustomDesign())
        {
            s2 = tab.getTabText();
        } else
        {
            s2 = appsettings.getTabText();
        }
        tabviewsettings.setTabTextColor(s2);
        if (tab.hasCustomDesign())
        {
            s2 = tab.getTabSrc();
        } else
        {
            s2 = appsettings.getTabSrc();
        }
        tabviewsettings.setTabBgUrl(s2);
        tabviewsettings.setTabName(s);
        tabviewsettings.setTabId(tab.getId());
        s = new TabView(activity.getApplicationContext(), s1, new Runnable() {

            final NavigationManager this$0;
            final Intent val$comingIntent;

            public void run()
            {
                onViewChanged(comingIntent);
            }

            
            {
                this$0 = NavigationManager.this;
                comingIntent = intent;
                super();
            }
        }, withOldDesign, tabviewsettings);
        if (StringUtils.isEmpty(tab.getTabId()) && StringUtils.isEmpty(tab.getViewController()))
        {
            s.getView().setVisibility(4);
        }
        navigationBar.addTab(s, tabLimit);
    }

    public static void clear()
    {
        if (tabsItems != null)
        {
            tabsItems.clear();
        }
    }

    public static List getTabsItems()
    {
        return tabsItems;
    }

    private void goToNewView(Intent intent)
    {
        activity.startActivity(intent);
    }

    private void initNavigationBar(int i)
    {
        navigationBar = new NavigationBar(activity.getApplicationContext(), i);
    }

    private void onViewChanged(Intent intent)
    {
        navigationBar.resetTabsSelection();
        goToNewView(intent);
    }

    public static void setTabsItems(List list)
    {
        tabsItems = list;
    }

    public void addLayoutTo(ViewGroup viewgroup)
    {
        viewgroup.addView(navigationBar.getLayout());
    }

    public void clearTabs()
    {
        navigationBar.clearTabs();
    }

    public long getCurrentTabSelection()
    {
        return navigationBar.getCurrentTab();
    }

    public List getRowTabsItems()
    {
        return rowTabsItems;
    }

    public boolean openFirstTab()
    {
        return navigationBar.openFirstTab();
    }

    public void resetTabsSelection()
    {
        navigationBar.resetTabsSelection();
    }

    public void setRowTabsItems(List list)
    {
        rowTabsItems = list;
        setTabCount(list.size());
    }

    public void setSideTabLimit()
    {
        tabLimit = 6;
    }

    public void setTabCount(int i)
    {
        navigationBar.setTabCount(i);
    }

    public void setTabSelection(long l)
    {
        navigationBar.setActiveTab(l);
    }

    public void setTabsLimit(int i)
    {
        tabLimit = i;
    }

    public void setUseUnlimitTabCount(boolean flag)
    {
        useUnlimitTabCount = flag;
    }

    public void updateTabs()
    {
        if (rowTabsItems == null)
        {
            rowTabsItems = new ArrayList();
        }
        Tab tab = AppCore.getInstance().getAppSettings().getMoreTab();
        int i = 1;
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = rowTabsItems.iterator(); iterator.hasNext();)
        {
            Tab tab1 = (Tab)iterator.next();
            if (i < tabLimit || rowTabsItems.size() == tabLimit || useUnlimitTabCount)
            {
                addNewTab(tab1, tab1.getLabel(), false);
                i++;
            } else
            {
                arraylist.add(new TabButton(tab1));
            }
        }

        if (!arraylist.isEmpty())
        {
            TabManager.getInstance().setMoreTabsList(arraylist);
            addNewTab(tab, tab.getLabel(), true);
        }
    }

    public boolean useUnlimitTabCount()
    {
        return useUnlimitTabCount;
    }

}
