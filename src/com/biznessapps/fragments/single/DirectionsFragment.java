// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fragments.single;

import android.app.Activity;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.api.CachingManager;
import com.biznessapps.common.adapters.SimpleListType1Adapter;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class DirectionsFragment extends CommonListFragment
{

    public DirectionsFragment()
    {
    }

    private List getFilteredData(List list)
    {
        ArrayList arraylist = new ArrayList();
        if (!StringUtils.isEmpty(searchQuery)) goto _L2; else goto _L1
_L1:
        return list;
_L2:
        Iterator iterator = list.iterator();
        do
        {
            list = arraylist;
            if (!iterator.hasNext())
            {
                continue;
            }
            list = (LocationEntity)iterator.next();
            String s = list.getTitle();
            if (StringUtils.isNotEmpty(s) && s.toLowerCase().contains(searchQuery.toLowerCase()))
            {
                arraylist.add(list);
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void plugListView(Activity activity)
    {
        if (ApiUtils.hasNotData(items))
        {
            handleNoDataEvent(activity);
            return;
        }
        LinkedList linkedlist = new LinkedList();
        for (Iterator iterator = items.iterator(); iterator.hasNext(); linkedlist.add(getWrappedItem((LocationEntity)iterator.next(), linkedlist))) { }
        activity = new SimpleListType1Adapter(activity.getApplicationContext(), getFilteredData(linkedlist), settings);
        listView.setAdapter(activity);
        initListViewListener();
    }

    protected boolean canUseCachedData()
    {
        items = (List)cacher().getData((new StringBuilder()).append("DIRECTIONS_LIST_PROPERTY").append(tabId).toString());
        return items != null;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.search_list_layout;
    }

    protected String getRequestUrl()
    {
        return String.format("direction_list.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (LocationEntity)adapterview.getAdapter().getItem(i);
        if (adapterview != null)
        {
            ViewUtils.openGoogleMap(getApplicationContext(), adapterview.getLongitude(), adapterview.getLatitude());
        }
    }

    protected boolean tryParseData(String s)
    {
        items = JsonParser.parseLocationList(s);
        return cacher().saveData((new StringBuilder()).append("DIRECTIONS_LIST_PROPERTY").append(tabId).toString(), items);
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
