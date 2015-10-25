// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.locations;

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
import com.biznessapps.api.CachingManager;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.food_ordering.FOUtils;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.entities.CommonInfo;
import com.biznessapps.food_ordering.parser.FoodOrderingParser;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.RefreshableListView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.biznessapps.food_ordering.locations:
//            LocationAdapter

public class LocationsFragment extends CommonListFragment
{

    private ImageView mapButton;

    public LocationsFragment()
    {
    }

    private void openDetail(LocationEntity locationentity)
    {
        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_LOCATION_DETAIL"));
        intent.putExtra("TAB_FRAGMENT", "FO_LOCATION_DETAIL");
        intent.putExtra("BG_URL_EXTRA", bgUrl);
        intent.putExtra("LOCATION_ID", locationentity.getId());
        FoodOrderingManager.getInstance().setChosenLocation(locationentity);
        intent.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
        startActivity(intent);
    }

    private void plugListView(Activity activity)
    {
        if (items != null && !items.isEmpty())
        {
            activity = new LocationAdapter(activity.getApplicationContext(), ViewUtils.wrapWithItemSettings(items, settings), settings);
            listView.setAdapter(activity);
            initListViewListener();
            return;
        } else
        {
            handleNoDataEvent(activity);
            return;
        }
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.fo_locations;
    }

    protected String getRequestUrl()
    {
        return String.format("food_ordering_locations.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected List getViewsRef()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new WeakReference(mapButton));
        return arraylist;
    }

    protected void initSettingsData()
    {
        super.initSettingsData();
        bgUrl = FoodOrderingManager.getInstance().getCommonInfo().getBackground();
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        FOUtils.addLineSeparator(listView, getApplicationContext());
        mapButton = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.map_button);
        mapButton.setOnClickListener(new android.view.View.OnClickListener() {

            final LocationsFragment this$0;

            public void onClick(View view)
            {
                view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_LOCATIONS_MAP"));
                view.putExtra("TAB_FRAGMENT", "FO_LOCATIONS_MAP");
                view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.fo_locations));
                view.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
                startActivity(view);
                getHoldActivity().finish();
            }

            
            {
                this$0 = LocationsFragment.this;
                super();
            }
        });
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        initViews(root);
        loadBgUrl();
        return root;
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (LocationEntity)adapterview.getAdapter().getItem(i);
        if (adapterview.isAvailable())
        {
            openDetail(adapterview);
            return;
        } else
        {
            ViewUtils.showWarningDialog(getActivity(), com.biznessapps.layout.R.string.fo_no_available_service);
            return;
        }
    }

    protected boolean tryParseData(String s)
    {
        items = FoodOrderingParser.parseLocations(s);
        FoodOrderingManager.getInstance().setLocations(items);
        return true;
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        plugListView(activity);
    }
}
