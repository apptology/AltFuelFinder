// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.real_estate;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppHandlers;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.LoadDataTaskExternal;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonMapActivity;
import com.biznessapps.common.components.SearchTopBar;
import com.biznessapps.common.entities.MapEntity;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.biznessapps.real_estate:
//            RealEstateEntity, RealEstateListAdapter

public class RealEstateListActivity extends CommonMapActivity
{

    private int categoryType;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable handleInBgRunnable;
    private boolean isListMode;
    private boolean isShowAllList;
    private List items;
    private TextView listTab;
    private ListView listView;
    private TextView mapTab;
    private Button ownButton;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable parseDataRunnable;
    private RealEstateEntity preloadedItem;
    private Button rentalsButton;
    private String searchQuery;
    private String tabId;
    private ViewGroup topContainer;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable updateControlsRunnable;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable useCachingRunnable;

    public RealEstateListActivity()
    {
        isListMode = false;
        categoryType = 1;
        items = new ArrayList();
        preloadedItem = null;
    }

    private boolean canUseCaching()
    {
        items = (List)cacher().getData((new StringBuilder()).append("REAL_ESTATE_LIST_PROPERTY").append(tabId).toString());
        return items != null && !items.isEmpty();
    }

    private void defineAllListVisibility(List list)
    {
        if (list != null && !list.isEmpty())
        {
            isShowAllList = ((RealEstateEntity)list.get(0)).isShowAll();
        }
    }

    private List getFilteredData(List list)
    {
        ArrayList arraylist = new ArrayList();
        if (list != null)
        {
            if (StringUtils.isEmpty(searchQuery))
            {
                list = list.iterator();
                do
                {
                    if (!list.hasNext())
                    {
                        break;
                    }
                    RealEstateEntity realestateentity = (RealEstateEntity)list.next();
                    if (realestateentity.getId().equals(itemId) && preloadedItem == null)
                    {
                        preloadedItem = realestateentity;
                        arraylist.add(realestateentity);
                    } else
                    if (isShowAllList || realestateentity.getRent() == categoryType)
                    {
                        arraylist.add(realestateentity);
                    }
                } while (true);
            } else
            {
                list = list.iterator();
                do
                {
                    if (!list.hasNext())
                    {
                        break;
                    }
                    RealEstateEntity realestateentity1 = (RealEstateEntity)list.next();
                    if (isShowAllList || realestateentity1.getRent() == categoryType)
                    {
                        String s = realestateentity1.getAddressInfo();
                        if (StringUtils.isNotEmpty(s) && s.toLowerCase().contains(searchQuery.toLowerCase()))
                        {
                            arraylist.add(realestateentity1);
                        }
                    }
                } while (true);
            }
        }
        return arraylist;
    }

    private void handleInBackground()
    {
    }

    private void initData()
    {
        defineAllListVisibility(items);
        updateTopContainerVisibility();
        List list = getFilteredData(items);
        plugListView(getApplicationContext(), list);
        addPins(list);
    }

    private void initViews()
    {
        ViewUtils.setRootBgColor(findViewById(com.biznessapps.layout.R.id.root_layout), settings);
        ((ViewGroup)findViewById(com.biznessapps.layout.R.id.buttons_container)).setBackgroundColor(settings.getNavigationBarColor());
        mapTab = (TextView)findViewById(com.biznessapps.layout.R.id.map_button);
        listTab = (TextView)findViewById(com.biznessapps.layout.R.id.list_button);
        ViewUtils.setBottomTabStyle(mapTab);
        ViewUtils.setBottomTabStyle(listTab);
        rentalsButton = (Button)findViewById(com.biznessapps.layout.R.id.rentals_button);
        ownButton = (Button)findViewById(com.biznessapps.layout.R.id.own_button);
        rentalsButton.setText(com.biznessapps.layout.R.string.real_estate_category_rentals);
        ownButton.setText(com.biznessapps.layout.R.string.real_estate_category_own);
        mapTab.setText(com.biznessapps.layout.R.string.map);
        listTab.setText(com.biznessapps.layout.R.string.list);
        topContainer = (ViewGroup)findViewById(com.biznessapps.layout.R.id.top_buttons_container);
        topContainer.setVisibility(8);
        topContainer.setBackgroundColor(settings.getNavigationBarColor());
        listView = (ListView)findViewById(com.biznessapps.layout.R.id.list_view);
        listTab.setOnClickListener(new android.view.View.OnClickListener() {

            final RealEstateListActivity this$0;

            public void onClick(View view)
            {
                setMapVisibility(false);
                listView.setVisibility(0);
                isListMode = true;
                updateBottomTabsState();
            }

            
            {
                this$0 = RealEstateListActivity.this;
                super();
            }
        });
        mapTab.setOnClickListener(new android.view.View.OnClickListener() {

            final RealEstateListActivity this$0;

            public void onClick(View view)
            {
                setMapVisibility(true);
                listView.setVisibility(8);
                isListMode = false;
                updateBottomTabsState();
            }

            
            {
                this$0 = RealEstateListActivity.this;
                super();
            }
        });
        ownButton.setOnClickListener(new android.view.View.OnClickListener() {

            final RealEstateListActivity this$0;

            public void onClick(View view)
            {
                categoryType = 0;
                updateTopButtonsState(categoryType);
                loadContent();
            }

            
            {
                this$0 = RealEstateListActivity.this;
                super();
            }
        });
        rentalsButton.setOnClickListener(new android.view.View.OnClickListener() {

            final RealEstateListActivity this$0;

            public void onClick(View view)
            {
                categoryType = 1;
                updateTopButtonsState(categoryType);
                loadContent();
            }

            
            {
                this$0 = RealEstateListActivity.this;
                super();
            }
        });
        updateBottomTabsState();
        com.biznessapps.common.components.SearchTopBar.SearchDataRunnable searchdatarunnable = new com.biznessapps.common.components.SearchTopBar.SearchDataRunnable() {

            final RealEstateListActivity this$0;

            public void run()
            {
                searchQuery = getSearchQuery();
                loadContent();
            }

            
            {
                this$0 = RealEstateListActivity.this;
                super();
            }
        };
        screenListener = (new SearchTopBar(this, (ViewGroup)findViewById(com.biznessapps.layout.R.id.tab_title_container), searchdatarunnable, settings)).getScreenListener();
    }

    private void loadContent()
    {
        if (canUseCaching())
        {
            updateControlsWithData(this);
            return;
        } else
        {
            tabId = getIntent().getStringExtra("TAB_SPECIAL_ID");
            String s = String.format("realestates.php?app_code=%s&tab_id=%s", new Object[] {
                cacher().getAppCode(), tabId
            });
            Object obj = new ArrayList();
            ((List) (obj)).add(new WeakReference(mapTab));
            ((List) (obj)).add(new WeakReference(listTab));
            ((List) (obj)).add(new WeakReference(ownButton));
            ((List) (obj)).add(new WeakReference(rentalsButton));
            obj = new LoadDataTaskExternal(this, ((List) (obj)));
            ((LoadDataTaskExternal) (obj)).setRequestUrl(s);
            useCachingRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() {

                final RealEstateListActivity this$0;

                public void run()
                {
                    canUseCaching();
                }

            
            {
                this$0 = RealEstateListActivity.this;
                super();
            }
            };
            ((LoadDataTaskExternal) (obj)).setCanUseCachingRunnable(useCachingRunnable);
            handleInBgRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() {

                final RealEstateListActivity this$0;

                public void run()
                {
                    handleInBackground();
                }

            
            {
                this$0 = RealEstateListActivity.this;
                super();
            }
            };
            ((LoadDataTaskExternal) (obj)).setHandleInBgRunnable(handleInBgRunnable);
            parseDataRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() ;
            ((LoadDataTaskExternal) (obj)).setParseDataRunnable(parseDataRunnable);
            updateControlsRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() {

                final RealEstateListActivity this$0;

                public void run()
                {
                    updateControlsWithData(getActivity());
                }

            
            {
                this$0 = RealEstateListActivity.this;
                super();
            }
            };
            ((LoadDataTaskExternal) (obj)).setUpdateControlsRunnable(updateControlsRunnable);
            ((LoadDataTaskExternal) (obj)).launch();
            return;
        }
    }

    private void openItem(RealEstateEntity realestateentity)
    {
        if (realestateentity != null && StringUtils.isNotEmpty(realestateentity.getId()))
        {
            Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("RealEstateDetailViewController"));
            intent.putExtra("ITEM_ID", realestateentity.getId());
            intent.putExtra("TAB_UNIQUE_ID", getTabId());
            intent.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
            intent.putExtra("TAB_FRAGMENT", "RealEstateDetailViewController");
            intent.putExtra("TEXT_EXTRA", realestateentity.getAddressInfo());
            startActivity(intent);
        }
    }

    private void plugListView(Context context, List list)
    {
        if (list != null && !list.isEmpty())
        {
            LinkedList linkedlist = new LinkedList();
            for (list = list.iterator(); list.hasNext(); linkedlist.add(ViewUtils.getWrappedItem((RealEstateEntity)list.next(), linkedlist, settings))) { }
            context = new RealEstateListAdapter(context, linkedlist, settings);
            listView.setAdapter(context);
            listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

                final RealEstateListActivity this$0;

                public void onItemClick(AdapterView adapterview, View view, int i, long l)
                {
                    adapterview = (RealEstateEntity)adapterview.getAdapter().getItem(i);
                    openItem(adapterview);
                }

            
            {
                this$0 = RealEstateListActivity.this;
                super();
            }
            });
            if (preloadedItem != null && preloadedItem.isUseAgain())
            {
                openItem(preloadedItem);
                preloadedItem.setUseAgain(false);
            }
            return;
        } else
        {
            listView.setAdapter(null);
            return;
        }
    }

    private void updateBottomTabsState()
    {
        TextView textview = mapTab;
        boolean flag;
        if (!isListMode)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        textview.setSelected(flag);
        listTab.setSelected(isListMode);
        ViewUtils.updateTextViewIconState(new TextView[] {
            mapTab, listTab
        });
    }

    private void updateControlsWithData(Activity activity)
    {
label0:
        {
            if (items != null)
            {
                initData();
                if (!isListMode)
                {
                    break label0;
                }
                listTab.performClick();
            }
            return;
        }
        listTab.performClick();
        mapTab.performClick();
    }

    private void updateTopButtonsState(int i)
    {
        if (i == 1)
        {
            rentalsButton.setTextColor(settings.getButtonTextColor());
            CommonUtils.overrideImageColor(settings.getButtonBgColor(), rentalsButton.getBackground());
            ownButton.setTextColor(settings.getButtonBgColor());
            CommonUtils.overrideImageColor(settings.getButtonTextColor(), ownButton.getBackground());
            return;
        } else
        {
            rentalsButton.setTextColor(settings.getButtonBgColor());
            CommonUtils.overrideImageColor(settings.getButtonTextColor(), rentalsButton.getBackground());
            ownButton.setTextColor(settings.getButtonTextColor());
            CommonUtils.overrideImageColor(settings.getButtonBgColor(), ownButton.getBackground());
            return;
        }
    }

    private void updateTopContainerVisibility()
    {
        ViewGroup viewgroup = topContainer;
        byte byte0;
        if (isShowAllList)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        viewgroup.setVisibility(byte0);
    }

    protected void defineMapItemClickAction(MapEntity mapentity)
    {
        if (mapentity instanceof RealEstateEntity)
        {
            openItem((RealEstateEntity)mapentity);
        }
    }

    protected com.google.android.gms.maps.GoogleMap.InfoWindowAdapter getInfoAdapter()
    {
        return new com.google.android.gms.maps.GoogleMap.InfoWindowAdapter() {

            final RealEstateListActivity this$0;
            private final View view;

            public View getInfoContents(Marker marker)
            {
                return null;
            }

            public View getInfoWindow(Marker marker)
            {
                marker = (MapEntity)
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = RealEstateListActivity.this;
                super();
                view = getLayoutInflater().inflate(com.biznessapps.layout.R.layout.real_estate_map_dialog, null);
            }
        };
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.real_estate_list_layout;
    }

    protected MarkerOptions getMarkerOptions(LatLng latlng, MapEntity mapentity)
    {
        return (new MarkerOptions()).position(latlng).icon(BitmapDescriptorFactory.fromResource(com.biznessapps.layout.R.drawable.property_icon));
    }

    public ViewGroup getProgressBarContainer()
    {
        return (ViewGroup)findViewById(com.biznessapps.layout.R.id.progress_bar_container);
    }

    public View getViewForBg()
    {
        return findViewById(com.biznessapps.layout.R.id.root_layout);
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
        if (categoryType == 0)
        {
            ownButton.performClick();
            return;
        } else
        {
            rentalsButton.performClick();
            return;
        }
    }







/*
    static List access$1202(RealEstateListActivity realestatelistactivity, List list)
    {
        realestatelistactivity.items = list;
        return list;
    }

*/


/*
    static String access$1302(RealEstateListActivity realestatelistactivity, String s)
    {
        realestatelistactivity.bgUrl = s;
        return s;
    }

*/







/*
    static boolean access$302(RealEstateListActivity realestatelistactivity, boolean flag)
    {
        realestatelistactivity.isListMode = flag;
        return flag;
    }

*/





/*
    static int access$602(RealEstateListActivity realestatelistactivity, int i)
    {
        realestatelistactivity.categoryType = i;
        return i;
    }

*/




/*
    static String access$902(RealEstateListActivity realestatelistactivity, String s)
    {
        realestatelistactivity.searchQuery = s;
        return s;
    }

*/
}
