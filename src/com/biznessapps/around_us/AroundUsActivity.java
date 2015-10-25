// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.around_us;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHandlers;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.LoadDataTaskExternal;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonMapActivity;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.components.LocationFinder;
import com.biznessapps.common.components.SearchTopBar;
import com.biznessapps.common.entities.MapEntity;
import com.biznessapps.common.entities.NetworkResultEntity;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.location.MapUtils;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.biznessapps.around_us:
//            AroundUsEntity

public class AroundUsActivity extends CommonMapActivity
{
    public class AroundUsListAdapter extends AbstractAdapter
    {

        private String greenColor;
        private Drawable greenIconDrawable;
        private String purpleColor;
        private Drawable purpleIconDrawable;
        private String redColor;
        private Drawable redIconDrawable;
        final AroundUsActivity this$0;

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            AroundUsEntity.PoiItem poiitem;
            if (view == null)
            {
                view = inflater.inflate(layoutItemResourceId, null);
                viewgroup = new ViewHolder();
                viewgroup.descriptionView = (TextView)view.findViewById(com.biznessapps.layout.R.id.around_us_description);
                viewgroup.distanceView = (TextView)view.findViewById(com.biznessapps.layout.R.id.around_us_distance);
                viewgroup.categoryView = (TextView)view.findViewById(com.biznessapps.layout.R.id.around_us_category_name);
                viewgroup.iconImage = (ImageView)view.findViewById(com.biznessapps.layout.R.id.icon_image);
                view.setTag(viewgroup);
            } else
            {
                viewgroup = (ViewHolder)view.getTag();
            }
            poiitem = (AroundUsEntity.PoiItem)getItem(i);
            ((ViewHolder) (viewgroup)).categoryView.setText(poiitem.getCategoryName());
            ((ViewHolder) (viewgroup)).descriptionView.setText((new StringBuilder()).append("\u200E").append(Html.fromHtml(poiitem.getName())).toString());
            LocationUtils.setDistanceValue(getContext(), ((ViewHolder) (viewgroup)).distanceView, poiitem);
            if (poiitem.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(poiitem.getItemColor()));
                setTextColorToView(poiitem.getItemTextColor(), new TextView[] {
                    ((ViewHolder) (viewgroup)).descriptionView
                });
            }
            i = ViewUtils.getColor(poiitem.getColor());
            setTextColorToView(i, new TextView[] {
                ((ViewHolder) (viewgroup)).categoryView, ((ViewHolder) (viewgroup)).distanceView
            });
            CommonUtils.overrideImageColor(i, ((ViewHolder) (viewgroup)).distanceView.getCompoundDrawables()[0]);
            CommonUtils.overrideImageColor(i, ((ImageView)view.findViewById(com.biznessapps.layout.R.id.icon_image_border)).getBackground());
            if (StringUtils.isNotEmpty(poiitem.getImageUrl()))
            {
                imageFetcher.loadCircledImage(poiitem.getImageUrl(), ((ViewHolder) (viewgroup)).iconImage);
            }
            view.setClickable(false);
            return view;
        }

        public AroundUsListAdapter(Context context, List list, UiSettings uisettings)
        {
            this$0 = AroundUsActivity.this;
            super(context, list, com.biznessapps.layout.R.layout.around_us_row, uisettings);
            redIconDrawable = getResources().getDrawable(com.biznessapps.layout.R.drawable.around_us_red_icon_bg);
            greenIconDrawable = getResources().getDrawable(com.biznessapps.layout.R.drawable.around_us_green_icon_bg);
            purpleIconDrawable = getResources().getDrawable(com.biznessapps.layout.R.drawable.around_us_purple_icon_bg);
            greenColor = item.getGreenColor();
            redColor = item.getRedColor();
            purpleColor = item.getPurpleColor();
            CommonUtils.overrideImageColor(ViewUtils.getColor(redColor), redIconDrawable);
            CommonUtils.overrideImageColor(ViewUtils.getColor(purpleColor), purpleIconDrawable);
            CommonUtils.overrideImageColor(ViewUtils.getColor(greenColor), greenIconDrawable);
        }
    }

    private static class ViewHolder
    {

        TextView categoryView;
        TextView descriptionView;
        TextView distanceView;
        ImageView iconImage;

        private ViewHolder()
        {
        }

    }


    private ViewGroup buttonContainer;
    private Set colorKeys;
    private Button greenButton;
    private View greenButtonView;
    private boolean isListMode;
    private AroundUsEntity item;
    private Button listTab;
    private ListView listView;
    private Map mapPoints;
    private Button mapTab;
    private AroundUsEntity.PoiItem preloadedItem;
    private Button purpleButton;
    private View purpleButtonView;
    private Button redButton;
    private View redButtonView;
    private String searchQuery;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable updateControlsRunnable;

    public AroundUsActivity()
    {
        preloadedItem = null;
        mapPoints = new HashMap();
        item = new AroundUsEntity();
        isListMode = false;
    }

    private List getFilteredData(List list)
    {
        Object obj = null;
        if (list == null) goto _L2; else goto _L1
_L1:
        ArrayList arraylist = new ArrayList();
        if (!StringUtils.isEmpty(searchQuery)) goto _L4; else goto _L3
_L3:
        obj = list;
_L2:
        return ((List) (obj));
_L4:
        list = list.iterator();
        do
        {
            obj = arraylist;
            if (!list.hasNext())
            {
                continue;
            }
            obj = (AroundUsEntity.PoiItem)list.next();
            String s = ((AroundUsEntity.PoiItem) (obj)).getName();
            if (StringUtils.isNotEmpty(s) && s.toLowerCase().contains(searchQuery.toLowerCase()))
            {
                arraylist.add(obj);
            }
        } while (true);
        if (true) goto _L2; else goto _L5
_L5:
    }

    private void initDataWithPoints()
    {
        Object obj;
        if (item != null)
        {
            obj = item.getPoi();
        } else
        {
            obj = null;
        }
        obj = getFilteredData(((List) (obj)));
        if (obj != null && !((List) (obj)).isEmpty())
        {
            initPointsMap(((List) (obj)));
            initPoints(((List) (obj)));
            plugListView(getApplicationContext(), ((List) (obj)));
            setButtonsData();
            return;
        } else
        {
            ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.nothing_found));
            listView.setAdapter(null);
            googleMap.clear();
            return;
        }
    }

    private void initPoints(List list)
    {
        ArrayList arraylist = new ArrayList(list);
        Location location = AppCore.getInstance().getLocationFinder().getCurrentLocation();
        if (location != null)
        {
            AroundUsEntity.PoiItem poiitem = new AroundUsEntity.PoiItem();
            poiitem.setLatitude(Double.toString(location.getLatitude()));
            poiitem.setLongitude(Double.toString(location.getLongitude()));
            poiitem.setAddress1(getString(com.biznessapps.layout.R.string.current_location));
            poiitem.setCurrentLocoation(true);
            poiitem.setId(null);
            arraylist.add(poiitem);
        }
        addPins(list);
    }

    private void initPointsMap(List list)
    {
        mapPoints.clear();
        if (list != null && list.size() > 0)
        {
            Iterator iterator = list.iterator();
            while (iterator.hasNext()) 
            {
                AroundUsEntity.PoiItem poiitem = (AroundUsEntity.PoiItem)iterator.next();
                if (mapPoints.containsKey(poiitem.getColor()))
                {
                    list = (ArrayList)mapPoints.get(poiitem.getColor());
                } else
                {
                    list = new ArrayList();
                }
                if (poiitem.getColor().equalsIgnoreCase(item.getRedColor()))
                {
                    poiitem.setCategoryName(item.getRedTitle());
                } else
                if (poiitem.getColor().equalsIgnoreCase(item.getGreenColor()))
                {
                    poiitem.setCategoryName(item.getGreenTitle());
                } else
                if (poiitem.getColor().equalsIgnoreCase(item.getPurpleColor()))
                {
                    poiitem.setCategoryName(item.getPurpleTitle());
                }
                list.add(poiitem);
                mapPoints.put(poiitem.getColor(), list);
            }
        }
    }

    private void initViews()
    {
        ((ViewGroup)findViewById(com.biznessapps.layout.R.id.buttons_container)).setBackgroundColor(settings.getNavigationBarColor());
        mapTab = (Button)findViewById(com.biznessapps.layout.R.id.map_button);
        listTab = (Button)findViewById(com.biznessapps.layout.R.id.list_button);
        mapTab.setTextColor(settings.getNavigationTextColor());
        listTab.setTextColor(settings.getNavigationTextColor());
        mapTab.setText(com.biznessapps.layout.R.string.map);
        listTab.setText(com.biznessapps.layout.R.string.list);
        buttonContainer = (ViewGroup)findViewById(com.biznessapps.layout.R.id.bottom_buttons_container);
        CommonUtils.customizeFooterNavigationBar(buttonContainer, settings);
        greenButton = (Button)findViewById(com.biznessapps.layout.R.id.around_us_green_button);
        redButton = (Button)findViewById(com.biznessapps.layout.R.id.around_us_red_button);
        purpleButton = (Button)findViewById(com.biznessapps.layout.R.id.around_us_purple_button);
        greenButtonView = findViewById(com.biznessapps.layout.R.id.around_us_green_view);
        redButtonView = findViewById(com.biznessapps.layout.R.id.around_us_red_view);
        purpleButtonView = findViewById(com.biznessapps.layout.R.id.around_us_purple_view);
        listView = (ListView)findViewById(com.biznessapps.layout.R.id.list_view);
        ViewUtils.setRootBgColor(listView, settings);
        greenButton.setOnClickListener(new android.view.View.OnClickListener() {

            final AroundUsActivity this$0;

            public void onClick(View view)
            {
                updateItems(item.getGreenColor(), greenButton);
            }

            
            {
                this$0 = AroundUsActivity.this;
                super();
            }
        });
        redButton.setOnClickListener(new android.view.View.OnClickListener() {

            final AroundUsActivity this$0;

            public void onClick(View view)
            {
                updateItems(item.getRedColor(), redButton);
            }

            
            {
                this$0 = AroundUsActivity.this;
                super();
            }
        });
        purpleButton.setOnClickListener(new android.view.View.OnClickListener() {

            final AroundUsActivity this$0;

            public void onClick(View view)
            {
                updateItems(item.getPurpleColor(), purpleButton);
            }

            
            {
                this$0 = AroundUsActivity.this;
                super();
            }
        });
        listTab.setOnClickListener(new android.view.View.OnClickListener() {

            final AroundUsActivity this$0;

            public void onClick(View view)
            {
                isListMode = true;
                updateButtonsState();
            }

            
            {
                this$0 = AroundUsActivity.this;
                super();
            }
        });
        mapTab.setOnClickListener(new android.view.View.OnClickListener() {

            final AroundUsActivity this$0;

            public void onClick(View view)
            {
                isListMode = false;
                updateButtonsState();
            }

            
            {
                this$0 = AroundUsActivity.this;
                super();
            }
        });
        com.biznessapps.common.components.SearchTopBar.SearchDataRunnable searchdatarunnable = new com.biznessapps.common.components.SearchTopBar.SearchDataRunnable() {

            final AroundUsActivity this$0;

            public void run()
            {
                searchQuery = getSearchQuery();
                loadData();
            }

            
            {
                this$0 = AroundUsActivity.this;
                super();
            }
        };
        screenListener = (new SearchTopBar(this, (ViewGroup)findViewById(com.biznessapps.layout.R.id.tab_title_container), searchdatarunnable, settings)).getScreenListener();
    }

    private void loadData()
    {
        String s = getIntent().getExtras().getString("TAB_SPECIAL_ID");
        s = String.format("around_us.php?app_code=%s&tab_id=%s", new Object[] {
            AppCore.getInstance().getCachingManager().getAppCode(), s
        });
        LoadDataTaskExternal loaddatataskexternal = new LoadDataTaskExternal(this, new ArrayList());
        loaddatataskexternal.setRequestUrl(s);
        loaddatataskexternal.setCanUseCachingRunnable(new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable());
        loaddatataskexternal.setHandleInBgRunnable(new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable());
        loaddatataskexternal.setParseDataRunnable(new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() {

            final AroundUsActivity this$0;

            public void run()
            {
                item = JsonParser.parseAroundUsData(getDataToParse());
            }

            
            {
                this$0 = AroundUsActivity.this;
                super();
            }
        });
        updateControlsRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() ;
        loaddatataskexternal.setUpdateControlsRunnable(updateControlsRunnable);
        loaddatataskexternal.launch();
    }

    private void openDetailScreen(AroundUsEntity.PoiItem poiitem)
    {
        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("AROUND_US_DETAIL_FRAGMENT"));
        intent.putExtra("AROUND_US_ITEM_EXTRA", poiitem);
        intent.putExtra("BG_URL_EXTRA", item.getImageUrl());
        intent.putExtra("TAB_FRAGMENT", "AROUND_US_DETAIL_FRAGMENT");
        intent.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
        startActivity(intent);
    }

    private void plugListView(Context context, List list)
    {
        if (list != null && !list.isEmpty())
        {
            LinkedList linkedlist = new LinkedList();
            AroundUsEntity.PoiItem poiitem;
            for (list = list.iterator(); list.hasNext(); linkedlist.add(ViewUtils.getWrappedItem(poiitem, linkedlist, settings)))
            {
                poiitem = (AroundUsEntity.PoiItem)list.next();
                if (StringUtils.isNotEmpty(poiitem.getId()) && poiitem.getId().equals(itemId) && preloadedItem == null)
                {
                    preloadedItem = poiitem;
                }
            }

            context = new AroundUsListAdapter(context, linkedlist, settings);
            listView.setAdapter(context);
            listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

                final AroundUsActivity this$0;

                public void onItemClick(AdapterView adapterview, View view, int i, long l)
                {
                    adapterview = (AroundUsEntity.PoiItem)adapterview.getAdapter().getItem(i);
                    openDetailScreen(adapterview);
                }

            
            {
                this$0 = AroundUsActivity.this;
                super();
            }
            });
            if (preloadedItem != null && preloadedItem.isUseAgain())
            {
                openDetailScreen(preloadedItem);
                preloadedItem.setUseAgain(false);
            }
        }
    }

    private void setButtonsData()
    {
        buttonContainer.setVisibility(0);
        greenButton.setTextColor(ViewUtils.getColor(item.getGreenTextColor()));
        greenButtonView.setBackgroundColor(ViewUtils.getColor(item.getGreenColor()));
        greenButton.setText(item.getGreenTitle());
        redButton.setTextColor(ViewUtils.getColor(item.getRedTextColor()));
        redButtonView.setBackgroundColor(ViewUtils.getColor(item.getRedColor()));
        redButton.setText(item.getRedTitle());
        purpleButton.setTextColor(ViewUtils.getColor(item.getPurpleTextColor()));
        purpleButtonView.setBackgroundColor(ViewUtils.getColor(item.getPurpleColor()));
        purpleButton.setText(item.getPurpleTitle());
        updateButtonState(item.getRedColor(), redButton, mapPoints.keySet(), true);
        updateButtonState(item.getGreenColor(), greenButton, mapPoints.keySet(), true);
        updateButtonState(item.getPurpleColor(), purpleButton, mapPoints.keySet(), true);
    }

    private void updateButtonState(String s, Button button, Set set, boolean flag)
    {
        button.setSelected(set.contains(s));
        if (flag)
        {
            button.setClickable(set.contains(s));
        }
    }

    private void updateButtonsState()
    {
        boolean flag1 = true;
        int i = 0;
        Object obj;
        boolean flag;
        if (!isListMode)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setMapVisibility(flag);
        obj = mapTab;
        if (!isListMode)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        ((Button) (obj)).setSelected(flag);
        obj = listView;
        if (!isListMode)
        {
            i = 8;
        }
        ((ListView) (obj)).setVisibility(i);
        listTab.setSelected(isListMode);
    }

    private void updateItems(String s, Button button)
    {
        if (colorKeys == null)
        {
            colorKeys = new HashSet(mapPoints.keySet());
        }
        Object obj;
        Iterator iterator;
        if (colorKeys.contains(s))
        {
            colorKeys.remove(s);
        } else
        {
            colorKeys.add(s);
        }
        obj = new ArrayList();
        iterator = colorKeys.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s1 = (String)iterator.next();
            if (mapPoints.get(s1) != null)
            {
                ((List) (obj)).addAll((Collection)mapPoints.get(s1));
            }
        } while (true);
        obj = getFilteredData(((List) (obj)));
        if (obj != null && !((List) (obj)).isEmpty())
        {
            updateButtonState(s, button, colorKeys, false);
            initPoints(((List) (obj)));
            plugListView(getApplicationContext(), ((List) (obj)));
            return;
        } else
        {
            ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.nothing_found));
            googleMap.clear();
            listView.setAdapter(null);
            return;
        }
    }

    protected void defineMapItemClickAction(MapEntity mapentity)
    {
        if ((mapentity instanceof AroundUsEntity.PoiItem) && !((AroundUsEntity.PoiItem)mapentity).isCurrentLocoation())
        {
            openDetailScreen((AroundUsEntity.PoiItem)mapentity);
        }
    }

    protected com.google.android.gms.maps.GoogleMap.InfoWindowAdapter getInfoAdapter()
    {
        return new com.google.android.gms.maps.GoogleMap.InfoWindowAdapter() {

            final AroundUsActivity this$0;
            private final View view;

            public View getInfoContents(Marker marker)
            {
                if (marker != null && marker.isInfoWindowShown())
                {
                    marker.hideInfoWindow();
                    marker.showInfoWindow();
                }
                return null;
            }

            public View getInfoWindow(Marker marker)
            {
                Object obj = (MapEntity)
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = AroundUsActivity.this;
                super();
                view = getLayoutInflater().inflate(com.biznessapps.layout.R.layout.around_map_dialog, null);
            }
        };
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.around_us_layout;
    }

    protected MarkerOptions getMarkerOptions(LatLng latlng, MapEntity mapentity)
    {
        if (mapentity.isCurrentLocoation())
        {
            mapentity = BitmapFactory.decodeResource(getResources(), com.biznessapps.layout.R.drawable.my_location_bubble);
            float f = getResources().getDimension(com.biznessapps.layout.R.dimen.map_pin_size);
            float f1 = ((float)mapentity.getHeight() * f) / (float)mapentity.getWidth();
            mapentity = Bitmap.createScaledBitmap(mapentity, (int)f, (int)f1, false);
        } else
        {
            mapentity = MapUtils.customizeMarkerBitmap(com.biznessapps.layout.R.drawable.contact_map_pin, getApplicationContext(), ViewUtils.getColor(mapentity.getColor()));
        }
        return (new MarkerOptions()).position(latlng).icon(BitmapDescriptorFactory.fromBitmap(mapentity));
    }

    public void onCreate(Bundle bundle)
    {
        onCreate(bundle);
        AppHandlers.getUiHandler();
        initViews();
    }

    protected void onResume()
    {
        onResume();
        loadData();
    }










/*
    static AroundUsEntity access$202(AroundUsActivity aroundusactivity, AroundUsEntity aroundusentity)
    {
        aroundusactivity.item = aroundusentity;
        return aroundusentity;
    }

*/






/*
    static boolean access$702(AroundUsActivity aroundusactivity, boolean flag)
    {
        aroundusactivity.isListMode = flag;
        return flag;
    }

*/



/*
    static String access$902(AroundUsActivity aroundusactivity, String s)
    {
        aroundusactivity.searchQuery = s;
        return s;
    }

*/

    // Unreferenced inner class com/biznessapps/around_us/AroundUsActivity$1$1

/* anonymous class */
    class _cls1
        implements com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback
    {

        final _cls1 this$1;
        final Marker val$marker;

        public void onImageLoaded(String s, Bitmap bitmap, View view)
        {
            ((ImageView)view).setImageBitmap(bitmap);
            getInfoContents(marker);
        }

            
            {
                this$1 = final__pcls1;
                marker = Marker.this;
                super();
            }
    }

}
