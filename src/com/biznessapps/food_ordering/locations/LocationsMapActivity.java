// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.locations;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonShareableMapActivity;
import com.biznessapps.common.entities.MapEntity;
import com.biznessapps.common.style.BZButtonStyle;
import com.biznessapps.food_ordering.FOUtils;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.ViewUtils;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.Marker;
import java.util.Map;

public class LocationsMapActivity extends CommonShareableMapActivity
{

    private ImageView listButton;
    private Button selectButton;
    private LocationEntity selectedLocation;

    public LocationsMapActivity()
    {
    }

    private void initViews()
    {
        listButton = (ImageView)findViewById(com.biznessapps.layout.R.id.list_button);
        listButton.setOnClickListener(new android.view.View.OnClickListener() {

            final LocationsMapActivity this$0;

            public void onClick(View view)
            {
                view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_LOCATIONS"));
                view.putExtra("TAB_FRAGMENT", "FO_LOCATIONS");
                view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.fo_locations));
                view.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
                startActivity(view);
                finish();
            }

            
            {
                this$0 = LocationsMapActivity.this;
                super();
            }
        });
        selectButton = (Button)findViewById(com.biznessapps.layout.R.id.select_this_location_button);
        selectButton.setOnClickListener(new android.view.View.OnClickListener() {

            final LocationsMapActivity this$0;

            public void onClick(View view)
            {
                if (selectedLocation != null)
                {
                    if (selectedLocation.isAvailable())
                    {
                        openDetail(selectedLocation);
                        return;
                    } else
                    {
                        ViewUtils.showWarningDialog(LocationsMapActivity.this, com.biznessapps.layout.R.string.fo_no_available_service);
                        return;
                    }
                } else
                {
                    ViewUtils.showWarningDialog(LocationsMapActivity.this, com.biznessapps.layout.R.string.location_missed_alert);
                    return;
                }
            }

            
            {
                this$0 = LocationsMapActivity.this;
                super();
            }
        });
        BZButtonStyle.getInstance(getApplicationContext()).apply(settings, selectButton);
        selectButton.setText(FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.fo_select_this_location));
        googleMap.setOnMarkerClickListener(new com.google.android.gms.maps.GoogleMap.OnMarkerClickListener() {

            final LocationsMapActivity this$0;

            public boolean onMarkerClick(Marker marker)
            {
                marker = (MapEntity)
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = LocationsMapActivity.this;
                super();
            }
        });
        ImageView imageview = (ImageView)findViewById(com.biznessapps.layout.R.id.location_ping);
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), imageview.getDrawable());
    }

    private void openDetail(LocationEntity locationentity)
    {
        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_LOCATION_DETAIL"));
        intent.putExtra("TAB_FRAGMENT", "FO_LOCATION_DETAIL");
        intent.putExtra("LOCATION_ID", locationentity.getId());
        FoodOrderingManager.getInstance().setChosenLocation(locationentity);
        intent.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
        startActivity(intent);
    }

    private void showAddressInfo(LocationEntity locationentity)
    {
        TextView textview = (TextView)findViewById(com.biznessapps.layout.R.id.location_city_text);
        TextView textview1 = (TextView)findViewById(com.biznessapps.layout.R.id.location_address_text);
        TextView textview2 = (TextView)findViewById(com.biznessapps.layout.R.id.distance_text);
        LocationUtils.setAddress(textview, textview1, locationentity);
        LocationUtils.setDistanceValue(getApplicationContext(), textview2, locationentity);
    }

    protected void defineMapItemClickAction(MapEntity mapentity)
    {
        if (mapentity instanceof LocationEntity)
        {
            selectedLocation = (LocationEntity)mapentity;
            showAddressInfo(selectedLocation);
        }
    }

    protected com.google.android.gms.maps.GoogleMap.InfoWindowAdapter getInfoAdapter()
    {
        return new com.google.android.gms.maps.GoogleMap.InfoWindowAdapter() {

            final LocationsMapActivity this$0;
            private final View view;

            public View getInfoContents(Marker marker)
            {
                return null;
            }

            public View getInfoWindow(Marker marker)
            {
                Object obj = (MapEntity)
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = LocationsMapActivity.this;
                super();
                view = getLayoutInflater().inflate(com.biznessapps.layout.R.layout.fo_map_item_dialog, null);
            }
        };
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.fo_locations_map;
    }

    public void onCreate(Bundle bundle)
    {
        onCreate(bundle);
        initViews();
        addPins(FoodOrderingManager.getInstance().getLocations());
    }

    protected boolean useMapInfoWindow()
    {
        return true;
    }




}
