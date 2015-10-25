// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.api.navigation.TabButton;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.entities.AppInfoEntity;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.more.Tab;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeSliderListAdapter, MenuGridAdapter

public class HomeScreenHelper
{
    public static class MulitipleItemAdapter extends AbstractAdapter
    {

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            LocationEntity locationentity = (LocationEntity)getItem(i);
            if (view == null)
            {
                view = inflater.inflate(layoutItemResourceId, null);
                viewgroup = new com.biznessapps.common.adapters.ListItemHolder.CommonItem();
                viewgroup.setTextViewTitle((TextView)view.findViewById(com.biznessapps.layout.R.id.simple_text_view));
                view.setTag(viewgroup);
            } else
            {
                viewgroup = (com.biznessapps.common.adapters.ListItemHolder.CommonItem)view.getTag();
            }
            if (locationentity != null)
            {
                viewgroup.getTextViewTitle().setText(locationentity.getAddressInfo(", "));
            }
            return view;
        }

        public MulitipleItemAdapter(Context context, List list)
        {
            super(context, list, com.biznessapps.layout.R.layout.multiple_row, null);
        }
    }


    public HomeScreenHelper()
    {
    }

    private static void callUs(Activity activity)
    {
        showMultipleDialog(activity, com.biznessapps.layout.R.string.branch_call_title, new android.widget.AdapterView.OnItemClickListener(activity) {

            final Activity val$activity;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                adapterview = ((LocationEntity)adapterview.getAdapter().getItem(i)).getTelephone();
                ViewUtils.call(activity, adapterview);
            }

            
            {
                activity = activity1;
                super();
            }
        }, true);
    }

    private static void defineSubButtons(GridView gridview, Activity activity)
    {
        CachingManager cachingmanager = AppCore.getInstance().getCachingManager();
        AppSettings appsettings = AppCore.getInstance().getAppSettings();
        Object obj = cachingmanager.getAppInfo();
        int j = 1;
        int i = j;
        if (!AppCore.getInstance().isTablet())
        {
            i = j;
            if (((AppInfoEntity) (obj)).isForIpadOnly())
            {
                i = 0;
            }
        }
        ArrayList arraylist = new ArrayList();
        boolean flag = true;
        j = ((flag) ? 1 : 0);
        if (appsettings.getHomeLayoutType() == 0)
        {
            j = ((flag) ? 1 : 0);
            if (appsettings.getNavigationMenuType() != 3)
            {
                j = 0;
            }
        }
        if (obj != null && ((AppInfoEntity) (obj)).getSubTabs() != null && i && j)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (i != 0)
        {
            j = 0;
        } else
        {
            j = 8;
        }
        gridview.setVisibility(j);
        if (i != 0)
        {
            obj = ((AppInfoEntity) (obj)).getSubTabs();
            i = (int)((double)AppCore.getInstance().getDeviceWidth() * 0.14999999999999999D);
            if (obj != null && ((List) (obj)).size() > 0)
            {
                ImageFetcher imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
                obj = ((List) (obj)).iterator();
                do
                {
                    if (!((Iterator) (obj)).hasNext())
                    {
                        break;
                    }
                    Tab tab = (Tab)((Iterator) (obj)).next();
                    if (!tab.getTabId().equalsIgnoreCase("0"))
                    {
                        ViewGroup viewgroup = (ViewGroup)ViewUtils.loadLayout(activity.getApplicationContext(), com.biznessapps.layout.R.layout.sub_tab_layout);
                        ImageView imageview = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.sub_home_image);
                        Object obj1 = (android.widget.LinearLayout.LayoutParams)imageview.getLayoutParams();
                        obj1.height = i;
                        obj1.width = i;
                        obj1 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.sub_home_text);
                        ((TextView) (obj1)).setTextColor(ViewUtils.getColor(tab.getTabLabelTextColor()));
                        ((TextView) (obj1)).setText(tab.getLabel());
                        imagefetcher.loadImage(tab.getTabImageUrl(), imageview);
                        imageview.setOnClickListener(new android.view.View.OnClickListener(cachingmanager, tab, activity) {

                            final Activity val$activity;
                            final CachingManager val$cacher;
                            final Tab val$tab;

                            public void onClick(View view)
                            {
                                Object obj2 = null;
                                Iterator iterator = cacher.getTabList().iterator();
                                do
                                {
                                    view = obj2;
                                    if (!iterator.hasNext())
                                    {
                                        break;
                                    }
                                    view = (Tab)iterator.next();
                                } while (!view.getTabId().equalsIgnoreCase(tab.getTabId()));
                                if (view != null)
                                {
                                    view = ApiUtils.getTabIntent(activity.getApplicationContext(), view, null, null);
                                    activity.startActivity(view);
                                }
                            }

            
            {
                cacher = cachingmanager;
                tab = tab1;
                activity = activity1;
                super();
            }
                        });
                        imageview.setClickable(true);
                        arraylist.add(viewgroup);
                    }
                } while (true);
                if (arraylist.size() > 0)
                {
                    gridview.setAdapter(new BaseAdapter(arraylist) {

                        final List val$buttonList;

                        public int getCount()
                        {
                            return buttonList.size();
                        }

                        public Object getItem(int k)
                        {
                            return buttonList.get(k);
                        }

                        public long getItemId(int k)
                        {
                            return (long)k;
                        }

                        public View getView(int k, View view, ViewGroup viewgroup1)
                        {
                            return (View)buttonList.get(k);
                        }

            
            {
                buttonList = list;
                super();
            }
                    });
                }
            }
        }
    }

    private static List getFilteredData(List list, String s)
    {
        ArrayList arraylist = new ArrayList();
        if (!StringUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        return list;
_L2:
        Iterator iterator = list.iterator();
        do
        {
            list = arraylist;
            if (!iterator.hasNext())
            {
                continue;
            }
            list = (Tab)iterator.next();
            String s1 = list.getLabel();
            if (StringUtils.isNotEmpty(s1) && s1.toLowerCase().contains(s.toLowerCase()))
            {
                arraylist.add(list);
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    public static void initOptionsViews(Activity activity, ViewGroup viewgroup, UiSettings uisettings)
    {
        int i = 1;
        AppSettings appsettings = AppCore.getInstance().getAppSettings();
        if (appsettings.getRows() > 1)
        {
            return;
        }
        Object obj = (GridView)viewgroup.findViewById(com.biznessapps.layout.R.id.home_tab_gallery_view);
        defineSubButtons(((GridView) (obj)), activity);
        ViewUtils.addUpDownGestureListener(((View) (obj)), new Runnable(activity) {

            final Activity val$activity;

            public void run()
            {
                Intent intent = new Intent(activity.getApplicationContext(), ActivitySelector.getActivityClass("GLOBAL_SEARCH_VIEW_CONTROLLER"));
                intent.putExtra("TAB_FRAGMENT", "GLOBAL_SEARCH_VIEW_CONTROLLER");
                activity.startActivity(intent);
            }

            
            {
                activity = activity1;
                super();
            }
        }, activity.getApplicationContext());
        obj = (android.widget.LinearLayout.LayoutParams)((ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.home_horizontal_container)).getLayoutParams();
        int j = activity.getResources().getDimensionPixelSize(com.biznessapps.layout.R.dimen.tabs_full_height_1row);
        int k = activity.getResources().getDimensionPixelSize(com.biznessapps.layout.R.dimen.button_margin_bottom);
        if (appsettings.getHomeLayoutType() == 0)
        {
            i = 0;
        }
        if (i != 0)
        {
            i = k;
        } else
        {
            i = j;
        }
        ((android.widget.LinearLayout.LayoutParams) (obj)).setMargins(0, 0, 0, i);
        updateHomeButtons(activity, viewgroup, uisettings);
    }

    public static void setTabsToSlider(Activity activity, ViewGroup viewgroup, List list, int i, boolean flag, UiSettings uisettings, String s)
    {
        list = getFilteredData(list, s);
        if (flag)
        {
            viewgroup = (ListView)viewgroup.findViewById(com.biznessapps.layout.R.id.list_view);
            viewgroup.setVisibility(0);
            viewgroup.setItemsCanFocus(false);
            s = new LinkedList();
            for (list = list.iterator(); list.hasNext(); s.add(new TabButton((Tab)list.next()))) { }
            viewgroup.setAdapter(new HomeSliderListAdapter(activity.getApplicationContext(), s, uisettings));
            viewgroup.setDividerHeight(1);
            viewgroup.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener(activity) {

                final Activity val$activity;

                public void onItemClick(AdapterView adapterview, View view, int j, long l)
                {
                    adapterview = (TabButton)adapterview.getAdapter().getItem(j);
                    adapterview = ApiUtils.getTabIntent(activity.getApplicationContext(), adapterview.getTab(), null, null);
                    activity.startActivity(adapterview);
                }

            
            {
                activity = activity1;
                super();
            }
            });
            return;
        }
        viewgroup = (GridView)viewgroup.findViewById(com.biznessapps.layout.R.id.grid_view);
        viewgroup.setVisibility(0);
        s = new LinkedList();
        for (list = list.iterator(); list.hasNext(); s.add(new TabButton((Tab)list.next()))) { }
        i /= 2;
        viewgroup.setAdapter(new MenuGridAdapter(activity.getApplicationContext(), s, uisettings, i));
        viewgroup.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener(activity) {

            final Activity val$activity;

            public void onItemClick(AdapterView adapterview, View view, int j, long l)
            {
                adapterview = (TabButton)adapterview.getAdapter().getItem(j);
                adapterview = ApiUtils.getTabIntent(activity.getApplicationContext(), adapterview.getTab(), null, null);
                activity.startActivity(adapterview);
            }

            
            {
                activity = activity1;
                super();
            }
        });
    }

    private static void showDirections(Activity activity)
    {
        showMultipleDialog(activity, com.biznessapps.layout.R.string.branch_directions_title, new android.widget.AdapterView.OnItemClickListener(activity) {

            final Activity val$activity;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                adapterview = (LocationEntity)adapterview.getAdapter().getItem(i);
                ViewUtils.openGoogleMap(activity.getApplicationContext(), adapterview.getLongitude(), adapterview.getLatitude());
            }

            
            {
                activity = activity1;
                super();
            }
        }, false);
    }

    private static void showMultipleDialog(Activity activity, int i, android.widget.AdapterView.OnItemClickListener onitemclicklistener, boolean flag)
    {
        Object obj = AppCore.getInstance().getCachingManager().getAppInfo();
        if (obj == null)
        {
            obj = null;
        } else
        {
            obj = ((AppInfoEntity) (obj)).getLocations();
        }
        if (obj != null && ((List) (obj)).size() == 1)
        {
            if (flag)
            {
                ViewUtils.call(activity, ((LocationEntity)((List) (obj)).get(0)).getTelephone());
                return;
            } else
            {
                onitemclicklistener = (LocationEntity)((List) (obj)).get(0);
                ViewUtils.openGoogleMap(activity.getApplicationContext(), onitemclicklistener.getLongitude(), onitemclicklistener.getLatitude());
                return;
            }
        }
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity);
        ViewGroup viewgroup = (ViewGroup)ViewUtils.loadLayout(activity.getApplicationContext(), com.biznessapps.layout.R.layout.multiple_item_dialog);
        ListView listview = (ListView)viewgroup.findViewById(com.biznessapps.layout.R.id.list_view);
        listview.setItemsCanFocus(false);
        if (obj != null && !((List) (obj)).isEmpty())
        {
            ArrayList arraylist = new ArrayList();
            obj = ((List) (obj)).iterator();
            do
            {
                if (!((Iterator) (obj)).hasNext())
                {
                    break;
                }
                LocationEntity locationentity = (LocationEntity)((Iterator) (obj)).next();
                if (StringUtils.isNotEmpty(locationentity.getAddressInfo(", ")))
                {
                    arraylist.add(locationentity);
                }
            } while (true);
            listview.setAdapter(new MulitipleItemAdapter(activity.getApplicationContext(), arraylist));
        }
        listview.setOnItemClickListener(onitemclicklistener);
        builder.setView(viewgroup);
        builder.setTitle(i);
        builder.show();
    }

    public static void updateHomeButtons(Activity activity, ViewGroup viewgroup, UiSettings uisettings)
    {
        boolean flag = false;
        AppSettings appsettings = AppCore.getInstance().getAppSettings();
        if (appsettings.getRows() > 1)
        {
            return;
        }
        Button button = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.call_us_button);
        Button button1 = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.direction_button);
        viewgroup = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.tell_friend_button);
        button.setText(com.biznessapps.layout.R.string.call_us);
        button1.setText(com.biznessapps.layout.R.string.directions);
        viewgroup.setText(com.biznessapps.layout.R.string.share);
        int i = 0;
        int j;
        if (appsettings.getHomeLayoutType() == 0)
        {
            if (appsettings.getNavigationMenuType() == 3)
            {
                i = 1;
            }
        } else
        {
            i = 1;
        }
        if (i != 0 && appsettings.hasCallButton())
        {
            j = 0;
        } else
        {
            j = 8;
        }
        button.setVisibility(j);
        if (i != 0 && appsettings.hasDirectionButton())
        {
            j = 0;
        } else
        {
            j = 8;
        }
        button1.setVisibility(j);
        if (i != 0 && appsettings.hasTellFriendButton())
        {
            i = ((flag) ? 1 : 0);
        } else
        {
            i = 8;
        }
        viewgroup.setVisibility(i);
        button.setTextColor(uisettings.getButtonTextColor());
        CommonUtils.overrideMediumButtonColor(uisettings.getButtonBgColor(), button.getBackground());
        button1.setTextColor(uisettings.getButtonTextColor());
        CommonUtils.overrideMediumButtonColor(uisettings.getButtonBgColor(), button1.getBackground());
        viewgroup.setTextColor(uisettings.getButtonTextColor());
        CommonUtils.overrideMediumButtonColor(uisettings.getButtonBgColor(), viewgroup.getBackground());
        button.setOnClickListener(new android.view.View.OnClickListener(activity) {

            final Activity val$activity;

            public void onClick(View view)
            {
                HomeScreenHelper.callUs(activity);
            }

            
            {
                activity = activity1;
                super();
            }
        });
        button1.setOnClickListener(new android.view.View.OnClickListener(activity) {

            final Activity val$activity;

            public void onClick(View view)
            {
                HomeScreenHelper.showDirections(activity);
            }

            
            {
                activity = activity1;
                super();
            }
        });
        viewgroup.setOnClickListener(new android.view.View.OnClickListener(activity) {

            final Activity val$activity;

            public void onClick(View view)
            {
                ShareComponent.showSharingOptionDialog(activity);
            }

            
            {
                activity = activity1;
                super();
            }
        });
    }


}
