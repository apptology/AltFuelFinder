// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
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
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.DataSource;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.entities.NetworkResultEntity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.reservation.entities.ReservationServiceItem;
import com.biznessapps.reservation.entities.ReservationTimeItem;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.calendar.CalendarView;
import com.biznessapps.widgets.calendar.DatePickerBar;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

// Referenced classes of package com.biznessapps.reservation:
//            ReservationDataKeeper, ReservationLocationAdapter, ReservationServiceAdapter, ReservationTimeAdapter

public class ReservationBookFragment extends CommonFragment
{

    private static final String days[] = {
        "sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday"
    };
    private Date apptDate;
    private ReservationTimeItem apptTime;
    private ViewGroup buttonsContainer;
    private CalendarView calendarView;
    private TextView confirmButton;
    private ViewGroup confirmContainer;
    private ReservationDataKeeper dataKeeper;
    private DatePickerBar datePicker;
    private ListView listView;
    private LocationEntity location;
    private TextView locationButton;
    private List locationList;
    private NetworkResultEntity networkResult;
    private String paymentTransactionID;
    private String paypalClientId;
    private Date selectedDate;
    private ReservationServiceItem service;
    private TextView serviceButton;
    private TextView timeButton;
    private ViewGroup timeContainer;

    public ReservationBookFragment()
    {
    }

    private Date correctDateWithLocationTimezone(Date date)
    {
        Calendar calendar = Calendar.getInstance();
        float f = location.getTimezoneValue();
        int i = calendar.getTimeZone().getRawOffset();
        calendar.setTimeInMillis((date.getTime() + (long)(int)(3600000F * f)) - (long)i);
        date = Calendar.getInstance();
        date.set(calendar.get(1), calendar.get(2), calendar.get(5), 0, 0, 0);
        return date.getTime();
    }

    private static android.view.View.OnClickListener getOnClickListener(ImageView imageview, ViewGroup viewgroup, UiSettings uisettings)
    {
        return new android.view.View.OnClickListener((ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.data_container), imageview) {

            final ImageView val$arrowNavigation;
            final ViewGroup val$dataContainer;

            public void onClick(View view)
            {
                boolean flag;
                if (dataContainer.getVisibility() == 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (flag)
                {
                    dataContainer.setVisibility(8);
                    arrowNavigation.setImageResource(com.biznessapps.layout.R.drawable.arrow_down);
                    return;
                } else
                {
                    dataContainer.setVisibility(0);
                    arrowNavigation.setImageResource(com.biznessapps.layout.R.drawable.arrow_up);
                    return;
                }
            }

            
            {
                dataContainer = viewgroup;
                arrowNavigation = imageview;
                super();
            }
        };
    }

    private String getTimeFromDate(Date date, int i)
    {
        return DateUtils.getStandartDateFormat(new Date(date.getTime() + (long)i * 60000L));
    }

    private void initConfirmContainerControls(ViewGroup viewgroup)
    {
        ImageView imageview = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.thumbnail_image);
        TextView textview = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.service_name_view);
        TextView textview1 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.address_view);
        TextView textview2 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.address_2_view);
        TextView textview3 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.time_view);
        TextView textview4 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.price_view);
        TextView textview5 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.pre_payment_view);
        TextView textview6 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.time_label_view);
        TextView textview7 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.price_label_view);
        TextView textview8 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.pre_payment_label_view);
        textview.setTextColor(settings.getFeatureTextColor());
        textview1.setTextColor(settings.getOddRowTextColor());
        textview2.setTextColor(settings.getEvenRowTextColor());
        textview3.setTextColor(settings.getOddRowTextColor());
        textview6.setTextColor(settings.getOddRowTextColor());
        textview4.setTextColor(settings.getEvenRowTextColor());
        textview7.setTextColor(settings.getEvenRowTextColor());
        textview5.setTextColor(settings.getOddRowTextColor());
        textview8.setTextColor(settings.getOddRowTextColor());
        Object obj = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.middle_container);
        CommonUtils.setColorWithoutMutation(settings.getOddRowColor(), ((ViewGroup) (obj)).getBackground());
        ((ViewGroup) (obj)).getBackground().setAlpha(120);
        ((ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.price_container)).setBackgroundColor(settings.getEvenRowColor());
        obj = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.confirm_button);
        ((Button) (obj)).setOnClickListener(new android.view.View.OnClickListener() {

            final ReservationBookFragment this$0;

            public void onClick(View view)
            {
                showPaymentsDialog();
            }

            
            {
                this$0 = ReservationBookFragment.this;
                super();
            }
        });
        viewgroup = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.share_button);
        viewgroup.setOnClickListener(new android.view.View.OnClickListener() {

            final ReservationBookFragment this$0;

            public void onClick(View view)
            {
                ShareComponent.showSharingOptionDialog(getHoldActivity());
            }

            
            {
                this$0 = ReservationBookFragment.this;
                super();
            }
        });
        ((Button) (obj)).setTextColor(settings.getButtonTextColor());
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), ((Button) (obj)).getBackground());
        viewgroup.setTextColor(settings.getButtonTextColor());
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), viewgroup.getBackground());
        AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadCircledBackground(service.getThumbnail(), imageview);
        textview.setText(Html.fromHtml(service.getName()));
        LocationUtils.setAddress(textview1, textview2, location);
        if (apptDate != null)
        {
            textview3.setText(getTimeFromDate(apptDate, apptTime.getFrom()));
        }
        textview4.setText(Html.fromHtml(String.format("%s%.2f", new Object[] {
            service.getCurrencySign(), Float.valueOf(service.getPrice())
        })));
        textview5.setText(Html.fromHtml(String.format("%s%.2f", new Object[] {
            service.getCurrencySign(), Float.valueOf(service.getReserveFee())
        })));
        textview6.setText(com.biznessapps.layout.R.string.time_label);
        textview7.setText(com.biznessapps.layout.R.string.price);
        textview8.setText(com.biznessapps.layout.R.string.pre_payment_label);
        viewgroup.setText(com.biznessapps.layout.R.string.share);
        ((Button) (obj)).setText(com.biznessapps.layout.R.string.confirm);
    }

    private void initData()
    {
        tabId = getIntent().getStringExtra("TAB_SPECIAL_ID");
        paymentTransactionID = "";
        locationList = dataKeeper.getLocations();
        if (locationList != null && !locationList.isEmpty())
        {
            if (locationList.size() <= 1)
            {
                location = (LocationEntity)locationList.get(0);
            }
            return;
        } else
        {
            locationList = new ArrayList();
            location = new LocationEntity();
            return;
        }
    }

    private void initListeners()
    {
        locationButton.setOnClickListener(new android.view.View.OnClickListener() );
        serviceButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ReservationBookFragment this$0;

            public void onClick(View view)
            {
                updateButtonsState(serviceButton);
                selectedDate = null;
                timeButton.setEnabled(false);
                (new AsyncTask() {

                    final _cls3 this$1;

                    protected volatile Object doInBackground(Object aobj[])
                    {
                        return doInBackground((String[])aobj);
                    }

                    protected transient List doInBackground(String as[])
                    {
                        as = String.format("reserv_items.php?app_code=%s&tab_id=%s", new Object[] {
                            cacher().getAppCode(), 
// JavaClassFileOutputException: get_constant: invalid tag

                    protected volatile void onPostExecute(Object obj)
                    {
                        onPostExecute((List)obj);
                    }

                    protected void onPostExecute(List list)
                    {
                        onPostExecute(list);
                        com.biznessapps.common.activities.CommonFragmentActivity commonfragmentactivity = getHoldActivity();
                        if (commonfragmentactivity != null)
                        {
                            LinkedList linkedlist = new LinkedList();
                            for (list = list.iterator(); list.hasNext(); linkedlist.add(ViewUtils.getWrappedItem((ReservationServiceItem)list.next(), linkedlist, 
// JavaClassFileOutputException: get_constant: invalid tag

                    protected void onPreExecute()
                    {
                        listView.setAdapter(null);
                    }

            
            {
                this$1 = _cls3.this;
                super();
            }
                }).execute(new String[0]);
            }

            
            {
                this$0 = ReservationBookFragment.this;
                super();
            }
        });
        timeButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ReservationBookFragment this$0;

            public void onClick(View view)
            {
                updateButtonsState(timeButton);
                view = (ViewGroup)
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = ReservationBookFragment.this;
                super();
            }
        });
    }

    private boolean isAvailableDate(Date date)
    {
        boolean flag = false;
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        date = days[calendar.get(7) - 1];
        if (!service.getRestWeeks().contains(date.toLowerCase()))
        {
            flag = true;
        }
        return flag;
    }

    private void launchPaypal(String s)
    {
        if (service.getReserveFee() > 0.0F)
        {
            Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("PaymentIntegrateViewController"));
            intent.putExtra("TAB_SPECIAL_ID", tabId);
            intent.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.pre_payment_label));
            intent.putExtra("TAB_FRAGMENT", "PaymentIntegrateViewController");
            intent.putExtra("CURRENCY_EXTRA", service.getCurrency());
            intent.putExtra("CLIENT_ID_EXTRA", s);
            intent.putExtra("serviceName", service.getName());
            intent.putExtra("subTotal", service.getReserveFee());
            intent.putExtra("service", service);
            startActivityForResult(intent, 0);
        }
    }

    private Date nextAvailableDate(Date date)
    {
        Date date1;
        Calendar calendar;
        date1 = DateUtils.getTomorrowDate(date);
        calendar = Calendar.getInstance();
_L6:
        Object obj;
        calendar.setTime(date1);
        obj = days[calendar.get(7) - 1];
        if (service.getRestWeeks().size() != days.length) goto _L2; else goto _L1
_L1:
        obj = null;
_L4:
        return ((Date) (obj));
_L2:
        if (service.getRestWeeks().contains(((String) (obj)).toLowerCase()))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = date1;
        if (DateUtils.isBiggerOrEqual(date1, date)) goto _L4; else goto _L3
_L3:
        date1 = DateUtils.getTomorrowDate(date1);
        if (true) goto _L6; else goto _L5
_L5:
    }

    private Date prevAvailableDate(Date date)
    {
        Date date1;
        Date date2;
        Calendar calendar;
        date1 = DateUtils.getYesterdayDate(date);
        date2 = correctDateWithLocationTimezone(DateUtils.getTomorrowDate(new Date()));
        calendar = Calendar.getInstance();
_L7:
        Object obj;
        calendar.setTime(date1);
        obj = days[calendar.get(7) - 1];
        if (service.getRestWeeks().contains(((String) (obj)).toLowerCase())) goto _L2; else goto _L1
_L1:
        if (!DateUtils.isBiggerThan(date2, date1)) goto _L4; else goto _L3
_L3:
        obj = null;
_L5:
        return ((Date) (obj));
_L4:
        obj = date1;
        if (DateUtils.isBiggerThan(date, date1)) goto _L5; else goto _L2
_L2:
        date1 = DateUtils.getYesterdayDate(date1);
        if (true) goto _L7; else goto _L6
_L6:
    }

    private void processConfirmAppt(int i)
    {
        String s = (new SimpleDateFormat("yyyy-MM-dd")).format(apptDate);
        String s1 = String.format("%d", new Object[] {
            Integer.valueOf(apptTime.getFrom())
        });
        String s2 = String.format("%d", new Object[] {
            Integer.valueOf(apptTime.getTo())
        });
        String s3 = service.getId();
        String s4 = String.format("%f", new Object[] {
            Float.valueOf(service.getReserveFee())
        });
        String s5 = service.getName();
        String s6 = service.getNote();
        String s7 = location.getId();
        Map map = AppHttpUtils.getEmptyParams();
        String s8 = dataKeeper.getSessionToken();
        map.put("app_code", cacher().getAppCode());
        map.put("tab_id", tabId);
        map.put("action", "1");
        map.put("tk", s8);
        map.put("created_time", (new StringBuilder()).append("").append((int)(System.currentTimeMillis() / 1000L)).toString());
        map.put("d", s);
        map.put("tf", s1);
        map.put("tt", s2);
        map.put("i", s3);
        map.put("timezone", DateUtils.getTimezoneValue());
        map.put("pa", s4);
        map.put("sn", s5);
        map.put("n", s6);
        map.put("ti", paymentTransactionID);
        map.put("cm", (new StringBuilder()).append("").append(i).toString());
        map.put("loc_id", s7);
        loadPostData(map);
    }

    private void showPaymentsDialog()
    {
        boolean flag1 = false;
        boolean flag = false;
        Iterator iterator = dataKeeper.getPaymentMethods().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ReservationDataKeeper.PaymentMethod paymentmethod = (ReservationDataKeeper.PaymentMethod)iterator.next();
            boolean flag2 = flag1;
            if (paymentmethod.getGatewayType() == 1)
            {
                paypalClientId = paymentmethod.getGatewayAppId();
                flag2 = true;
            }
            flag1 = flag2;
            if (paymentmethod.getGatewayType() == 4)
            {
                flag = true;
                flag1 = flag2;
            }
        } while (true);
        if (service.getReserveFee() == 0.0F)
        {
            processConfirmAppt(4);
            return;
        }
        if (flag && flag1)
        {
            Object obj = getApplicationContext();
            final AlertDialog dialog = new Builder(getHoldActivity());
            View view = ViewUtils.loadLayout(((android.content.Context) (obj)), com.biznessapps.layout.R.layout.payment_options_layout);
            obj = (Button)view.findViewById(com.biznessapps.layout.R.id.paypal_button);
            Button button = (Button)view.findViewById(com.biznessapps.layout.R.id.cash_button);
            dialog.setView(view);
            dialog.setTitle(com.biznessapps.layout.R.string.payment_method);
            dialog.setNegativeButton(com.biznessapps.layout.R.string.cancel, new android.content.DialogInterface.OnClickListener() {

                final ReservationBookFragment this$0;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if (dialoginterface != null)
                    {
                        dialoginterface.dismiss();
                    }
                }

            
            {
                this$0 = ReservationBookFragment.this;
                super();
            }
            });
            ((Button) (obj)).setText(getString(com.biznessapps.layout.R.string.paypal));
            button.setText(getString(com.biznessapps.layout.R.string.cash));
            dialog = dialog.create();
            ((Button) (obj)).setOnClickListener(new android.view.View.OnClickListener() {

                final ReservationBookFragment this$0;
                final AlertDialog val$dialog;

                public void onClick(View view1)
                {
                    launchPaypal(paypalClientId);
                    if (dialog != null)
                    {
                        dialog.dismiss();
                    }
                }

            
            {
                this$0 = ReservationBookFragment.this;
                dialog = alertdialog;
                super();
            }
            });
            button.setOnClickListener(new android.view.View.OnClickListener() {

                final ReservationBookFragment this$0;
                final AlertDialog val$dialog;

                public void onClick(View view1)
                {
                    processConfirmAppt(4);
                    if (dialog != null)
                    {
                        dialog.dismiss();
                    }
                }

            
            {
                this$0 = ReservationBookFragment.this;
                dialog = alertdialog;
                super();
            }
            });
            dialog.show();
            return;
        }
        if (flag)
        {
            processConfirmAppt(4);
            return;
        }
        if (flag1)
        {
            launchPaypal(paypalClientId);
            return;
        } else
        {
            ViewUtils.showDialog(getHoldActivity(), com.biznessapps.layout.R.string.payment_disabled);
            return;
        }
    }

    private void updateButtonsState(TextView textview)
    {
        confirmButton.setTextColor(settings.getButtonBgColor());
        locationButton.setTextColor(settings.getButtonBgColor());
        serviceButton.setTextColor(settings.getButtonBgColor());
        timeButton.setTextColor(settings.getButtonBgColor());
        listView.setVisibility(8);
        timeContainer.setVisibility(8);
        confirmContainer.setVisibility(8);
        textview.setTextColor(settings.getNavigationBarColor());
        if (textview.equals(locationButton))
        {
            buttonsContainer.setBackgroundResource(com.biznessapps.layout.R.drawable.book_step1);
            listView.setVisibility(0);
        } else
        if (textview.equals(serviceButton))
        {
            buttonsContainer.setBackgroundResource(com.biznessapps.layout.R.drawable.book_step2);
            listView.setVisibility(0);
        } else
        if (textview.equals(timeButton))
        {
            buttonsContainer.setBackgroundResource(com.biznessapps.layout.R.drawable.book_step3);
            timeContainer.setVisibility(0);
        } else
        {
            buttonsContainer.setBackgroundResource(com.biznessapps.layout.R.drawable.book_step4);
            confirmContainer.setVisibility(0);
            initConfirmContainerControls(confirmContainer);
        }
        CommonUtils.setColorWithoutMutation(settings.getButtonBgColor(), buttonsContainer.getBackground());
    }

    private void updateDatePickerState(DatePickerBar datepickerbar)
    {
        if (selectedDate != null)
        {
            datepickerbar.setPickerDate(selectedDate);
        }
    }

    private void updateSelectedDate(Date date)
    {
        if (service.getRestWeeks().size() == days.length)
        {
            selectedDate = null;
            return;
        }
        if (isAvailableDate(date))
        {
            selectedDate = date;
            return;
        }
        if (DateUtils.isBiggerOrEqual(date, selectedDate))
        {
            selectedDate = nextAvailableDate(date);
            return;
        }
        Date date1 = prevAvailableDate(date);
        if (date1 != null)
        {
            selectedDate = date1;
            return;
        } else
        {
            selectedDate = DateUtils.getTomorrowDate(date);
            return;
        }
    }

    protected String defineBgUrl(Intent intent)
    {
        return dataKeeper.getBackgroundUrl();
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.reservation_book_layout;
    }

    protected String getRequestUrl()
    {
        return "reserv_order.php";
    }

    protected View getViewForBg()
    {
        return root;
    }

    protected void initViews(ViewGroup viewgroup)
    {
        locationButton = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.location_button);
        serviceButton = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.service_button);
        timeButton = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.time_button);
        confirmButton = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.confirm_button);
        buttonsContainer = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.buttons_container);
        buttonsContainer.setBackgroundColor(settings.getNavigationBarColor());
        ((ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.buttons_top_container)).setBackgroundColor(settings.getNavigationBarColor());
        ViewUtils.setRootBgColor(viewgroup, settings);
        timeContainer = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.time_root);
        confirmContainer = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.confirm_root);
        ViewGroup viewgroup1 = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.top_container);
        ((ViewGroup)confirmContainer.findViewById(com.biznessapps.layout.R.id.buttons_bottom_container)).setBackgroundColor(settings.getSectionBarColor());
        viewgroup1.setBackgroundColor(settings.getSectionBarColor());
        listView = (ListView)viewgroup.findViewById(com.biznessapps.layout.R.id.list_view);
        listView.setItemsCanFocus(false);
        calendarView = (CalendarView)timeContainer.findViewById(com.biznessapps.layout.R.id.calendar);
        calendarView.setOnCellTouchListener(new com.biznessapps.widgets.calendar.CalendarView.OnCellTouchListener() {

            final ReservationBookFragment this$0;

            public void onTouch(View view)
            {
                updateSelectedDate(calendarView.getDate());
                updateDatePickerState(datePicker);
                timeButton.performClick();
            }

            
            {
                this$0 = ReservationBookFragment.this;
                super();
            }
        });
        calendarView.updateStrings();
        locationButton.setText(com.biznessapps.layout.R.string.location_title);
        serviceButton.setText(com.biznessapps.layout.R.string.service);
        timeButton.setText(com.biznessapps.layout.R.string.time);
        confirmButton.setText(com.biznessapps.layout.R.string.confirm);
        datePicker = (DatePickerBar)timeContainer.findViewById(com.biznessapps.layout.R.id.datepickerbar);
        datePicker.setColor(settings.getButtonTextColor());
        initListeners();
        locationButton.performClick();
        bgUrl = dataKeeper.getBackgroundUrl();
        AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadBgImage(bgUrl, viewgroup, settings);
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (j == 10)
        {
            paymentTransactionID = (String)cacher().getData("paymentTransactionID");
            processConfirmAppt(1);
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        dataKeeper = cacher().getReservSystemCacher(tabId);
        initViews(root);
        initData();
        return root;
    }

    protected boolean tryParseData(String s)
    {
        networkResult = JsonParser.getNetworkResult(s);
        return true;
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        if (activity == null) goto _L2; else goto _L1
_L1:
        if (!networkResult.isOk()) goto _L4; else goto _L3
_L3:
        Intent intent = new Intent();
        ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.booking_successful));
        activity.setResult(15, intent);
        activity.finish();
_L2:
        return;
_L4:
        String s;
        String s1;
        int i;
        i = networkResult.getErrorCode();
        s = null;
        s1 = activity.getString(com.biznessapps.layout.R.string.failure);
        if (i != 8)
        {
            break; /* Loop/switch isn't completed */
        }
        s = activity.getString(com.biznessapps.layout.R.string.blocked_day);
_L6:
        if (s != null)
        {
            ViewUtils.showDialog(activity, s1, s, new Runnable() {

                final ReservationBookFragment this$0;

                public void run()
                {
                    timeButton.performClick();
                }

            
            {
                this$0 = ReservationBookFragment.this;
                super();
            }
            });
            return;
        }
        if (true) goto _L2; else goto _L5
_L5:
        if (i == 5)
        {
            s = activity.getString(com.biznessapps.layout.R.string.reservation_max_service_limit);
        } else
        if (i == 6)
        {
            s = activity.getString(com.biznessapps.layout.R.string.reservation_time_slot_filled);
        }
          goto _L6
        if (true) goto _L2; else goto _L7
_L7:
    }






/*
    static LocationEntity access$1102(ReservationBookFragment reservationbookfragment, LocationEntity locationentity)
    {
        reservationbookfragment.location = locationentity;
        return locationentity;
    }

*/




/*
    static Date access$1302(ReservationBookFragment reservationbookfragment, Date date)
    {
        reservationbookfragment.selectedDate = date;
        return date;
    }

*/






/*
    static ReservationServiceItem access$1702(ReservationBookFragment reservationbookfragment, ReservationServiceItem reservationserviceitem)
    {
        reservationbookfragment.service = reservationserviceitem;
        return reservationserviceitem;
    }

*/














/*
    static Date access$2902(ReservationBookFragment reservationbookfragment, Date date)
    {
        reservationbookfragment.apptDate = date;
        return date;
    }

*/



/*
    static ReservationTimeItem access$3002(ReservationBookFragment reservationbookfragment, ReservationTimeItem reservationtimeitem)
    {
        reservationbookfragment.apptTime = reservationtimeitem;
        return reservationtimeitem;
    }

*/












    // Unreferenced inner class com/biznessapps/reservation/ReservationBookFragment$2$1

/* anonymous class */
    class _cls1
        implements android.widget.AdapterView.OnItemClickListener
    {

        final _cls2 this$1;

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            location = (LocationEntity)adapterview.getAdapter().getItem(i);
            serviceButton.setEnabled(true);
            serviceButton.performClick();
        }

            
            {
                this$1 = _cls2.this;
                super();
            }
    }


    // Unreferenced inner class com/biznessapps/reservation/ReservationBookFragment$3$1$1

/* anonymous class */
    class _cls1
        implements ReservationServiceAdapter.OnServiceClickListener
    {

        final _cls1 this$2;
        final Activity val$activity;

        public void onBooked(ReservationServiceItem reservationserviceitem)
        {
            service = reservationserviceitem;
            timeButton.setEnabled(true);
            timeButton.performClick();
        }

        public void onShared(ReservationServiceItem reservationserviceitem)
        {
            ShareComponent.showSharingOptionDialog(activity);
        }

            
            {
                this$2 = final__pcls1;
                activity = Activity.this;
                super();
            }
    }


    // Unreferenced inner class com/biznessapps/reservation/ReservationBookFragment$4$1

/* anonymous class */
    class _cls1 extends AsyncTask
    {

        final _cls4 this$1;

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected transient List doInBackground(String as[])
        {
            Object obj = new SimpleDateFormat("yyyy-MM-dd");
            as = Calendar.getInstance();
            as.setTime(selectedDate);
            as = ReservationBookFragment.days[as.get(7) - 1];
            obj = ((SimpleDateFormat) (obj)).format(selectedDate);
            String s = dataKeeper.getUserEmail();
            as = String.format("reserv_item_time.php?app_code=%s&tab_id=%s&id=%s&day=%s&date=%s&user_id=%s", new Object[] {
                cacher().getAppCode(), 
// JavaClassFileOutputException: get_constant: invalid tag

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((List)obj);
        }

        protected void onPostExecute(List list)
        {
            onPostExecute(list);
            Object obj = getHoldActivity();
            if (obj != null)
            {
                Object obj1 = new LinkedList();
                for (Iterator iterator = list.iterator(); iterator.hasNext(); ((List) (obj1)).add(ViewUtils.getWrappedItem((ReservationTimeItem)iterator.next(), ((List) (obj1)), _fld0.onPostExecute))) { }
                obj = new ReservationTimeAdapter(((Activity) (obj)).getApplicationContext(), ((List) (obj1)), _fld0.onPostExecute);
                obj1 = (ListView)timeContainer.findViewById(com.biznessapps.layout.R.id.list_view);
                ((ListView) (obj1)).setAdapter(((android.widget.ListAdapter) (obj)));
                ((ListView) (obj1)).setOnItemClickListener(list. new android.widget.AdapterView.OnItemClickListener() {

                    final _cls1 this$2;
                    final List val$items;

                    public void onItemClick(AdapterView adapterview, View view, int i, long l)
                    {
                        adapterview = (ReservationTimeItem)items.get(i);
                        apptDate = selectedDate;
                        apptTime = adapterview;
                        confirmButton.setEnabled(true);
                        updateButtonsState(confirmButton);
                    }

            
            {
                this$2 = final__pcls1;
                items = List.this;
                super();
            }
                });
            }
        }

        protected void onPreExecute()
        {
            ((ListView)timeContainer.findViewById(com.biznessapps.layout.R.id.list_view)).setAdapter(null);
        }

            
            {
                this$1 = _cls4.this;
                super();
            }
    }

}
