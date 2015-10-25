// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.search;

import android.content.Intent;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.more.Tab;
import com.biznessapps.news.SearchEntity;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.StringUtils;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.search:
//            GlobalSearchFragment

class this._cls0
    implements android.widget.Listener
{

    final GlobalSearchFragment this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        SearchEntity searchentity = (SearchEntity)adapterview.getAdapter().getItem(i);
        adapterview = AppCore.getInstance().getCachingManager().getTabList();
        view = null;
        Iterator iterator = adapterview.iterator();
        do
        {
            adapterview = view;
            if (!iterator.hasNext())
            {
                break;
            }
            adapterview = (Tab)iterator.next();
        } while (!adapterview.getTabId().equalsIgnoreCase(searchentity.getTabId()));
        if (StringUtils.isNotEmpty(searchentity.getNewsType()))
        {
            if (StringUtils.isNotEmpty(searchentity.getLink()))
            {
                adapterview = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("WEB_VIEW_SINGLE_FRAGMENT"));
                adapterview.putExtra("URL", searchentity.getLink());
                adapterview.putExtra("TAB_FRAGMENT", "WEB_VIEW_SINGLE_FRAGMENT");
                adapterview.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
                startActivity(adapterview);
            }
        } else
        if (adapterview != null)
        {
            adapterview = ApiUtils.getTabIntent(getApplicationContext(), adapterview, searchentity.getSectionId(), searchentity.getItemId());
            startActivity(adapterview);
            return;
        }
    }

    ntActivity()
    {
        this$0 = GlobalSearchFragment.this;
        super();
    }
}
