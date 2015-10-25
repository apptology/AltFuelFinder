// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.format.DateFormat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.ParseStateEntity;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.common.style.BZButtonStyle;
import com.biznessapps.food_ordering.CheckAvailabilityTask;
import com.biznessapps.food_ordering.FOUtils;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.entities.CartEntity;
import com.biznessapps.food_ordering.entities.PastOrderEntity;
import com.biznessapps.food_ordering.entities.RestaurantEntity;
import com.biznessapps.food_ordering.locations.FOOpeningTime;
import com.biznessapps.food_ordering.parser.FoodOrderingParser;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.ExpandableListView;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.biznessapps.food_ordering.account:
//            PastOrdersDetailAdapter

public class PastOrdersDetailFragment extends CommonFragment
{

    private static final int NULL_MODE = 0;
    private LinearLayout dateContainer;
    private ViewGroup dateTimeContainer;
    private List dateViewList;
    private Button deliveryButton;
    private Button dineInButton;
    private boolean hasAddedItems;
    private LocationEntity item;
    private ExpandableListView listView;
    private String locId;
    private int mode;
    private com.biznessapps.common.activities.CommonFragmentActivity.BackPressed onBackPressedListener;
    private PastOrderEntity pastOrder;
    private Button reorderButton;
    private Button takeoutButton;
    private LinearLayout timeContainer;
    private long timeStamp;
    private List timeViewList;

    public PastOrdersDetailFragment()
    {
        mode = 0;
        dateViewList = new ArrayList();
        timeViewList = new ArrayList();
        onBackPressedListener = new com.biznessapps.common.activities.CommonFragmentActivity.BackPressed() {

            final PastOrdersDetailFragment this$0;

            public boolean onBackPressed()
            {
                if (FoodOrderingManager.getInstance().getCart().isEmpty())
                {
                    return false;
                } else
                {
                    ViewUtils.showDialog(getHoldActivity(), null, getString(com.biznessapps.layout.R.string.fo_location_warning), new Runnable() {

                        final _cls1 this$1;

                        public void run()
                        {
                            FoodOrderingManager.getInstance().getCart().clear();
                            getHoldActivity().finish();
                        }

            
            {
                this$1 = _cls1.this;
                super();
            }
                    }, true, getString(com.biznessapps.layout.R.string.go_back), getString(com.biznessapps.layout.R.string.stay_here));
                    return true;
                }
            }

            
            {
                this$0 = PastOrdersDetailFragment.this;
                super();
            }
        };
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
        com.biznessapps.food_ordering.CheckAvailabilityTask.CustomRunnable customrunnable = new com.biznessapps.food_ordering.CheckAvailabilityTask.CustomRunnable() {

            final PastOrdersDetailFragment this$0;

            public void run()
            {
                openConfirmationScreen(getResulItems());
            }

            
            {
                this$0 = PastOrdersDetailFragment.this;
                super();
            }
        };
        (new CheckAvailabilityTask(getHoldActivity(), getViewsRef(), pastOrder.getLocationId(), timeStamp, pastOrder.getOrderedItems(), customrunnable, null, tabId, cacher().getAppCode())).execute(new Void[0]);
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
            dateContainer = (LinearLayout)root.findViewById(com.biznessapps.layout.R.id.date_gallery_container);
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

                        final PastOrdersDetailFragment this$0;
                        final ViewGroup val$view;

                        public void onClick(View view1)
                        {
                            int i1 = ((Calendar)view.getTag(com.biznessapps.layout.R.id.CALENDAR_TAG)).get(7);
                            defineTime(i1);
                            deactivateView(dateViewList);
                            activateView(view);
                        }

            
            {
                this$0 = PastOrdersDetailFragment.this;
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
            takeoutButton = (Button)root.findViewById(com.biznessapps.layout.R.id.first_button);
            dineInButton = (Button)root.findViewById(com.biznessapps.layout.R.id.third_button);
            deliveryButton = (Button)root.findViewById(com.biznessapps.layout.R.id.second_button);
        } else
        if (!flag2 && flag1)
        {
            dineInButton = (Button)root.findViewById(com.biznessapps.layout.R.id.first_button);
            deliveryButton = (Button)root.findViewById(com.biznessapps.layout.R.id.second_button);
            takeoutButton = (Button)root.findViewById(com.biznessapps.layout.R.id.third_button);
        } else
        {
            dineInButton = (Button)root.findViewById(com.biznessapps.layout.R.id.first_button);
            takeoutButton = (Button)root.findViewById(com.biznessapps.layout.R.id.second_button);
            deliveryButton = (Button)root.findViewById(com.biznessapps.layout.R.id.third_button);
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
            ViewUtils.showDialog(getHoldActivity(), getString(com.biznessapps.layout.R.string.fo_no_service_options_available), new Runnable() {

                final PastOrdersDetailFragment this$0;

                public void run()
                {
                    getHoldActivity().finish();
                }

            
            {
                this$0 = PastOrdersDetailFragment.this;
                super();
            }
            }, false);
        }
    }

    private void defineTime(int i)
    {
        SimpleDateFormat simpledateformat;
        boolean flag;
        int j1;
        int k1;
        int j2;
        int l2;
        List list = item.getFoOpeningTime().getInterval(i);
        timeContainer.removeAllViews();
        deactivateView(timeViewList);
        Object obj;
        int j;
        int l;
        int i1;
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
        l = j;
        if (j % 5 != 0)
        {
            l = j + (5 - j % 5);
        }
        if (((Calendar) (obj)).get(7) == i)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i = 1;
        i1 = 0;
        if (i1 >= i2)
        {
            break MISSING_BLOCK_LABEL_526;
        }
        obj = (com.biznessapps.food_ordering.locations.FOOpeningTime.Interval)list.get(i1);
        j1 = ((com.biznessapps.food_ordering.locations.FOOpeningTime.Interval) (obj)).getFrom();
        l2 = ((com.biznessapps.food_ordering.locations.FOOpeningTime.Interval) (obj)).getTo();
        k1 = j1;
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        k1 = j1;
        if (i1 != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        k1 = k2 * 60 + l;
        j = j1;
        if (k1 > j1)
        {
            j = k1;
        }
        k1 = j;
        if (j <= l2)
        {
            break; /* Loop/switch isn't completed */
        }
        j1 = i;
_L4:
        i1++;
        i = j1;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_132;
_L1:
        int k = k1 + j2;
        do
        {
            j1 = i;
            if (k > l2)
            {
                break;
            }
            j1 = k / 60;
            int l1 = k % 60;
            if (j1 != 0 || l1 != 0)
            {
                Object obj1 = new Date(0, 0, 1, j1, l1);
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
                    view.setTag(com.biznessapps.layout.R.id.TIME_HOURS_TAG, Integer.valueOf(j1));
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

                    final PastOrdersDetailFragment this$0;
                    final ViewGroup val$view;

                    public void onClick(View view2)
                    {
                        deactivateView(timeViewList);
                        activateView(view);
                    }

            
            {
                this$0 = PastOrdersDetailFragment.this;
                view = viewgroup;
                super();
            }
                });
            }
            k += j2;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
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
        reorderButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PastOrdersDetailFragment this$0;

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
                        ViewUtils.showWarningDialog(getHoldActivity(), com.biznessapps.layout.R.string.fo_select_day_time);
                        return;
                    }
                } else
                {
                    ViewUtils.showWarningDialog(getHoldActivity(), com.biznessapps.layout.R.string.fo_select_order_type);
                    return;
                }
            }

            
            {
                this$0 = PastOrdersDetailFragment.this;
                super();
            }
        });
        dineInButton.setOnClickListener(new android.view.View.OnClickListener() );
        deliveryButton.setOnClickListener(new android.view.View.OnClickListener() );
        takeoutButton.setOnClickListener(new android.view.View.OnClickListener() );
    }

    private void initOrdersListView()
    {
        listView = (ExpandableListView)root.findViewById(com.biznessapps.layout.R.id.list_view);
        PastOrdersDetailAdapter pastordersdetailadapter = new PastOrdersDetailAdapter(getApplicationContext(), pastOrder.getOrderedItems(), settings);
        listView.setItemsCanFocus(false);
        listView.setExpandOn(true);
        listView.setAdapter(pastordersdetailadapter);
    }

    private void initViews()
    {
        defineServiceButtons();
        reorderButton = (Button)root.findViewById(com.biznessapps.layout.R.id.reorder_button);
        dateTimeContainer = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.date_time_container);
        dateContainer = (LinearLayout)root.findViewById(com.biznessapps.layout.R.id.date_gallery_container);
        timeContainer = (LinearLayout)root.findViewById(com.biznessapps.layout.R.id.time_gallery_container);
        TextView textview = (TextView)root.findViewById(com.biznessapps.layout.R.id.date_text_view);
        TextView textview1 = (TextView)root.findViewById(com.biznessapps.layout.R.id.time_text_view);
        FOUtils.setSectionHeader(settings, getApplicationContext(), textview, com.biznessapps.layout.R.string.date);
        FOUtils.setSectionHeader(settings, getApplicationContext(), textview1, com.biznessapps.layout.R.string.time);
        BZButtonStyle.getInstance(getApplicationContext()).apply(settings, reorderButton);
        reorderButton.setText(FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.fo_reorder));
        int i = getResources().getColor(com.biznessapps.layout.R.color.fo_buttom_color);
        BZButtonStyle.getInstance(getApplicationContext()).apply(i, 0xff000000, dineInButton);
        BZButtonStyle.getInstance(getApplicationContext()).apply(i, 0xff000000, takeoutButton);
        BZButtonStyle.getInstance(getApplicationContext()).apply(i, 0xff000000, deliveryButton);
        textview = (TextView)root.findViewById(com.biznessapps.layout.R.id.reorder_text_view);
        textview1 = (TextView)root.findViewById(com.biznessapps.layout.R.id.reorder_text2_view);
        textview.setTextColor(settings.getFeatureTextColor());
        textview1.setTextColor(settings.getFeatureTextColor());
        textview.setText(com.biznessapps.layout.R.string.fo_reorder_text1);
        textview1.setText(com.biznessapps.layout.R.string.fo_reorder_text2);
        textview = (TextView)root.findViewById(com.biznessapps.layout.R.id.total_charges_value_view);
        textview1 = (TextView)root.findViewById(com.biznessapps.layout.R.id.total_charges_view);
        CartEntity cartentity = FoodOrderingManager.getInstance().getCart();
        textview1.setText(String.format("%s (%s)", new Object[] {
            getString(com.biznessapps.layout.R.string.fo_total_charges), cartentity.getCurrency()
        }).toUpperCase(Locale.getDefault()));
        textview.setText(pastOrder.getTotalAmount());
        textview.setTextColor(settings.getFeatureTextColor());
        textview1.setTextColor(settings.getFeatureTextColor());
    }

    private void openConfirmationScreen(List list)
    {
        FoodOrderingManager.getInstance().getCart().setDeliveryOption(mode);
        FoodOrderingManager.getInstance().getCart().setTimeStamp(timeStamp);
        FoodOrderingManager.getInstance().setChosenLocation(item);
        if (!hasAddedItems)
        {
            hasAddedItems = true;
            FoodOrderingManager.getInstance().getCart().addToCart(list);
        }
        list = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_CONFIRMATION_PAGE"));
        list.putExtra("TAB_FRAGMENT", "FO_CONFIRMATION_PAGE");
        list.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.fo_confirmation));
        list.putExtra("TIMESTAMP_EXTRA", timeStamp);
        list.putExtra("LOCATION_ID", pastOrder.getLocationId());
        list.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
        startActivity(list);
    }

    private void showLocationNotAvailableDialog(final Activity activity)
    {
        ViewUtils.showDialog(activity, null, getString(com.biznessapps.layout.R.string.location_is_not_available), new Runnable() {

            final PastOrdersDetailFragment this$0;
            final Activity val$activity;

            public void run()
            {
                activity.finish();
            }

            
            {
                this$0 = PastOrdersDetailFragment.this;
                activity = activity1;
                super();
            }
        });
    }

    protected String getRequestUrl()
    {
        return String.format("food_ordering_location_detail.php?app_code=%s&tab_id=%s&location_id=%s", new Object[] {
            cacher().getAppCode(), tabId, locId
        });
    }

    protected List getViewsRef()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new WeakReference(dineInButton));
        arraylist.add(new WeakReference(takeoutButton));
        arraylist.add(new WeakReference(deliveryButton));
        arraylist.add(new WeakReference(reorderButton));
        return arraylist;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.fo_past_orders_detail, null);
        pastOrder = (PastOrderEntity)getIntent().getSerializableExtra("ITEM_EXTRA");
        if (FoodOrderingManager.getInstance().getRestaurantEntity() == null || pastOrder == null)
        {
            getHoldActivity().finish();
        } else
        {
            locId = pastOrder.getLocationId();
            initSettingsData();
            initViews();
            initOrdersListView();
            initListeners();
            loadBgUrl();
            loadData();
            getHoldActivity().addBackPressedListener(onBackPressedListener);
        }
        return root;
    }

    public void onDestroy()
    {
        CommonFragmentActivity commonfragmentactivity = getHoldActivity();
        if (commonfragmentactivity != null)
        {
            commonfragmentactivity.removeBackPressedListener(onBackPressedListener);
        }
        onDestroy();
    }

    protected void onError(final Activity activity)
    {
        ViewUtils.showDialog(activity, null, getString(com.biznessapps.layout.R.string.network_error), new Runnable() {

            final PastOrdersDetailFragment this$0;
            final Activity val$activity;

            public void run()
            {
                activity.finish();
            }

            
            {
                this$0 = PastOrdersDetailFragment.this;
                activity = activity1;
                super();
            }
        });
    }

    public void onResume()
    {
        onResume();
        if (!StringUtils.isNotEmptyValue(locId))
        {
            showLocationNotAvailableDialog(getHoldActivity());
        }
    }

    protected boolean tryParseData(String s, ParseStateEntity parsestateentity)
    {
        item = FoodOrderingParser.parseLocation(s);
        return true;
    }

    protected void updateControlsWithData(Activity activity)
    {
        updateControlsWithData(activity);
        if (item == null || item.getFoOpeningTime() == null)
        {
            showLocationNotAvailableDialog(activity);
            return;
        } else
        {
            defineActiveServiceButtons();
            return;
        }
    }

















/*
    static int access$502(PastOrdersDetailFragment pastordersdetailfragment, int i)
    {
        pastordersdetailfragment.mode = i;
        return i;
    }

*/



/*
    static long access$602(PastOrdersDetailFragment pastordersdetailfragment, long l)
    {
        pastordersdetailfragment.timeStamp = l;
        return l;
    }

*/



}
