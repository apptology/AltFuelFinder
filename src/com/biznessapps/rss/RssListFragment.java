// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.rss;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.adapters.SeparatedListAdapter;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.biznessapps.rss:
//            RssEntity, RssAdapter

public class RssListFragment extends CommonListFragment
{

    public RssListFragment()
    {
    }

    private void plugListView(Activity activity)
    {
        if (ApiUtils.hasNotData(items))
        {
            handleNoDataEvent(activity);
            return;
        }
        adapter = new SeparatedListAdapter(activity.getApplicationContext(), com.biznessapps.layout.R.layout.section_header, settings);
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        String s;
        Object obj;
        for (Iterator iterator = items.iterator(); iterator.hasNext(); linkedhashmap.put(s, obj))
        {
            RssEntity rssentity1 = (RssEntity)iterator.next();
            obj = rssentity1.getSection();
            s = ((String) (obj));
            if (StringUtils.isEmpty(((String) (obj))))
            {
                s = "";
            }
            List list = (List)linkedhashmap.get(s);
            obj = list;
            if (list == null)
            {
                obj = new LinkedList();
            }
            ((List) (obj)).add(getWrappedItem(rssentity1, ((List) (obj))));
        }

        Object obj1 = linkedhashmap.keySet();
        LinkedList linkedlist = new LinkedList();
        obj1 = ((Set) (obj1)).iterator();
        do
        {
            if (!((Iterator) (obj1)).hasNext())
            {
                break;
            }
            String s1 = (String)((Iterator) (obj1)).next();
            List list1 = (List)linkedhashmap.get(s1);
            if (list1 != null && list1.size() > 0)
            {
                RssAdapter rssadapter = new RssAdapter(activity, list1, com.biznessapps.layout.R.layout.rss_row, settings);
                ((SeparatedListAdapter)adapter).addSection(s1, rssadapter);
                int i = 0;
                while (i < list1.size()) 
                {
                    RssEntity rssentity = (RssEntity)list1.get(i);
                    if (i == 0)
                    {
                        rssentity.setShowSection(true);
                    }
                    linkedlist.add(rssentity);
                    i++;
                }
            }
        } while (true);
        activity = new RssAdapter(activity, linkedlist, com.biznessapps.layout.R.layout.rss_row, settings);
        listView.setAdapter(activity);
        initListViewListener();
    }

    protected boolean canUseCachedData()
    {
        items = (List)cacher().getData((new StringBuilder()).append("RSS_LIST_PROPERTY").append(tabId).toString());
        return items != null;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.rss_list_layout;
    }

    protected String getRequestUrl()
    {
        return String.format("rss.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (RssEntity)adapterview.getAdapter().getItem(i);
        if (adapterview != null && StringUtils.isNotEmpty(adapterview.getId()))
        {
            view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("WEB_VIEW_SINGLE_FRAGMENT"));
            view.putExtra("TAB_FRAGMENT", "WEB_VIEW_SINGLE_FRAGMENT");
            view.putExtra("URL", adapterview.getLink());
            view.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
            view.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
            view.putExtra("TAB_LABEL", getIntent().getStringExtra("TAB_LABEL"));
            startActivity(view);
        }
    }

    protected boolean tryParseData(String s)
    {
        items = JsonParser.parseRssList(s);
        return cacher().saveData((new StringBuilder()).append("RSS_LIST_PROPERTY").append(tabId).toString(), items);
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        plugListView(activity);
    }
}
