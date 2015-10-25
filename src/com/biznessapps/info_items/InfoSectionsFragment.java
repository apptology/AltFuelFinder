// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.info_items;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.adapters.SeparatedListAdapter;
import com.biznessapps.common.adapters.SimpleListType1Adapter;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class InfoSectionsFragment extends CommonListFragment
{

    public InfoSectionsFragment()
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
            list = (CommonListEntity)iterator.next();
            String s = list.getTitle();
            if (StringUtils.isNotEmpty(s) && s.toLowerCase().contains(searchQuery.toLowerCase()))
            {
                arraylist.add(list);
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void openInfoItems(CommonListEntity commonlistentity, boolean flag)
    {
        if (commonlistentity != null && StringUtils.isNotEmpty(commonlistentity.getId()))
        {
            Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("infoitemsviewcontroller"));
            intent.putExtra("SECTION_ID", commonlistentity.getId());
            if (flag)
            {
                intent.putExtra("ITEM_ID", itemId);
            }
            intent.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
            intent.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
            intent.putExtra("TAB_FRAGMENT", "infoitemsviewcontroller");
            intent.putExtra("TAB_LABEL", commonlistentity.getTitle());
            startActivity(intent);
        }
    }

    private void plugListView(Activity activity)
    {
        Object obj = getFilteredData(items);
        if (ApiUtils.hasNotData(((List) (obj))))
        {
            handleNoDataEvent(activity);
            return;
        }
        CommonListEntity commonlistentity = null;
        adapter = new SeparatedListAdapter(activity.getApplicationContext(), com.biznessapps.layout.R.layout.section_header, settings);
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        Object obj1;
        for (Iterator iterator = ((List) (obj)).iterator(); iterator.hasNext(); linkedhashmap.put(obj, obj1))
        {
            CommonListEntity commonlistentity1 = (CommonListEntity)iterator.next();
            if (commonlistentity1.getId().equalsIgnoreCase(sectionId))
            {
                commonlistentity = commonlistentity1;
            }
            obj1 = commonlistentity1.getSection();
            obj = obj1;
            if (StringUtils.isEmpty(((String) (obj1))))
            {
                obj = "";
            }
            List list = (List)linkedhashmap.get(obj);
            obj1 = list;
            if (list == null)
            {
                obj1 = new LinkedList();
            }
            ((List) (obj1)).add(getWrappedItem(commonlistentity1, ((List) (obj1))));
        }

        obj = linkedhashmap.keySet().iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            String s = (String)((Iterator) (obj)).next();
            Object obj2 = (List)linkedhashmap.get(s);
            if (obj2 != null && ((List) (obj2)).size() > 0)
            {
                obj2 = new SimpleListType1Adapter(activity.getApplicationContext(), ((List) (obj2)), settings);
                ((SeparatedListAdapter)adapter).addSection(s, ((Adapter) (obj2)));
            }
        } while (true);
        listView.setAdapter(adapter);
        initListViewListener();
        openInfoItems(commonlistentity, true);
    }

    protected boolean canUseCachedData()
    {
        items = (List)cacher().getData((new StringBuilder()).append("INFO_SECTIONS_PROPERTY").append(tabId).toString());
        return items != null;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.search_list_layout;
    }

    protected String getRequestUrl()
    {
        return String.format("info_sections.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        openInfoItems((CommonListEntity)adapterview.getAdapter().getItem(i), false);
    }

    protected boolean tryParseData(String s)
    {
        items = JsonParser.parseInfoList(s);
        cacher().saveData((new StringBuilder()).append("INFO_SECTIONS_PROPERTY").append(tabId).toString(), items);
        return true;
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
