// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHandlers;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.entities.AnalyticEntity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.reservation.entities.ReservationEntity;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import java.util.Date;
import java.util.Map;

// Referenced classes of package com.biznessapps.reservation:
//            ReservationDataKeeper, ReservationUtils

public class ReservationDetailFragment extends CommonFragment
{

    private Button addToCalendarButton;
    private TextView address2View;
    private TextView addressView;
    private Button cancelApptButton;
    private ReservationDataKeeper dataKeeper;
    private ReservationEntity item;
    private TextView paymentMethodView;
    private TextView prePaymentView;
    private TextView priceView;
    private TextView serviceNameView;
    private ImageView thumbnailView;
    private TextView timeView;

    public ReservationDetailFragment()
    {
    }

    private void addEvent()
    {
        Intent intent = new Intent("android.intent.action.EDIT");
        intent.setType("vnd.android.cursor.item/event");
        if (StringUtils.isNotEmpty(item.getServiceName()))
        {
            intent.putExtra("title", item.getServiceName());
        }
        intent.putExtra("eventLocation", LocationUtils.getFullAddress(item));
        if (item.getTimeFrom() != null)
        {
            intent.putExtra("beginTime", item.getTimeFrom().getTime());
        }
        if (item.getTimeTo() != null)
        {
            intent.putExtra("endTime", item.getTimeTo().getTime());
        }
        startActivity(intent);
    }

    private void cancelAppointment()
    {
        Object obj = new android.app.AlertDialog.Builder(getHoldActivity());
        ((android.app.AlertDialog.Builder) (obj)).setTitle(com.biznessapps.layout.R.string.cancel_reservation);
        ((android.app.AlertDialog.Builder) (obj)).setMessage(com.biznessapps.layout.R.string.cancel_reservation_question);
        obj = ((android.app.AlertDialog.Builder) (obj)).create();
        ((AlertDialog) (obj)).setButton(-1, getString(com.biznessapps.layout.R.string.yes), new android.content.DialogInterface.OnClickListener() {

            final ReservationDetailFragment this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface = getIntent().getStringExtra("TAB_SPECIAL_ID");
                String s = dataKeeper.getSessionToken();
                Map map = AppHttpUtils.getEmptyParams();
                map.put("app_code", cacher().getAppCode());
                map.put("tab_id", dialoginterface);
                map.put("action", "4");
                map.put("tk", s);
                map.put("id", item.getId());
                loadPostData(map);
            }

            
            {
                this$0 = ReservationDetailFragment.this;
                super();
            }
        });
        ((AlertDialog) (obj)).setButton(-2, getString(com.biznessapps.layout.R.string.no), new android.content.DialogInterface.OnClickListener() {

            final ReservationDetailFragment this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            
            {
                this$0 = ReservationDetailFragment.this;
                super();
            }
        });
        ((AlertDialog) (obj)).show();
    }

    private void initValues()
    {
        bgUrl = dataKeeper.getBackgroundUrl();
        ImageFetcher imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
        imagefetcher.loadBgImage(bgUrl, root, settings);
        imagefetcher.loadCircledBackground(item.getThumbnail(), thumbnailView);
        serviceNameView.setText(item.getServiceName());
        LocationUtils.setAddress(addressView, address2View, item);
        if (item.getTimeFrom() != null)
        {
            timeView.setText(DateUtils.getStandartDateFormat(item.getTimeFrom()));
        }
        priceView.setText(Html.fromHtml(String.format("%s%.2f", new Object[] {
            item.getCurrencySign(), Float.valueOf(item.getCost())
        })));
        prePaymentView.setText(Html.fromHtml(String.format("%s%.2f", new Object[] {
            item.getCurrencySign(), Float.valueOf(item.getPaidAmount())
        })));
        if (item.getCheckoutMethod() == 4)
        {
            paymentMethodView.setText(com.biznessapps.layout.R.string.cash);
            return;
        } else
        {
            paymentMethodView.setText(com.biznessapps.layout.R.string.paypal);
            return;
        }
    }

    private boolean showAddToCalendarButton()
    {
        boolean flag = true;
        boolean flag1;
        if (item.getTimeTo() != null)
        {
            long l = item.getTimeTo().getTime();
            if (System.currentTimeMillis() < l)
            {
                flag = true;
            } else
            {
                flag = false;
            }
        }
        if (item.getOrderState() == 2)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        return flag && !flag1;
    }

    protected String defineBgUrl(Intent intent)
    {
        return dataKeeper.getBackgroundUrl();
    }

    protected AnalyticEntity getAnalyticData()
    {
        AnalyticEntity analyticentity = super.getAnalyticData();
        item = (ReservationEntity)getIntent().getSerializableExtra("TAB_FRAGMENT_DATA");
        if (item != null)
        {
            analyticentity.setItemId(item.getId());
        }
        return analyticentity;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.reservation_detail_layout;
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
        thumbnailView = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.thumbnail_image);
        serviceNameView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.service_name_view);
        addressView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.address_view);
        address2View = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.address_2_view);
        timeView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.time_view);
        priceView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.price_view);
        prePaymentView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.pre_payment_view);
        paymentMethodView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.payment_method_view);
        TextView textview = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.time_label_view);
        TextView textview1 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.price_label_view);
        TextView textview2 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.pre_payment_label_view);
        TextView textview3 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.payment_method_label_view);
        serviceNameView.setTextColor(settings.getFeatureTextColor());
        addressView.setTextColor(settings.getOddRowTextColor());
        address2View.setTextColor(settings.getEvenRowTextColor());
        timeView.setTextColor(settings.getOddRowTextColor());
        textview.setTextColor(settings.getOddRowTextColor());
        priceView.setTextColor(settings.getEvenRowTextColor());
        textview1.setTextColor(settings.getEvenRowTextColor());
        prePaymentView.setTextColor(settings.getOddRowTextColor());
        textview2.setTextColor(settings.getOddRowTextColor());
        paymentMethodView.setTextColor(settings.getEvenRowTextColor());
        textview3.setTextColor(settings.getEvenRowTextColor());
        cancelApptButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.cancel_reservation_button);
        cancelApptButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ReservationDetailFragment this$0;

            public void onClick(View view)
            {
                cancelAppointment();
            }

            
            {
                this$0 = ReservationDetailFragment.this;
                super();
            }
        });
        addToCalendarButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.add_to_calendar_button);
        addToCalendarButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ReservationDetailFragment this$0;

            public void onClick(View view)
            {
                addEvent();
            }

            
            {
                this$0 = ReservationDetailFragment.this;
                super();
            }
        });
        Object obj = addToCalendarButton;
        ViewGroup viewgroup1;
        int i;
        if (showAddToCalendarButton())
        {
            i = 0;
        } else
        {
            i = 8;
        }
        ((Button) (obj)).setVisibility(i);
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), cancelApptButton.getBackground());
        cancelApptButton.setTextColor(settings.getButtonTextColor());
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), addToCalendarButton.getBackground());
        addToCalendarButton.setTextColor(settings.getButtonTextColor());
        obj = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.middle_container);
        CommonUtils.setColorWithoutMutation(settings.getOddRowColor(), ((ViewGroup) (obj)).getBackground());
        ((ViewGroup) (obj)).getBackground().setAlpha(120);
        obj = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.payment_method_container);
        viewgroup1 = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.pre_payment_container);
        viewgroup.findViewById(com.biznessapps.layout.R.id.reservation_detail_container).setBackgroundColor(settings.getEvenRowColorTransparent());
        viewgroup.findViewById(com.biznessapps.layout.R.id.reservation_button_container).setBackgroundColor(settings.getEvenRowColorTransparent());
        item = (ReservationEntity)getIntent().getSerializableExtra("TAB_FRAGMENT_DATA");
        if (item.getPaidAmount() == 0.0F)
        {
            ((ViewGroup) (obj)).setVisibility(8);
            viewgroup1.setVisibility(8);
        }
        initValues();
        ViewUtils.setRootBgColor(viewgroup, settings);
        textview.setText(com.biznessapps.layout.R.string.time_label);
        textview1.setText(com.biznessapps.layout.R.string.price);
        textview2.setText(com.biznessapps.layout.R.string.pre_payment_label);
        textview3.setText(com.biznessapps.layout.R.string.payment_method);
        addToCalendarButton.setText(com.biznessapps.layout.R.string.add_to_calendar);
        cancelApptButton.setText(com.biznessapps.layout.R.string.cancel);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        dataKeeper = cacher().getReservSystemCacher(tabId);
        initViews(root);
        return root;
    }

    protected boolean tryParseData(String s)
    {
        hasResultError = JsonParser.hasDataError(s);
        String s1 = dataKeeper.getSessionToken();
        if (JsonParser.hasInvalidTokenError(s) && StringUtils.isNotEmpty(s1))
        {
            ReservationUtils.showInvalidTokenDialog(getHoldActivity(), AppHandlers.getUiHandler());
        }
        return true;
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        if (hasResultError)
        {
            ViewUtils.showShortToast(activity, com.biznessapps.layout.R.string.reservation_cancel_appt_message);
            return;
        } else
        {
            activity.finish();
            return;
        }
    }





}
