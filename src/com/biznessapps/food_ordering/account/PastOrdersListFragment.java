// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.PastOrderAdapter;
import com.biznessapps.food_ordering.entities.CommonInfo;
import com.biznessapps.food_ordering.entities.PastOrderEntity;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.RefreshableListView;
import java.util.List;

public class PastOrdersListFragment extends CommonListFragment
{

    public PastOrdersListFragment()
    {
    }

    private void openOrderItem(PastOrderEntity pastorderentity)
    {
        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_PAST_ORDERS_DETAIL"));
        intent.putExtra("TAB_FRAGMENT", "FO_PAST_ORDERS_DETAIL");
        intent.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.fo_details));
        intent.putExtra("BG_URL_EXTRA", bgUrl);
        intent.putExtra("ITEM_EXTRA", pastorderentity);
        intent.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
        startActivity(intent);
    }

    private void plugListView(Activity activity)
    {
        if (items != null && !items.isEmpty())
        {
            activity = new PastOrderAdapter(activity.getApplicationContext(), ViewUtils.wrapWithItemSettings(items, settings), settings);
            listView.setAdapter(activity);
            initListViewListener();
            return;
        } else
        {
            listView.setAdapter(null);
            return;
        }
    }

    protected void initSettingsData()
    {
        super.initSettingsData();
        items = FoodOrderingManager.getInstance().getPastOrders();
    }

    protected void loadBgUrl()
    {
        bgUrl = FoodOrderingManager.getInstance().getCommonInfo().getBackground();
        super.loadBgUrl();
    }

    protected void loadData()
    {
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        updateControlsWithData(getHoldActivity());
        return root;
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        openOrderItem((PastOrderEntity)adapterview.getAdapter().getItem(i));
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        plugListView(getHoldActivity());
    }
}
