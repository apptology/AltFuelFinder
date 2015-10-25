// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.contact;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;
import com.biznessapps.common.activities.CommonFragmentActivity;
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

// Referenced classes of package com.biznessapps.contact:
//            ContactListAdapter

public class ContactsListFragment extends CommonListFragment
{

    public ContactsListFragment()
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
            String s = list.getCity();
            String s1 = list.getAddress1();
            if (StringUtils.isNotEmpty(s) && s.toLowerCase().contains(searchQuery.toLowerCase()))
            {
                arraylist.add(list);
            } else
            if (StringUtils.isNotEmpty(s1) && s1.toLowerCase().contains(searchQuery.toLowerCase()))
            {
                arraylist.add(list);
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void plugListView(Activity activity)
    {
        Object obj = getFilteredData(items);
        if (ApiUtils.hasNotData(((List) (obj))))
        {
            listView.setAdapter(null);
            ViewUtils.showCustomToast(activity.getApplicationContext(), getString(com.biznessapps.layout.R.string.nothing_found));
            return;
        }
        LocationEntity locationentity = null;
        LinkedList linkedlist = new LinkedList();
        for (Iterator iterator = ((List) (obj)).iterator(); iterator.hasNext(); linkedlist.add(getWrappedItem(((com.biznessapps.common.entities.CommonListEntity) (obj)), linkedlist)))
        {
            obj = (LocationEntity)iterator.next();
            if (((LocationEntity) (obj)).getId().equalsIgnoreCase(itemId))
            {
                locationentity = ((LocationEntity) (obj));
            }
        }

        obj = new ContactListAdapter(activity.getApplicationContext(), linkedlist, settings);
        listView.setAdapter(((android.widget.ListAdapter) (obj)));
        initListViewListener();
        startContactActivity(activity, locationentity);
    }

    private void startContactActivity(Activity activity, LocationEntity locationentity)
    {
        if (locationentity != null)
        {
            Intent intent = new Intent(activity.getApplicationContext(), ActivitySelector.getActivityClass("CONTACTS_FRAGMENT"));
            intent.putExtra("LOCATION_ID", locationentity.getId());
            intent.putExtra("TAB_FRAGMENT", "CONTACTS_FRAGMENT");
            intent.putExtra("TAB_UNIQUE_ID", ((CommonFragmentActivity)activity).getTabId());
            intent.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
            startActivity(intent);
        }
    }

    protected boolean canUseCachedData()
    {
        items = (List)cacher().getData((new StringBuilder()).append("LOCATION_LIST_PROPERTY").append(tabId).toString());
        return items != null;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.search_list_layout;
    }

    protected String getRequestUrl()
    {
        return String.format("location_list.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (LocationEntity)adapterview.getAdapter().getItem(i);
        startContactActivity(getHoldActivity(), adapterview);
    }

    protected boolean tryParseData(String s)
    {
        items = JsonParser.parseLocationList(s);
        return cacher().saveData((new StringBuilder()).append("LOCATION_LIST_PROPERTY").append(tabId).toString(), items);
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
