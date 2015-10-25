// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account.address;

import android.app.Activity;
import android.content.Intent;
import android.location.Address;
import android.location.Geocoder;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.api.UnModalAsyncTask;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.entities.MapEntity;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.common.style.BZButtonStyle;
import com.biznessapps.food_ordering.FOUtils;
import com.biznessapps.location.MapUtils;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ChooseLocationFragment extends CommonListFragment
{
    private class LoadAddressesTask extends UnModalAsyncTask
    {

        final ChooseLocationFragment this$0;

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected transient List doInBackground(String as[])
        {
            Geocoder geocoder = new Geocoder(getApplicationContext());
            Object obj = null;
            try
            {
                as = geocoder.getFromLocationName(as[0], 5);
            }
            // Misplaced declaration of an exception variable
            catch (String as[])
            {
                as.printStackTrace();
                as = obj;
            }
            return getConvertedAddresses(as);
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((List)obj);
        }

        protected void onPostExecute(List list)
        {
label0:
            {
                if (activity != null && (activity instanceof CommonFragmentActivity) && ((CommonFragmentActivity)activity).isActive())
                {
                    ((CommonFragmentActivity)activity).getProgressBarContainer().removeAllViews();
                    if (list == null || list.isEmpty())
                    {
                        break label0;
                    }
                    plugListView(getHoldActivity(), list);
                }
                return;
            }
            handleNoDataEvent(getHoldActivity());
        }

        protected void placeProgressBar()
        {
            if (activity != null && (activity instanceof CommonFragmentActivity))
            {
                ((CommonFragmentActivity)activity).getProgressBarContainer().addView(progressBar);
            }
        }

        public LoadAddressesTask(Activity activity, List list)
        {
            this$0 = ChooseLocationFragment.this;
            super(activity, list);
        }
    }


    private static final int MAX_RESULTS = 5;
    private GoogleMap googleMap;
    private Map markersHashMap;
    private Button selectButton;
    private LocationEntity selectedLocation;

    public ChooseLocationFragment()
    {
        markersHashMap = new HashMap();
    }

    private void addMapPoint(MapEntity mapentity)
    {
        if (StringUtils.isNotEmpty(mapentity.getLatitude()) && StringUtils.isNotEmpty(mapentity.getLongitude()))
        {
            Object obj = getMarkerOptions(new LatLng(Double.parseDouble(mapentity.getLatitude()), Double.parseDouble(mapentity.getLongitude())), mapentity);
            obj = googleMap.addMarker(((MarkerOptions) (obj)));
            markersHashMap.put(obj, mapentity);
            googleMap.setInfoWindowAdapter(getInfoAdapter());
            googleMap.setOnInfoWindowClickListener(new com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener() {

                final ChooseLocationFragment this$0;

                public void onInfoWindowClick(Marker marker)
                {
                    marker = (MapEntity)markersHashMap.get(marker);
                    showAddressInfo(marker);
                }

            
            {
                this$0 = ChooseLocationFragment.this;
                super();
            }
            });
        }
    }

    private List getConvertedAddresses(List list)
    {
        ArrayList arraylist = new ArrayList();
        if (list != null && !list.isEmpty())
        {
            list = list.iterator();
            do
            {
                if (!list.hasNext())
                {
                    break;
                }
                Address address = (Address)list.next();
                if (StringUtils.isNotEmpty(address.getCountryName()))
                {
                    LocationEntity locationentity = new LocationEntity();
                    locationentity.setTitle(String.format("%s %s", new Object[] {
                        address.getFeatureName(), address.getCountryName()
                    }));
                    locationentity.setAddress1(address.getFeatureName());
                    locationentity.setLatitude((new StringBuilder()).append("").append(address.getLatitude()).toString());
                    locationentity.setLongitude((new StringBuilder()).append("").append(address.getLongitude()).toString());
                    arraylist.add(locationentity);
                }
            } while (true);
        }
        return arraylist;
    }

    private com.google.android.gms.maps.GoogleMap.InfoWindowAdapter getInfoAdapter()
    {
        return new com.google.android.gms.maps.GoogleMap.InfoWindowAdapter() {

            final ChooseLocationFragment this$0;
            private final View view;

            public View getInfoContents(Marker marker)
            {
                return null;
            }

            public View getInfoWindow(Marker marker)
            {
                marker = (MapEntity)markersHashMap.get(marker);
                ((TextView)view.findViewById(com.biznessapps.layout.R.id.simple_text_view)).setText(marker.getAddress1());
                return view;
            }

            
            {
                this$0 = ChooseLocationFragment.this;
                super();
                view = getActivity().getLayoutInflater().inflate(com.biznessapps.layout.R.layout.fo_location_chooser_item, null);
            }
        };
    }

    private MarkerOptions getMarkerOptions(LatLng latlng, MapEntity mapentity)
    {
        mapentity = MapUtils.customizeMarkerBitmap(com.biznessapps.layout.R.drawable.contact_map_pin, getApplicationContext(), settings.getButtonBgColor());
        return (new MarkerOptions()).position(latlng).icon(BitmapDescriptorFactory.fromBitmap(mapentity));
    }

    private void openDetail(LocationEntity locationentity)
    {
        locationentity.setAddress1(searchQuery);
        Intent intent = new Intent();
        intent.putExtra("ITEM_EXTRA", locationentity);
        getHoldActivity().setResult(22, intent);
        getHoldActivity().finish();
    }

    private void plugListView(Activity activity, List list)
    {
        if (list != null && !list.isEmpty())
        {
            showOnTheMap(list);
            return;
        } else
        {
            handleNoDataEvent(activity);
            return;
        }
    }

    private void searchAddress(String s)
    {
        if (StringUtils.isNotEmpty(s))
        {
            (new LoadAddressesTask(getHoldActivity(), getViewsRef())).execute(new String[] {
                s
            });
        }
    }

    private void showAddressInfo(MapEntity mapentity)
    {
        ((TextView)root.findViewById(com.biznessapps.layout.R.id.location_address_text)).setText(mapentity.getTitle());
        if (mapentity instanceof LocationEntity)
        {
            selectedLocation = (LocationEntity)mapentity;
        }
    }

    private void showOnTheMap(List list)
    {
        googleMap.clear();
        markersHashMap.clear();
        for (list = list.iterator(); list.hasNext(); addMapPoint((LocationEntity)list.next())) { }
        if (!markersHashMap.isEmpty())
        {
            MapUtils.defineZoom(googleMap, markersHashMap.keySet(), 15, false);
        }
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        ImageView imageview = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.search_icon_close);
        final EditText searchEditText = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.search_edit_view);
        searchEditText.setHint(com.biznessapps.layout.R.string.search);
        searchEditText.setOnKeyListener(ViewUtils.getOnEnterKeyListener(new Runnable() {

            final ChooseLocationFragment this$0;
            final EditText val$searchEditText;

            public void run()
            {
                searchEditText.getText().toString(). = <returnValue>;
                ViewUtils.closeKeyboard(getApplicationContext(), searchEditText);
                searchAddress();
            }

            
            {
                this$0 = ChooseLocationFragment.this;
                searchEditText = edittext;
                super();
            }
        }));
        imageview.setOnClickListener(new android.view.View.OnClickListener() {

            final ChooseLocationFragment this$0;
            final EditText val$searchEditText;

            public void onClick(View view)
            {
                searchEditText.setText("");
                
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = ChooseLocationFragment.this;
                searchEditText = edittext;
                super();
            }
        });
        ViewUtils.updateSearchBarWithColor(settings.getNavigationTextColor(), imageview, searchEditText);
        viewgroup.findViewById(com.biznessapps.layout.R.id.search_bar_container).setBackgroundColor(settings.getNavigationBarColor());
        googleMap = ((SupportMapFragment)getFragmentManager().findFragmentById(com.biznessapps.layout.R.id.map)).getMap();
        selectButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.select_this_location_button);
        selectButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ChooseLocationFragment this$0;

            public void onClick(View view)
            {
                if (selectedLocation != null)
                {
                    openDetail(selectedLocation);
                    return;
                } else
                {
                    ViewUtils.showWarningDialog(getHoldActivity(), com.biznessapps.layout.R.string.location_missed_alert);
                    return;
                }
            }

            
            {
                this$0 = ChooseLocationFragment.this;
                super();
            }
        });
        BZButtonStyle.getInstance(getApplicationContext()).apply(settings, selectButton);
        selectButton.setText(FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.fo_select_this_location));
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        getActivity().getWindow().setSoftInputMode(32);
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.fo_location_chooser, null);
        initSettingsData();
        initViews(root);
        return root;
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        openDetail((LocationEntity)adapterview.getAdapter().getItem(i));
    }


/*
    static String access$002(ChooseLocationFragment chooselocationfragment, String s)
    {
        chooselocationfragment.searchQuery = s;
        return s;
    }

*/





/*
    static String access$302(ChooseLocationFragment chooselocationfragment, String s)
    {
        chooselocationfragment.searchQuery = s;
        return s;
    }

*/






}
