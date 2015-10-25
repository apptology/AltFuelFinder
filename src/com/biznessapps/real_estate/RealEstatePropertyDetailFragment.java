// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.real_estate;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.localization.StringsSource;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.HeaderUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.real_estate:
//            RealEstateEntity, RealEstatePropertyAdapter

public class RealEstatePropertyDetailFragment extends CommonFragment
{

    private RealEstateEntity item;

    public RealEstatePropertyDetailFragment()
    {
    }

    private boolean checkOnCorrectness()
    {
        item = (RealEstateEntity)getIntent().getSerializableExtra("ITEM_EXTRA");
        return item != null;
    }

    private void customizeContainer(ViewGroup viewgroup, List list)
    {
        RefreshableListView refreshablelistview = (RefreshableListView)viewgroup.findViewById(com.biznessapps.layout.R.id.list_view);
        if (list == null || list.isEmpty() || StringUtils.isEmpty((String)list.get(0)))
        {
            viewgroup.setVisibility(8);
            return;
        }
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(ViewUtils.getWrappedItem(new CommonListEntity(list), arraylist, settings)))
        {
            String s = (String)iterator.next();
            String s1 = StringsSource.getInstance().getValue(getApplicationContext(), s);
            list = s1;
            if (s1 == null)
            {
                list = s;
            }
        }

        HeaderUtils.customizeContainer(viewgroup, ((CommonListEntity)arraylist.get(arraylist.size() - 1)).getItemColor(), settings);
        refreshablelistview.setAdapter(new RealEstatePropertyAdapter(getApplicationContext(), arraylist, settings));
        refreshablelistview.setExpandOn(true);
    }

    private void initSections()
    {
        Object obj = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.rooms_container);
        HeaderUtils.imageContainerCustomization(((ViewGroup) (obj)), settings);
        customizeContainer(((ViewGroup) (obj)), item.getRooms());
        customizeContainer((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.heating_fuel_container), item.getHeatingFuel());
        customizeContainer((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.roof_container), item.getRoof());
        customizeContainer((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.outdoor_amenities_container), item.getOutdoorAmenities());
        obj = new ArrayList();
        if (StringUtils.isNotEmpty(item.getArchitecturalStyle()))
        {
            ((List) (obj)).add(item.getArchitecturalStyle());
        }
        customizeContainer((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.architectural_style_container), ((List) (obj)));
        customizeContainer((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.appliances_container), item.getAppliances());
        obj = new ArrayList();
        if (StringUtils.isNotEmpty(item.getBasement()))
        {
            ((List) (obj)).add(item.getBasement());
        }
        customizeContainer((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.basement_container), ((List) (obj)));
        customizeContainer((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.exterior_container), item.getExterior());
        customizeContainer((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.parking_container), item.getParking());
        customizeContainer((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.floor_covering_container), item.getFloorCovering());
        customizeContainer((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.building_amenities_container), item.getBuildingAmenities());
        customizeContainer((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.heating_type_container), item.getHeatingTypes());
        customizeContainer((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.cooling_type_container), item.getCoolingTypes());
        customizeContainer((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.indoor_features_container), item.getIndoorFeature());
        customizeContainer((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.view_container), item.getView());
        ((TextView)root.findViewById(com.biznessapps.layout.R.id.rooms_container).findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.real_estate_rooms);
        ((TextView)root.findViewById(com.biznessapps.layout.R.id.heating_fuel_container).findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.real_estate_heating_fuel);
        ((TextView)root.findViewById(com.biznessapps.layout.R.id.roof_container).findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.real_estate_roof);
        ((TextView)root.findViewById(com.biznessapps.layout.R.id.outdoor_amenities_container).findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.real_estate_outdoor_amenities);
        ((TextView)root.findViewById(com.biznessapps.layout.R.id.architectural_style_container).findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.real_estate_architectural_style);
        ((TextView)root.findViewById(com.biznessapps.layout.R.id.appliances_container).findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.real_estate_appliances);
        ((TextView)root.findViewById(com.biznessapps.layout.R.id.basement_container).findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.real_estate_basement);
        ((TextView)root.findViewById(com.biznessapps.layout.R.id.exterior_container).findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.real_estate_exterior);
        ((TextView)root.findViewById(com.biznessapps.layout.R.id.parking_container).findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.real_estate_parking);
        ((TextView)root.findViewById(com.biznessapps.layout.R.id.floor_covering_container).findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.real_estate_floor_covering);
        ((TextView)root.findViewById(com.biznessapps.layout.R.id.building_amenities_container).findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.real_estate_building_amenities);
        ((TextView)root.findViewById(com.biznessapps.layout.R.id.heating_type_container).findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.real_estate_heating_type);
        ((TextView)root.findViewById(com.biznessapps.layout.R.id.cooling_type_container).findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.real_estate_cooling_type);
        ((TextView)root.findViewById(com.biznessapps.layout.R.id.indoor_features_container).findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.real_estate_indoor_features);
        ((TextView)root.findViewById(com.biznessapps.layout.R.id.view_container).findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.real_estate_view);
    }

    private void initViews()
    {
        initSections();
        if (!item.hasAdditionInfo())
        {
            ViewUtils.showShortToast(getHoldActivity(), com.biznessapps.layout.R.string.no_additional_info);
        }
    }

    protected void loadBgUrl()
    {
        View view = root.findViewById(com.biznessapps.layout.R.id.root_layout);
        ViewUtils.setRootBgColor(view, settings);
        if (item != null && StringUtils.isNotEmpty(item.getBackground()))
        {
            String s = item.getBackground();
            AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadBgImage(s, view, settings);
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.real_estate_property_detail_layout, null);
        if (!checkOnCorrectness())
        {
            getHoldActivity().finish();
        }
        initSettingsData();
        loadBgUrl();
        initViews();
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        return root;
    }
}
