// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.app.Activity;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.navigation.TabView;
import com.biznessapps.api.navigation.TabViewSettings;
import com.biznessapps.common.entities.AppInfoEntity;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.more.Tab;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.utils:
//            ApiUtils

public class TabUtils
{

    private TabUtils()
    {
    }

    public static List getTabViews(List list, int i, Activity activity)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) 
        {
            Tab tab = (Tab)iterator.next();
            TabViewSettings tabviewsettings = new TabViewSettings();
            AppSettings appsettings = AppCore.getInstance().getAppSettings();
            float f;
            String s;
            boolean flag;
            if (tab.hasCustomDesign())
            {
                list = (new StringBuilder()).append(tab.getTabIcon()).append(tab.getImage()).toString();
            } else
            {
                list = (new StringBuilder()).append(appsettings.getTabIcon()).append(tab.getImage()).toString();
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
                s = tab.getTabTint();
            } else
            {
                s = appsettings.getTabTint();
            }
            tabviewsettings.setTabTint(s);
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
                s = tab.getTabText();
            } else
            {
                s = appsettings.getTabText();
            }
            tabviewsettings.setTabTextColor(s);
            if (tab.hasCustomDesign())
            {
                s = tab.getTabSrc();
            } else
            {
                s = appsettings.getTabSrc();
            }
            tabviewsettings.setTabBgUrl(s);
            tabviewsettings.setTabName(tab.getLabel());
            tabviewsettings.setTabId(tab.getId());
            arraylist.add(new TabView(activity.getApplicationContext(), list, new Runnable(activity, tab) {

                final Activity val$activity;
                final Tab val$tab;

                public void run()
                {
                    android.content.Intent intent = ApiUtils.getTabIntent(activity.getApplicationContext(), tab, null, null);
                    activity.startActivity(intent);
                }

            
            {
                activity = activity1;
                tab = tab1;
                super();
            }
            }, false, tabviewsettings, com.biznessapps.layout.R.layout.home_tab, i));
        }
        return arraylist;
    }

    public static void openLinkedTab(int i, Activity activity)
    {
        Object obj = AppCore.getInstance().getCachingManager();
        List list = ((CachingManager) (obj)).getAppInfo().getImagesLinkedTabs();
        if (list != null && i >= 0 && i < list.size())
        {
            Tab tab = (Tab)list.get(i);
            if (tab != null)
            {
                Object obj1 = null;
                Iterator iterator = ((CachingManager) (obj)).getTabList().iterator();
                do
                {
                    obj = obj1;
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    obj = (Tab)iterator.next();
                } while (!((Tab) (obj)).getTabId().equalsIgnoreCase(tab.getTabId()));
                if (obj != null)
                {
                    activity.startActivity(ApiUtils.getTabIntent(activity.getApplicationContext(), ((Tab) (obj)), tab.getSectionId(), tab.getItemId()));
                }
            }
        }
    }
}
