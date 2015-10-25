// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.locations;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.text.format.DateFormat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonShareableMapActivity;
import com.biznessapps.common.entities.AnalyticEntity;
import com.biznessapps.common.style.BZButtonStyle;
import com.biznessapps.food_ordering.CheckAvailabilityTask;
import com.biznessapps.food_ordering.FOUtils;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.entities.CartEntity;
import com.biznessapps.food_ordering.entities.CommonInfo;
import com.biznessapps.food_ordering.entities.RestaurantEntity;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageCache;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.food_ordering.locations:
//            FOOpeningTime

public class LocationDetailActivity extends CommonShareableMapActivity
{

    private static final int NULL_MODE = 0;
    private Button chooseItemsButton;
    private LinearLayout dateContainer;
    private ViewGroup dateTimeContainer;
    private List dateViewList;
    private Button deliveryButton;
    private Button dineInButton;
    private LocationEntity item;
    private int mode;
    private Button takeoutButton;
    private LinearLayout timeContainer;
    private long timeStamp;
    private List timeViewList;

    public LocationDetailActivity()
    {
        mode = 0;
        dateViewList = new ArrayList();
        timeViewList = new ArrayList();
    }

    private void activateView(View view)
    {
        ((ImageView)view.findViewById(com.biznessapps.layout.R.id.background_view)).setSelected(true);
        view.setSelected(true);
        TextView textview = (TextView)view.findViewById(com.biznessapps.layout.R.id.value_view);
        view = (TextView)view.findViewById(com.biznessapps.layout.R.id.number_view);
        textview.setTextColor(settings.getButtonTextColor());
        view.setTextColor(settings.getButtonTextColor());
    }

    private void checkAvailability()
    {
        final List orderedItems = FoodOrderingManager.getInstance().getCart().getItems();
        if (orderedItems.isEmpty())
        {
            openCategoriesScreen();
            return;
        } else
        {
            com.biznessapps.food_ordering.CheckAvailabilityTask.CustomRunnable customrunnable = new com.biznessapps.food_ordering.CheckAvailabilityTask.CustomRunnable() {

                final LocationDetailActivity this$0;
                final List val$orderedItems;

                public void run()
                {
                    Context context;
label0:
                    {
                        context = getApplicationContext();
                        if (context != null)
                        {
                            List list = getResulItems();
                            if (orderedItems.size() != list.size())
                            {
                                break label0;
                            }
                            openCategoriesScreen();
                        }
                        return;
                    }
                    ViewUtils.showCustomToast(context, context.getString(com.biznessapps.layout.R.string.fo_selected_items_not_available));
                }

            
            {
                this$0 = LocationDetailActivity.this;
                orderedItems = list;
                super();
            }
            };
            String s = FoodOrderingManager.getInstance().getChosenLocation().getId();
            ArrayList arraylist = new ArrayList();
            arraylist.add(new WeakReference(deliveryButton));
            arraylist.add(new WeakReference(takeoutButton));
            arraylist.add(new WeakReference(dineInButton));
            arraylist.add(new WeakReference(chooseItemsButton));
            orderedItems = new CheckAvailabilityTask(this, arraylist, s, timeStamp, orderedItems, null, null, tabId, cacher().getAppCode());
            orderedItems.setCustomHandling(customrunnable);
            orderedItems.execute(new Void[0]);
            return;
        }
    }

    private void deactivateView(List list)
    {
        Object obj;
        for (list = list.iterator(); list.hasNext(); ((TextView) (obj)).setTextColor(0xff000000))
        {
            obj = (View)list.next();
            ((ImageView)((View) (obj)).findViewById(com.biznessapps.layout.R.id.background_view)).setSelected(false);
            ((View) (obj)).setSelected(false);
            TextView textview = (TextView)((View) (obj)).findViewById(com.biznessapps.layout.R.id.value_view);
            obj = (TextView)((View) (obj)).findViewById(com.biznessapps.layout.R.id.number_view);
            textview.setTextColor(0xff000000);
        }

    }

    private void defineActiveServiceButtons()
    {
        Object obj = FoodOrderingManager.getInstance().getRestaurantEntity();
        boolean flag = ((RestaurantEntity) (obj)).isDineIn();
        boolean flag1 = ((RestaurantEntity) (obj)).isDelivery();
        boolean flag2 = ((RestaurantEntity) (obj)).isTakeout();
        obj = new ArrayList();
        if (flag)
        {
            ((List) (obj)).add(dineInButton);
        }
        if (flag1)
        {
            ((List) (obj)).add(deliveryButton);
        }
        if (flag2)
        {
            ((List) (obj)).add(takeoutButton);
        }
        if (((List) (obj)).size() == 1)
        {
            ((Button)((List) (obj)).get(0)).performClick();
        }
    }

    private void defineDay()
    {
        int k;
        k = Calendar.getInstance().get(7);
        int i = 0;
        int l;
        if (mode == 3)
        {
            i = 1;
            break MISSING_BLOCK_LABEL_24;
        } else
        {
            if (mode == 2)
            {
                i = FoodOrderingManager.getInstance().getRestaurantEntity().getTakeoutDays() + 1;
            } else
            if (mode == 1)
            {
                i = FoodOrderingManager.getInstance().getRestaurantEntity().getDeliveryDays() + 1;
            }
            continue;
        }
        do
        {
            dateContainer = (LinearLayout)findViewById(com.biznessapps.layout.R.id.date_gallery_container);
            dateContainer.removeAllViews();
            deactivateView(dateViewList);
            int j = 1;
            while (j <= i) 
            {
                Calendar calendar = Calendar.getInstance();
                calendar.add(5, j - 1);
                l = calendar.get(7);
                if (!item.getFoOpeningTime().getInterval(l).isEmpty())
                {
                    Object obj = new SimpleDateFormat("EE");
                    final ViewGroup view;
                    Object obj1;
                    Object obj2;
                    if (j == 1)
                    {
                        obj = FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.fo_today);
                    } else
                    {
                        obj = ((SimpleDateFormat) (obj)).format(calendar.getTime());
                    }
                    obj2 = (new StringBuilder()).append("").append(calendar.get(5)).toString();
                    obj1 = getItemView((new StringBuilder()).append(((String) (obj))).append(((String) (obj2))).toString(), dateViewList, com.biznessapps.layout.R.id.DATE_STRING_TAG);
                    view = ((ViewGroup) (obj1));
                    if (obj1 == null)
                    {
                        view = (ViewGroup)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.fo_location_date_item);
                        view.setTag(com.biznessapps.layout.R.id.DATE_STRING_TAG, (new StringBuilder()).append(((String) (obj))).append(((String) (obj2))).toString());
                        dateViewList.add(view);
                    }
                    view = (ViewGroup)view;
                    FOUtils.setBackground((ImageView)view.findViewById(com.biznessapps.layout.R.id.background_view), getApplicationContext(), settings);
                    obj1 = (TextView)view.findViewById(com.biznessapps.layout.R.id.value_view);
                    obj2 = (TextView)view.findViewById(com.biznessapps.layout.R.id.number_view);
                    ((TextView) (obj1)).setText(((CharSequence) (obj)));
                    ((TextView) (obj2)).setText((new StringBuilder()).append("").append(calendar.get(5)).toString());
                    view.setTag(com.biznessapps.layout.R.id.CALENDAR_TAG, calendar);
                    view.setOnClickListener(new android.view.View.OnClickListener() {

                        final LocationDetailActivity this$0;
                        final ViewGroup val$view;

                        public void onClick(View view1)
                        {
                            int i1 = ((Calendar)view.getTag(com.biznessapps.layout.R.id.CALENDAR_TAG)).get(7);
                            defineTime(i1);
                            deactivateView(dateViewList);
                            activateView(view);
                        }

            
            {
                this$0 = LocationDetailActivity.this;
                view = viewgroup;
                super();
            }
                    });
                    if (j == 1)
                    {
                        view.performClick();
                    }
                    dateContainer.addView(view);
                }
                j++;
            }
            defineTime(k);
            return;
        } while (true);
    }

    private void defineServiceButtons()
    {
        byte byte0 = 8;
        Object obj = FoodOrderingManager.getInstance().getRestaurantEntity();
        boolean flag = ((RestaurantEntity) (obj)).isDineIn();
        boolean flag1 = ((RestaurantEntity) (obj)).isDelivery();
        boolean flag2 = ((RestaurantEntity) (obj)).isTakeout();
        int i;
        if (!flag && flag1)
        {
            takeoutButton = (Button)findViewById(com.biznessapps.layout.R.id.first_button);
            dineInButton = (Button)findViewById(com.biznessapps.layout.R.id.third_button);
            deliveryButton = (Button)findViewById(com.biznessapps.layout.R.id.second_button);
        } else
        if (!flag2 && flag1)
        {
            dineInButton = (Button)findViewById(com.biznessapps.layout.R.id.first_button);
            deliveryButton = (Button)findViewById(com.biznessapps.layout.R.id.second_button);
            takeoutButton = (Button)findViewById(com.biznessapps.layout.R.id.third_button);
        } else
        {
            dineInButton = (Button)findViewById(com.biznessapps.layout.R.id.first_button);
            takeoutButton = (Button)findViewById(com.biznessapps.layout.R.id.second_button);
            deliveryButton = (Button)findViewById(com.biznessapps.layout.R.id.third_button);
        }
        dineInButton.setText(FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.fo_dine_in));
        takeoutButton.setText(FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.fo_takeout));
        deliveryButton.setText(FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.fo_delivery));
        obj = deliveryButton;
        if (flag1)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        ((Button) (obj)).setVisibility(i);
        obj = dineInButton;
        if (flag)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        ((Button) (obj)).setVisibility(i);
        obj = takeoutButton;
        i = byte0;
        if (flag2)
        {
            i = 0;
        }
        ((Button) (obj)).setVisibility(i);
        if (!flag1 && !flag && !flag2)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (i != 0)
        {
            ViewUtils.showDialog(this, getString(com.biznessapps.layout.R.string.fo_no_service_options_available), new Runnable() {

                final LocationDetailActivity this$0;

                public void run()
                {
                    finish();
                }

            
            {
                this$0 = LocationDetailActivity.this;
                super();
            }
            }, false);
        }
    }

    private void defineTime(int i)
    {
        SimpleDateFormat simpledateformat;
        int j;
        int i1;
        boolean flag;
        int l1;
        int j2;
        int l2;
        List list = item.getFoOpeningTime().getInterval(i);
        timeContainer.removeAllViews();
        deactivateView(timeViewList);
        Object obj;
        int k;
        int j1;
        int k1;
        int i2;
        int k2;
        if (DateFormat.is24HourFormat(getApplicationContext()))
        {
            obj = "H:mm";
        } else
        {
            obj = "h:mm a";
        }
        simpledateformat = new SimpleDateFormat(((String) (obj)));
        i2 = list.size();
        j2 = FoodOrderingManager.getInstance().getRestaurantEntity().getLeadTime();
        obj = Calendar.getInstance();
        k2 = ((Calendar) (obj)).get(11);
        j = ((Calendar) (obj)).get(12);
        j1 = j;
        if (j % 5 != 0)
        {
            j1 = j + (5 - j % 5);
        }
        if (((Calendar) (obj)).get(7) == i)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i = 1;
        k = 0;
        k1 = 0;
        if (k1 >= i2)
        {
            break MISSING_BLOCK_LABEL_548;
        }
        obj = (FOOpeningTime.Interval)list.get(k1);
        l1 = ((FOOpeningTime.Interval) (obj)).getFrom();
        l2 = ((FOOpeningTime.Interval) (obj)).getTo();
        i1 = l1;
        j = k;
        if (!flag) goto _L2; else goto _L1
_L1:
        i1 = l1;
        j = k;
        if (k != 0) goto _L2; else goto _L3
_L3:
        j = k2 * 60 + j1;
        i1 = l1;
        if (j > l1)
        {
            i1 = j;
        }
        if (i1 <= l2) goto _L5; else goto _L4
_L4:
        i1 = k;
        l1 = i;
_L7:
        k1++;
        i = l1;
        k = i1;
        break MISSING_BLOCK_LABEL_135;
_L5:
        j = 1;
_L2:
        int l = i1 + j2;
        do
        {
            l1 = i;
            i1 = j;
            if (l > l2)
            {
                break;
            }
            i1 = l / 60;
            l1 = l % 60;
            if (i1 != 0 || l1 != 0)
            {
                Object obj1 = new Date(0, 0, 1, i1, l1);
                final ViewGroup view;
                View view1;
                if (i != 0 && flag)
                {
                    obj1 = String.format("%s %s", new Object[] {
                        getString(com.biznessapps.layout.R.string.fo_asap), simpledateformat.format(((Date) (obj1)))
                    });
                    i = 0;
                } else
                {
                    obj1 = String.format("%s", new Object[] {
                        simpledateformat.format(((Date) (obj1)))
                    });
                }
                view1 = getItemView(((String) (obj1)), timeViewList, com.biznessapps.layout.R.id.TIME_TAG);
                view = view1;
                if (view1 == null)
                {
                    view = (ViewGroup)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.fo_location_time_item);
                    view.setTag(com.biznessapps.layout.R.id.TIME_TAG, obj1);
                    view.setTag(com.biznessapps.layout.R.id.TIME_HOURS_TAG, Integer.valueOf(i1));
                    view.setTag(com.biznessapps.layout.R.id.TIME_MINS_TAG, Integer.valueOf(l1));
                    timeViewList.add(view);
                }
                view = (ViewGroup)view;
                FOUtils.setBackground((ImageView)view.findViewById(com.biznessapps.layout.R.id.background_view), getApplicationContext(), settings);
                ((TextView)view.findViewById(com.biznessapps.layout.R.id.value_view)).setText(((CharSequence) (obj1)));
                if (view.getParent() == null)
                {
                    timeContainer.addView(view);
                }
                view.setOnClickListener(new android.view.View.OnClickListener() {

                    final LocationDetailActivity this$0;
                    final ViewGroup val$view;

                    public void onClick(View view2)
                    {
                        deactivateView(timeViewList);
                        activateView(view);
                    }

            
            {
                this$0 = LocationDetailActivity.this;
                view = viewgroup;
                super();
            }
                });
            }
            l += j2;
        } while (true);
        if (true) goto _L7; else goto _L6
_L6:
    }

    private View getItemView(String s, List list, int i)
    {
        Object obj = null;
        Iterator iterator = list.iterator();
        String s1;
        do
        {
            list = obj;
            if (!iterator.hasNext())
            {
                break;
            }
            list = (View)iterator.next();
            s1 = (String)list.getTag(i);
        } while (s1 == null || !s1.equalsIgnoreCase(s));
        return list;
    }

    private long getTimeStamp()
    {
        long l;
label0:
        {
            long l1 = 0L;
            Calendar calendar = null;
            Iterator iterator = dateViewList.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                View view = (View)iterator.next();
                if (view.isSelected())
                {
                    calendar = (Calendar)view.getTag(com.biznessapps.layout.R.id.CALENDAR_TAG);
                }
            } while (true);
            l = l1;
            if (calendar == null)
            {
                break label0;
            }
            iterator = timeViewList.iterator();
            View view1;
            do
            {
                l = l1;
                if (!iterator.hasNext())
                {
                    break label0;
                }
                view1 = (View)iterator.next();
            } while (!view1.isSelected());
            int i = ((Integer)view1.getTag(com.biznessapps.layout.R.id.TIME_HOURS_TAG)).intValue();
            int j = ((Integer)view1.getTag(com.biznessapps.layout.R.id.TIME_MINS_TAG)).intValue();
            calendar.set(11, i);
            calendar.set(12, j);
            calendar.set(13, 0);
            calendar.set(14, 0);
            calendar.getTime();
            l = calendar.getTimeInMillis() / 1000L;
        }
        return l;
    }

    private void initListeners()
    {
        chooseItemsButton.setOnClickListener(new android.view.View.OnClickListener() {

            final LocationDetailActivity this$0;

            public void onClick(View view)
            {
                if (mode != 0)
                {
                    timeStamp = getTimeStamp();
                    if (timeStamp != 0L)
                    {
                        checkAvailability();
                        return;
                    } else
                    {
                        ViewUtils.showWarningDialog(LocationDetailActivity.this, com.biznessapps.layout.R.string.fo_select_day_time);
                        return;
                    }
                } else
                {
                    ViewUtils.showWarningDialog(LocationDetailActivity.this, com.biznessapps.layout.R.string.fo_select_order_type);
                    return;
                }
            }

            
            {
                this$0 = LocationDetailActivity.this;
                super();
            }
        });
        dineInButton.setOnClickListener(new android.view.View.OnClickListener() );
        deliveryButton.setOnClickListener(new android.view.View.OnClickListener() );
        takeoutButton.setOnClickListener(new android.view.View.OnClickListener() );
    }

    private void initViews()
    {
        defineServiceButtons();
        chooseItemsButton = (Button)findViewById(com.biznessapps.layout.R.id.choose_items_button);
        dateTimeContainer = (ViewGroup)findViewById(com.biznessapps.layout.R.id.date_time_container);
        dateContainer = (LinearLayout)findViewById(com.biznessapps.layout.R.id.date_gallery_container);
        timeContainer = (LinearLayout)findViewById(com.biznessapps.layout.R.id.time_gallery_container);
        TextView textview = (TextView)findViewById(com.biznessapps.layout.R.id.date_text_view);
        TextView textview1 = (TextView)findViewById(com.biznessapps.layout.R.id.time_text_view);
        FOUtils.setSectionHeader(settings, getApplicationContext(), textview, com.biznessapps.layout.R.string.date);
        FOUtils.setSectionHeader(settings, getApplicationContext(), textview1, com.biznessapps.layout.R.string.time);
        BZButtonStyle.getInstance(getApplicationContext()).apply(settings, chooseItemsButton);
        chooseItemsButton.setText(FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.fo_choose_items));
        int i = getResources().getColor(com.biznessapps.layout.R.color.fo_buttom_color);
        BZButtonStyle.getInstance(getApplicationContext()).apply(i, 0xff000000, dineInButton);
        BZButtonStyle.getInstance(getApplicationContext()).apply(i, 0xff000000, takeoutButton);
        BZButtonStyle.getInstance(getApplicationContext()).apply(i, 0xff000000, deliveryButton);
        showAddressInfo(item);
    }

    private void loadBgUrl()
    {
        Object obj;
label0:
        {
            bgUrl = FoodOrderingManager.getInstance().getCommonInfo().getBackground();
            if (getViewForBg() != null && StringUtils.isNotEmpty(bgUrl))
            {
                ImageFetcher imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
                obj = imagefetcher.getCache().getBitmapFromDiskCache((new StringBuilder()).append(bgUrl).append("BLUR").toString());
                if (obj != null)
                {
                    break label0;
                }
                obj = getViewForBg();
                imagefetcher.loadBgImage(bgUrl, ((View) (obj)), new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback() {

                    final LocationDetailActivity this$0;

                    public void onImageLoaded(String s, Bitmap bitmap, View view)
                    {
                        getViewForBg().setBackgroundDrawable(new BitmapDrawable(view.getResources(), bitmap));
                    }

            
            {
                this$0 = LocationDetailActivity.this;
                super();
            }
                }, null, 3, settings);
            }
            return;
        }
        getViewForBg().setBackgroundDrawable(new BitmapDrawable(getViewForBg().getResources(), ((Bitmap) (obj))));
    }

    private void openCategoriesScreen()
    {
        FoodOrderingManager.getInstance().getCart().setDeliveryOption(mode);
        FoodOrderingManager.getInstance().getCart().setTimeStamp(timeStamp);
        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_CATEGORIES"));
        intent.putExtra("TAB_FRAGMENT", "FO_CATEGORIES");
        intent.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.fo_categories));
        intent.putExtra("BG_URL_EXTRA", bgUrl);
        intent.putExtra("TIMESTAMP_EXTRA", timeStamp);
        intent.putExtra("LOCATION_ID", getIntent().getStringExtra("LOCATION_ID"));
        intent.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
        startActivity(intent);
    }

    private void showAddressInfo(final LocationEntity item)
    {
        TextView textview = (TextView)findViewById(com.biznessapps.layout.R.id.location_city_text);
        TextView textview1 = (TextView)findViewById(com.biznessapps.layout.R.id.location_address_text);
        TextView textview2 = (TextView)findViewById(com.biznessapps.layout.R.id.distance_text);
        ImageView imageview = (ImageView)findViewById(com.biznessapps.layout.R.id.switch_map_view);
        ImageView imageview1 = (ImageView)findViewById(com.biznessapps.layout.R.id.location_ping);
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), imageview1.getDrawable());
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), imageview.getDrawable());
        LocationUtils.setAddress(textview, textview1, item);
        LocationUtils.setDistanceValue(getApplicationContext(), textview2, item);
        imageview.setOnClickListener(new android.view.View.OnClickListener() {

            final LocationDetailActivity this$0;
            final LocationEntity val$item;

            public void onClick(View view)
            {
                ViewUtils.openGoogleMap(getApplicationContext(), item.getLongitude(), item.getLatitude());
            }

            
            {
                this$0 = LocationDetailActivity.this;
                item = locationentity;
                super();
            }
        });
    }

    protected AnalyticEntity getAnalyticData()
    {
        AnalyticEntity analyticentity = getAnalyticData();
        analyticentity.setItemId(getIntent().getStringExtra("LOCATION_ID"));
        return analyticentity;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.fo_location_detail;
    }

    public ViewGroup getProgressBarContainer()
    {
        return (ViewGroup)findViewById(com.biznessapps.layout.R.id.progress_bar_container);
    }

    public View getViewForBg()
    {
        return findViewById(com.biznessapps.layout.R.id.container_layout);
    }

    public void onBackPressed()
    {
        if (FoodOrderingManager.getInstance().getCart().isEmpty())
        {
            onBackPressed();
            return;
        } else
        {
            ViewUtils.showDialog(this, null, getString(com.biznessapps.layout.R.string.fo_location_warning), new Runnable() {

                final LocationDetailActivity this$0;

                public void run()
                {
                    FoodOrderingManager.getInstance().getCart().clear();
                    finish();
                }

            
            {
                this$0 = LocationDetailActivity.this;
                super();
            }
            }, true, getString(com.biznessapps.layout.R.string.go_back), getString(com.biznessapps.layout.R.string.stay_here));
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        onCreate(bundle);
        ViewUtils.setRootBgColor(findViewById(com.biznessapps.layout.R.id.container_layout), settings);
        item = FoodOrderingManager.getInstance().getChosenLocation();
        if (item != null)
        {
            initViews();
            initListeners();
            loadBgUrl();
            addPins(item);
            defineActiveServiceButtons();
        }
    }

    protected boolean useMapInfoWindow()
    {
        return false;
    }

















/*
    static int access$502(LocationDetailActivity locationdetailactivity, int i)
    {
        locationdetailactivity.mode = i;
        return i;
    }

*/



/*
    static long access$602(LocationDetailActivity locationdetailactivity, long l)
    {
        locationdetailactivity.timeStamp = l;
        return l;
    }

*/



}
