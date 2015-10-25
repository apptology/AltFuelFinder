// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.common.style.BZButtonStyle;
import com.biznessapps.food_ordering.entities.PastOrderEntity;
import com.biznessapps.food_ordering.parser.FoodOrderingParser;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.RefreshableListView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.biznessapps.food_ordering:
//            PastOrderAdapter, FOUtils, FoodOrderingManager

public class FoodOrderMainFragment extends CommonListFragment
{

    private ImageView accountView;
    private boolean isFirstLoad;
    private Button searchByLocationButton;

    public FoodOrderMainFragment()
    {
        isFirstLoad = true;
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

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.fo_landing_screen;
    }

    protected String getRequestUrl()
    {
        return String.format("food_ordering_main.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    public View getViewForBg()
    {
        return root.findViewById(com.biznessapps.layout.R.id.container_layout);
    }

    protected List getViewsRef()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new WeakReference(accountView));
        arraylist.add(new WeakReference(searchByLocationButton));
        return arraylist;
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        accountView = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.account_view);
        searchByLocationButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.search_by_location_button);
        accountView.setOnClickListener(new android.view.View.OnClickListener() {

            final FoodOrderMainFragment this$0;

            public void onClick(View view)
            {
                view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_ACCOUNT_CONTROLLER"));
                view.putExtra("TAB_FRAGMENT", "FO_ACCOUNT_CONTROLLER");
                view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.account));
                view.putExtra("BG_URL_EXTRA", getApplicationContext);
                view.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
                startActivity(view);
            }

            
            {
                this$0 = FoodOrderMainFragment.this;
                super();
            }
        });
        searchByLocationButton.setOnClickListener(new android.view.View.OnClickListener() {

            final FoodOrderMainFragment this$0;

            public void onClick(View view)
            {
                view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_LOCATIONS"));
                view.putExtra("TAB_FRAGMENT", "FO_LOCATIONS");
                view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.fo_locations));
                view.putExtra("BG_URL_EXTRA", getApplicationContext);
                view.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
                view.setFlags(0x10000000);
                startActivity(view);
            }

            
            {
                this$0 = FoodOrderMainFragment.this;
                super();
            }
        });
        BZButtonStyle.getInstance(getApplicationContext()).apply(settings, searchByLocationButton);
        searchByLocationButton.setText(FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.fo_search_by_location));
        viewgroup = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.past_orders_view);
        FOUtils.setSectionHeader(settings, getApplicationContext(), viewgroup, com.biznessapps.layout.R.string.fo_past_orders);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        initViews(root);
        return root;
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        openOrderItem((PastOrderEntity)adapterview.getAdapter().getItem(i));
    }

    public void onResume()
    {
        super.onResume();
        if (!isFirstLoad)
        {
            loadData();
            return;
        } else
        {
            isFirstLoad = false;
            return;
        }
    }

    protected boolean tryParseData(String s)
    {
        items = FoodOrderingParser.parseFoodMainData(s).getPastOrders();
        return true;
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        plugListView(activity);
    }


}
