// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.app.Activity;
import android.view.View;
import com.biznessapps.api.CachingManager;
import com.biznessapps.more.Tab;
import com.biznessapps.utils.ApiUtils;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeScreenHelper

static final class val.activity
    implements android.view.r
{

    final Activity val$activity;
    final CachingManager val$cacher;
    final Tab val$tab;

    public void onClick(View view)
    {
        Object obj = null;
        Iterator iterator = val$cacher.getTabList().iterator();
        do
        {
            view = obj;
            if (!iterator.hasNext())
            {
                break;
            }
            view = (Tab)iterator.next();
        } while (!view.getTabId().equalsIgnoreCase(val$tab.getTabId()));
        if (view != null)
        {
            view = ApiUtils.getTabIntent(val$activity.getApplicationContext(), view, null, null);
            val$activity.startActivity(view);
        }
    }

    (CachingManager cachingmanager, Tab tab1, Activity activity1)
    {
        val$cacher = cachingmanager;
        val$tab = tab1;
        val$activity = activity1;
        super();
    }
}
