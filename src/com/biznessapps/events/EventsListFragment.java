// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.events:
//            EventEntity, EventAdapter

public class EventsListFragment extends CommonListFragment
{

    public EventsListFragment()
    {
    }

    protected boolean canUseCachedData()
    {
        items = (List)cacher().getData((new StringBuilder()).append("EVENT_LIST_PROPERTY").append(tabId).toString());
        return items != null;
    }

    protected List getFilteredData(List list)
    {
        ArrayList arraylist = new ArrayList();
        if (!StringUtils.isEmpty(searchQuery)) goto _L2; else goto _L1
_L1:
        list = items;
_L4:
        return list;
_L2:
        Iterator iterator = items.iterator();
        do
        {
            list = arraylist;
            if (!iterator.hasNext())
            {
                continue;
            }
            list = (EventEntity)iterator.next();
            String s = list.getTitle();
            if (StringUtils.isNotEmpty(s) && s.toLowerCase().contains(searchQuery.toLowerCase()))
            {
                arraylist.add(list);
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.search_list_layout;
    }

    protected int getListItemLayoutId()
    {
        return com.biznessapps.layout.R.layout.list_event_v2_item;
    }

    protected String getNameOfEventDetailFragment()
    {
        return "EVENTS_DETAIL_FRAGMENT";
    }

    protected String getRequestUrl()
    {
        return String.format("events.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (EventEntity)adapterview.getAdapter().getItem(i);
        openEventItem(getHoldActivity(), adapterview);
    }

    protected void openEventItem(Activity activity, EventEntity evententity)
    {
        if (evententity != null && StringUtils.isNotEmpty(evententity.getId()))
        {
            Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass(getNameOfEventDetailFragment()));
            intent.putExtra("EVENT", evententity);
            intent.putExtra("TAB_UNIQUE_ID", ((CommonFragmentActivity)activity).getTabId());
            intent.putExtra("TAB_SPECIAL_ID", activity.getIntent().getStringExtra("TAB_SPECIAL_ID"));
            intent.putExtra("TAB_FRAGMENT", getNameOfEventDetailFragment());
            intent.putExtra("TAB_LABEL", evententity.getTitle());
            intent.putExtra("BG_URL_EXTRA", bgUrl);
            activity.startActivity(intent);
        }
    }

    protected void plugListView(Activity activity)
    {
        findPreloadedItem(items, itemId);
        Object obj = getFilteredData(items);
        if (ApiUtils.hasNotData(items))
        {
            handleNoDataEvent(activity);
        } else
        {
            ArrayList arraylist = new ArrayList();
            for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); arraylist.add(getWrappedItem((EventEntity)((Iterator) (obj)).next(), arraylist))) { }
            adapter = new EventAdapter(activity.getApplicationContext(), arraylist, getListItemLayoutId(), settings);
            listView.setAdapter(adapter);
            initListViewListener();
            if (preLoadedItem != null && ((EventEntity)preLoadedItem).isUseAgain())
            {
                openEventItem(activity, (EventEntity)preLoadedItem);
                ((EventEntity)preLoadedItem).setUseAgain(false);
                return;
            }
        }
    }

    protected boolean tryParseData(String s)
    {
        items = JsonParser.parseEvents(s);
        return cacher().saveData((new StringBuilder()).append("EVENT_LIST_PROPERTY").append(tabId).toString(), items);
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        plugListView(activity);
    }

    protected boolean useSearchBar()
    {
        return true;
    }
}
