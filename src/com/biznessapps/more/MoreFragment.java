// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.more;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.api.navigation.TabButton;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.RefreshableListView;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.biznessapps.more:
//            MoreTabAdapter, TabManager

public class MoreFragment extends CommonListFragment
{

    private AppSettings appSettings;

    public MoreFragment()
    {
    }

    private void opentTab(Activity activity, TabButton tabbutton)
    {
        if (tabbutton != null)
        {
            startActivity(ApiUtils.getTabIntent(getApplicationContext(), tabbutton.getTab(), null, null));
        }
    }

    private void plugListView(Activity activity)
    {
        LinkedList linkedlist;
label0:
        {
            if (items != null && !items.isEmpty())
            {
                linkedlist = new LinkedList();
                if (items.size() != 1)
                {
                    break label0;
                }
                opentTab(activity, (TabButton)items.get(0));
                activity.finish();
            }
            return;
        }
        boolean flag = StringUtils.isNotEmpty(defineBgUrl(activity.getIntent()));
        for (Iterator iterator = items.iterator(); iterator.hasNext(); linkedlist.add(ViewUtils.getWrappedItem((TabButton)iterator.next(), linkedlist, settings, flag))) { }
        activity = new MoreTabAdapter(activity.getApplicationContext(), linkedlist, settings);
        listView.setAdapter(activity);
        initListViewListener();
    }

    protected boolean canUseCachedData()
    {
        appSettings = AppCore.getInstance().getAppSettings();
        return appSettings != null;
    }

    protected String defineBgUrl(Intent intent)
    {
        intent = null;
        if (!appSettings.hasMoreButtonNavigation()) goto _L2; else goto _L1
_L1:
        if (!AppCore.getInstance().isTablet()) goto _L4; else goto _L3
_L3:
        intent = appSettings.getMoreTabTabletBg();
_L6:
        return intent;
_L4:
        return appSettings.getMoreTabBg();
_L2:
        if (StringUtils.isNotEmpty(appSettings.getMoreTabBg()))
        {
            intent = AppCore.getInstance().getAppSettings().getAppId();
            if (AppCore.getInstance().isTablet())
            {
                return String.format("http://www.biznessapps.com/uploads/images/%s/xtra_imgs/%s", new Object[] {
                    intent, appSettings.getMoreTabTabletBg()
                });
            } else
            {
                return String.format("http://www.biznessapps.com/uploads/images/%s/xtra_imgs/%s", new Object[] {
                    intent, appSettings.getMoreTabBg()
                });
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected String getRequestUrl()
    {
        return String.format("settings.php?app_code=%s", new Object[] {
            cacher().getAppCode()
        });
    }

    protected void initSettingsData()
    {
        settings = AppCore.getInstance().getMoreTabUISettings();
        settings.setUseBlurEffect(AppCore.getInstance().getAppSettings().useBlurEffectForMoreTab());
    }

    protected void initTitleBar()
    {
        if (hasTitleBar())
        {
            ViewUtils.showMoreTitleBar((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.tab_title_container), getIntent(), settings);
        }
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (TabButton)adapterview.getAdapter().getItem(i);
        opentTab(getHoldActivity(), adapterview);
    }

    protected void preDataLoading(Activity activity)
    {
        super.preDataLoading(activity);
        items = TabManager.getInstance().getMoreTabsList();
    }

    protected boolean tryParseData(String s)
    {
        return appSettings != null;
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        plugListView(activity);
    }
}
