// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.menu_items;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.entities.AnalyticEntity;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.biznessapps.menu_items:
//            MenuSectionEntities, MenuSectionItemAdapter

public class MenuSectionItemsListFragment extends CommonListFragment
{

    private String menuItemId;

    public MenuSectionItemsListFragment()
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
            list = (MenuSectionEntities)iterator.next();
            String s = list.getTitle();
            String s1 = list.getPrice();
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

    private void openMenuItems(MenuSectionEntities menusectionentities)
    {
        if (menusectionentities != null && StringUtils.isNotEmpty(menusectionentities.getId()))
        {
            Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("menuviewcontroller"));
            intent.putExtra("MENU_ITEM_DETAIL_ID", menusectionentities.getId());
            intent.putExtra("SECTION_ID", menuItemId);
            intent.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
            intent.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
            intent.putExtra("TAB_FRAGMENT", "menuviewcontroller");
            intent.putExtra("TAB_LABEL", menusectionentities.getTitle());
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
        MenuSectionEntities menusectionentities = null;
        LinkedList linkedlist = new LinkedList();
        for (Iterator iterator = ((List) (obj)).iterator(); iterator.hasNext(); linkedlist.add(getWrappedItem(((com.biznessapps.common.entities.CommonListEntity) (obj)), linkedlist)))
        {
            obj = (MenuSectionEntities)iterator.next();
            if (((MenuSectionEntities) (obj)).getId().equalsIgnoreCase(itemId))
            {
                menusectionentities = ((MenuSectionEntities) (obj));
            }
        }

        activity = new MenuSectionItemAdapter(activity.getApplicationContext(), linkedlist, com.biznessapps.layout.R.layout.menu_row, settings);
        listView.setAdapter(activity);
        initListViewListener();
        openMenuItems(menusectionentities);
    }

    protected boolean canUseCachedData()
    {
        items = (List)cacher().getData((new StringBuilder()).append("MENU_SECTIONS_PROPERTY").append(menuItemId).append(tabId).toString());
        return items != null;
    }

    protected String defineBgUrl(Intent intent)
    {
        String s1 = super.defineBgUrl(intent);
        String s = s1;
        if (StringUtils.isEmpty(s1))
        {
            s = intent.getStringExtra("BG_URL_EXTRA");
        }
        return s;
    }

    protected AnalyticEntity getAnalyticData()
    {
        AnalyticEntity analyticentity = super.getAnalyticData();
        analyticentity.setCatId(getIntent().getStringExtra("MENU_ITEM_ID"));
        return analyticentity;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.search_list_layout;
    }

    protected String getRequestUrl()
    {
        return String.format("menu_items.php?id=%s&tab_id=%s", new Object[] {
            menuItemId, tabId
        });
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        openMenuItems((MenuSectionEntities)adapterview.getAdapter().getItem(i));
    }

    protected void preDataLoading(Activity activity)
    {
        super.preDataLoading(activity);
        menuItemId = activity.getIntent().getStringExtra("MENU_ITEM_ID");
    }

    protected boolean tryParseData(String s)
    {
        items = JsonParser.parseMenuItemsList(s);
        return cacher().saveData((new StringBuilder()).append("MENU_SECTIONS_PROPERTY").append(menuItemId).append(tabId).toString(), items);
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
