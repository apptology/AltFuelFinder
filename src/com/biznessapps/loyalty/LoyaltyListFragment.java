// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.app.Activity;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.components.SearchTopBar;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.fragments.CommonListFragmentNew;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyCommonEntity, LoyaltyV1Entity, LoyaltyV2Entity, LoyaltyAdapter, 
//            LoyaltyJsonParser

public class LoyaltyListFragment extends CommonListFragmentNew
{

    private boolean updateNextTime;

    public LoyaltyListFragment()
    {
        updateNextTime = false;
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
            list = (LoyaltyCommonEntity)iterator.next();
            String s = list.getTitle();
            if (StringUtils.isNotEmpty(s) && s.toLowerCase(Locale.getDefault()).contains(searchQuery.toLowerCase(Locale.getDefault())))
            {
                arraylist.add(list);
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void openLoayltyItem(LoyaltyCommonEntity loyaltycommonentity)
    {
        searchTopBar.closeKeyboard();
        if (loyaltycommonentity != null)
        {
            Intent intent;
            if (loyaltycommonentity instanceof LoyaltyV1Entity)
            {
                intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("LOYALTY_V1_DETAIL_FRAGMENT"));
                intent.putExtra("TAB_FRAGMENT", "LOYALTY_V1_DETAIL_FRAGMENT");
            } else
            {
                Assert.assertTrue(loyaltycommonentity instanceof LoyaltyV2Entity);
                intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("LOYALTY_V2_DETAIL_FRAGMENT"));
                intent.putExtra("TAB_FRAGMENT", "LOYALTY_V2_DETAIL_FRAGMENT");
            }
            intent.putExtra("ITEM_EXTRA", loyaltycommonentity);
            intent.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
            intent.putExtra("TAB_LABEL", loyaltycommonentity.getTitle());
            intent.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
            intent.putExtra("BG_URL_EXTRA", bgUrl);
            startActivity(intent);
        }
    }

    private void plugListView(Activity activity, List list)
    {
        if (getActivity() != null)
        {
            if (ApiUtils.hasNotData(list))
            {
                handleNoDataEvent(activity);
                return;
            }
            LoyaltyCommonEntity loyaltycommonentity = null;
            LinkedList linkedlist = new LinkedList();
            LoyaltyCommonEntity loyaltycommonentity1;
            for (Iterator iterator = list.iterator(); iterator.hasNext(); linkedlist.add(getWrappedItem(loyaltycommonentity1, linkedlist)))
            {
                loyaltycommonentity1 = (LoyaltyCommonEntity)iterator.next();
                if (loyaltycommonentity1.getId().equalsIgnoreCase(itemId))
                {
                    loyaltycommonentity = loyaltycommonentity1;
                }
            }

            adapter = new LoyaltyAdapter(activity.getApplicationContext(), list, settings);
            listView.setAdapter(adapter);
            initListViewListener();
            if (list.size() == 1)
            {
                loyaltycommonentity = (LoyaltyCommonEntity)list.get(0);
            }
            if (loyaltycommonentity != null)
            {
                openLoayltyItem(loyaltycommonentity);
                getActivity().finish();
                return;
            }
        }
    }

    protected boolean canUseCachedData()
    {
        return false;
    }

    protected String defineBgUrl(Intent intent)
    {
        if (items != null && !items.isEmpty())
        {
            bgUrl = ((LoyaltyCommonEntity)items.get(0)).getBackground();
        }
        return bgUrl;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.search_list_layout;
    }

    protected String getRequestUrl()
    {
        String s1 = AppCore.getInstance().getAppSettings().getV6DeviceUserId(getActivity());
        String s = s1;
        if (s1 == null)
        {
            s = "";
        }
        return String.format("loyalties.php?app_code=%s&tab_id=%s&alter_device_user_id=%s", new Object[] {
            cacher().getAppCode(), tabId, s
        });
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        openLoayltyItem((LoyaltyCommonEntity)adapterview.getAdapter().getItem(i));
    }

    public void onResume()
    {
        super.onResume();
        if (updateNextTime)
        {
            loadData();
        }
        updateNextTime = true;
    }

    protected boolean tryParseData(String s)
    {
        items = LoyaltyJsonParser.getInstance().parseLoyaltyList(s);
        cacher().saveData((new StringBuilder()).append("LOYALTY_LIST_PROPERTY").append(tabId).toString(), items);
        return true;
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        plugListView(activity, getFilteredData(items));
    }

    protected boolean useSearchBar()
    {
        return true;
    }
}
