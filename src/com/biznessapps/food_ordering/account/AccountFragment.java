// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.food_ordering.FOUtils;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.entities.CommonInfo;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.biznessapps.food_ordering.account:
//            AccountEntity, AccountAdapter

public class AccountFragment extends CommonListFragment
{

    public AccountFragment()
    {
    }

    private void openAccountItem(AccountEntity accountentity)
    {
        int i = accountentity.getType();
        if (i == 1)
        {
            openTab("FO_PAST_ORDERS_LIST", com.biznessapps.layout.R.string.fo_past_orders);
        } else
        if (i == 2)
        {
            openTab("FO_MY_ADDRESSES", com.biznessapps.layout.R.string.fo_my_addresses);
            return;
        }
    }

    private void openTab(String s, int i)
    {
        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass(s));
        intent.putExtra("TAB_FRAGMENT", s);
        intent.putExtra("TAB_LABEL", getString(i));
        intent.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
        startActivity(intent);
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        FOUtils.addLineSeparator(listView, getApplicationContext());
    }

    protected void loadBgUrl()
    {
        bgUrl = FoodOrderingManager.getInstance().getCommonInfo().getBackground();
        super.loadBgUrl();
    }

    protected void loadData()
    {
        Object obj = new ArrayList();
        AccountEntity accountentity = new AccountEntity();
        accountentity.setImageId(com.biznessapps.layout.R.drawable.fo_past_orders_icon);
        accountentity.setTitle(getString(com.biznessapps.layout.R.string.fo_past_orders));
        accountentity.setType(1);
        ((List) (obj)).add(accountentity);
        accountentity = new AccountEntity();
        accountentity.setImageId(com.biznessapps.layout.R.drawable.fo_my_addresses);
        accountentity.setTitle(getString(com.biznessapps.layout.R.string.fo_my_addresses));
        accountentity.setType(2);
        ((List) (obj)).add(accountentity);
        obj = new AccountAdapter(getApplicationContext(), ViewUtils.wrapWithItemSettings(((List) (obj)), settings), settings);
        listView.setAdapter(((android.widget.ListAdapter) (obj)));
        initListViewListener();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        loadBgUrl();
        return root;
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        openAccountItem((AccountEntity)adapterview.getAdapter().getItem(i));
    }
}
