// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account.address;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ImageView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.food_ordering.FOUtils;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.account.AccountEntity;
import com.biznessapps.food_ordering.entities.CommonInfo;
import com.biznessapps.storage.StorageKeeper;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.RefreshableListView;
import java.util.List;

// Referenced classes of package com.biznessapps.food_ordering.account.address:
//            MyAddressAdapter

public class MyAddressesListFragment extends CommonListFragment
{

    private ImageView addButton;

    public MyAddressesListFragment()
    {
    }

    private void deleteAccount(AccountEntity accountentity)
    {
        StorageKeeper.instance().deleteFOAccount(accountentity.getNickName());
    }

    public static void openAccountItem(Activity activity, AccountEntity accountentity)
    {
        Intent intent = new Intent(activity.getApplicationContext(), ActivitySelector.getActivityClass("FO_MY_ADDRESS"));
        intent.putExtra("TAB_FRAGMENT", "FO_MY_ADDRESS");
        intent.putExtra("TAB_LABEL", activity.getString(com.biznessapps.layout.R.string.fo_my_addresses));
        intent.putExtra("ITEM_EXTRA", accountentity);
        intent.putExtra("TAB_SPECIAL_ID", activity.getIntent().getStringExtra("TAB_SPECIAL_ID"));
        activity.startActivity(intent);
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.fo_my_addresses;
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        FOUtils.addLineSeparator(listView, getApplicationContext());
        addButton = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.add_button);
        addButton.setOnClickListener(new android.view.View.OnClickListener() {

            final MyAddressesListFragment this$0;

            public void onClick(View view)
            {
                MyAddressesListFragment.openAccountItem(getHoldActivity(), null);
            }

            
            {
                this$0 = MyAddressesListFragment.this;
                super();
            }
        });
    }

    protected void loadBgUrl()
    {
        bgUrl = FoodOrderingManager.getInstance().getCommonInfo().getBackground();
        super.loadBgUrl();
    }

    protected void loadData()
    {
        Object obj = StorageKeeper.instance().getFOAccouns();
        if (obj != null && !((List) (obj)).isEmpty())
        {
            obj = new MyAddressAdapter(getApplicationContext(), ViewUtils.wrapWithItemSettings(((List) (obj)), settings), settings);
            listView.setAdapter(((android.widget.ListAdapter) (obj)));
            initListViewListener();
            return;
        } else
        {
            listView.setAdapter(null);
            return;
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        loadBgUrl();
        return root;
    }

    protected boolean onItemLongClick(final AdapterView item, View view, int i, long l)
    {
        item = (AccountEntity)item.getAdapter().getItem(i);
        ViewUtils.showDialog(getHoldActivity(), (new StringBuilder()).append(getString(com.biznessapps.layout.R.string.delete)).append("?").toString(), new Runnable() {

            final MyAddressesListFragment this$0;
            final AccountEntity val$item;

            public void run()
            {
                deleteAccount(item);
                loadData();
            }

            
            {
                this$0 = MyAddressesListFragment.this;
                item = accountentity;
                super();
            }
        });
        return true;
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (AccountEntity)adapterview.getAdapter().getItem(i);
        openAccountItem(getHoldActivity(), adapterview);
    }

    public void onResume()
    {
        super.onResume();
        loadData();
    }

}
