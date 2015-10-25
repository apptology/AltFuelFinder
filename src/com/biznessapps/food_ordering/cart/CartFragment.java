// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.cart;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.common.style.BZButtonStyle;
import com.biznessapps.common.style.BZImageViewStyle;
import com.biznessapps.food_ordering.CheckAvailabilityTask;
import com.biznessapps.food_ordering.FOMainActivity;
import com.biznessapps.food_ordering.FOUtils;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.account.AccountEntity;
import com.biznessapps.food_ordering.account.address.MyAddressesListFragment;
import com.biznessapps.food_ordering.entities.CartEntity;
import com.biznessapps.food_ordering.entities.CommonInfo;
import com.biznessapps.food_ordering.entities.RestaurantEntity;
import com.biznessapps.food_ordering.entities.TaxEntity;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.storage.StorageKeeper;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.ExpandableListView;
import com.biznessapps.widgets.RefreshableListView;
import com.braintreepayments.api.dropin.BraintreePaymentActivity;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.biznessapps.food_ordering.cart:
//            CartItemsAdapter, TaxAdapter

public class CartFragment extends CommonFragment
{

    private static final int CARD_TYPE = 2;
    private static final int CASH_TYPE = 1;
    private static final int FIRST_TIP_OPTION = 10;
    private static final String PLUS_TEXT = " + ";
    private static final int SECOND_TIP_OPTION = 15;
    private static final int THIRD_TIP_OPTION = 20;
    private Button activeTipButton;
    private EditText address2View;
    private TextView addressView;
    private Button cardButton;
    private CartEntity cart;
    private Button cashButton;
    private Button checkoutButton;
    private LocationEntity chosenLocation;
    private EditText emailView;
    private EditText firstNameView;
    private Button firstTipButton;
    private EditText lastNameView;
    private ExpandableListView listView;
    private int paymentType;
    private EditText phoneView;
    private Button secondTipButton;
    private AccountEntity selectedAccount;
    private Button thirdTipButton;
    private TextView tipValueView;
    private TextView totalChargesValueView;
    private boolean useNewLocationData;
    private int usedMode;
    private EditText zipView;

    public CartFragment()
    {
        paymentType = 1;
    }

    private void checkAvailability()
    {
        com.biznessapps.food_ordering.CheckAvailabilityTask.CustomRunnable customrunnable = new com.biznessapps.food_ordering.CheckAvailabilityTask.CustomRunnable() {

            final CartFragment this$0;

            public void run()
            {
                loadData();
            }

            
            {
                this$0 = CartFragment.this;
                super();
            }
        };
        long l = cart.getTimeStamp();
        String s = FoodOrderingManager.getInstance().getChosenLocation().getId();
        List list = cart.getItems();
        (new CheckAvailabilityTask(getHoldActivity(), getViewsRef(), s, l, list, customrunnable, null, tabId, cacher().getAppCode())).execute(new Void[0]);
    }

    private boolean checkDeliveryRadius()
    {
        boolean flag1 = true;
        float f = FoodOrderingManager.getInstance().getRestaurantEntity().getDeliveryRadius();
        boolean flag = flag1;
        if (f > 0.0F)
        {
            LocationEntity locationentity = FoodOrderingManager.getInstance().getChosenLocation();
            if (selectedAccount != null)
            {
                String s;
                String s1;
                if (useNewLocationData)
                {
                    s = chosenLocation.getLatitude();
                } else
                {
                    s = selectedAccount.getLatitude();
                }
                if (useNewLocationData)
                {
                    s1 = chosenLocation.getLongitude();
                } else
                {
                    s1 = selectedAccount.getLongitude();
                }
                flag = flag1;
                if (LocationUtils.getDistanceToPlace(s, s1, locationentity.getLatitude(), locationentity.getLongitude()) / 1000F > f)
                {
                    flag = false;
                    ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.fo_delivery_address_alert));
                }
            } else
            {
                flag = flag1;
                if (LocationUtils.getDistanceToPlace(chosenLocation.getLatitude(), chosenLocation.getLongitude(), locationentity.getLatitude(), locationentity.getLongitude()) / 1000F > f)
                {
                    ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.fo_delivery_address_alert));
                    return false;
                }
            }
        }
        return flag;
    }

    private void checkout()
    {
        String s;
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        s = firstNameView.getText().toString();
        s2 = lastNameView.getText().toString();
        s3 = phoneView.getText().toString();
        s4 = zipView.getText().toString();
        s5 = addressView.getText().toString();
        s6 = emailView.getText().toString();
        if (usedMode != 3 && usedMode != 2) goto _L2; else goto _L1
_L1:
        boolean flag;
        boolean flag1;
        if (root.findViewById(com.biznessapps.layout.R.id.email_container).getTag() != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            flag1 = StringUtils.checkTextFieldsOnEmpty(new String[] {
                s, s2, s3, s6
            });
        } else
        {
            flag1 = StringUtils.checkTextFieldsOnEmpty(new String[] {
                s, s2, s3
            });
        }
        if (flag1) goto _L4; else goto _L3
_L3:
        if (!StringUtils.isCorrectEmail(s6) && flag) goto _L6; else goto _L5
_L5:
        checkAvailability();
_L8:
        return;
_L6:
        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.email_is_not_correct));
        return;
_L4:
        ViewUtils.showDialog(getHoldActivity(), com.biznessapps.layout.R.string.fill_required_fields_message);
        return;
_L2:
        if (!StringUtils.checkTextFieldsOnEmpty(new String[] {
    s, s2, s4, s3, s5, s6
}))
        {
            if (StringUtils.isCorrectEmail(s6))
            {
                if (cart.isMeetDeliveryMinumum())
                {
                    if (checkDeliveryRadius())
                    {
                        checkAvailability();
                        return;
                    }
                } else
                {
                    String s1 = String.format("%s %s", new Object[] {
                        getString(com.biznessapps.layout.R.string.fo_delivery_minimum_alert), cart.getFormattedValue(cart.getDeliveryMin())
                    });
                    ViewUtils.showWarningDialog(getHoldActivity(), s1);
                    return;
                }
            } else
            {
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.email_is_not_correct));
                return;
            }
        } else
        {
            ViewUtils.showDialog(getHoldActivity(), com.biznessapps.layout.R.string.fill_required_fields_message);
            return;
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    private String getConfirmationDate(Context context)
    {
        Object obj = Calendar.getInstance();
        int i = ((Calendar) (obj)).get(7);
        Date date = new Date(cart.getTimeStamp() * 1000L);
        ((Calendar) (obj)).setTime(date);
        if (i == ((Calendar) (obj)).get(7))
        {
            obj = context.getString(com.biznessapps.layout.R.string.fo_today);
        } else
        {
            obj = (new SimpleDateFormat("EEEE", Locale.getDefault())).format(date);
        }
        return String.format("%s %s", new Object[] {
            FOUtils.getDeviceDateFormat(context, date), obj
        });
    }

    private int getTip()
    {
        boolean flag = false;
        int i = ((flag) ? 1 : 0);
        if (activeTipButton != null)
        {
            i = ((flag) ? 1 : 0);
            if (activeTipButton.isSelected())
            {
                i = ((Integer)activeTipButton.getTag(com.biznessapps.layout.R.id.INT_VALUE_TAG)).intValue();
            }
        }
        return i;
    }

    private void initAcccountData(AccountEntity accountentity)
    {
        if (StringUtils.isNotEmpty(accountentity.getPhone()))
        {
            phoneView.setText(accountentity.getPhone());
        }
        if (StringUtils.isNotEmpty(accountentity.getFirstName()))
        {
            firstNameView.setText(accountentity.getFirstName());
        }
        if (StringUtils.isNotEmpty(accountentity.getLastName()))
        {
            lastNameView.setText(accountentity.getLastName());
        }
        if (StringUtils.isNotEmpty(accountentity.getEmail()))
        {
            emailView.setText(accountentity.getEmail());
        }
        if (StringUtils.isNotEmpty(accountentity.getAddress1()))
        {
            addressView.setText(accountentity.getAddress1());
        }
        if (StringUtils.isNotEmpty(accountentity.getAddress2()))
        {
            address2View.setText(accountentity.getAddress2());
        }
        if (StringUtils.isNotEmpty(accountentity.getZipcode()))
        {
            zipView.setText(accountentity.getZipcode());
        }
    }

    private void initCartListView()
    {
        listView = (ExpandableListView)root.findViewById(com.biznessapps.layout.R.id.list_view);
        FOUtils.addLineSeparator(listView, getApplicationContext(), 0xffcccccc);
        Object obj = FoodOrderingManager.getInstance().getCart().getItems();
        if (((List) (obj)).isEmpty())
        {
            ViewUtils.showDialog(getHoldActivity(), null, getString(com.biznessapps.layout.R.string.fo_cart_is_empty), new Runnable() {

                final CartFragment this$0;

                public void run()
                {
                    FoodOrderingManager.getInstance().getCart().clear();
                    getHoldActivity().finish();
                }

            
            {
                this$0 = CartFragment.this;
                super();
            }
            }, false, getString(com.biznessapps.layout.R.string.ok), getString(com.biznessapps.layout.R.string.cancel));
        }
        obj = new CartItemsAdapter(getApplicationContext(), ((List) (obj)), settings);
        ((CartItemsAdapter) (obj)).setListener(new CartItemsAdapter.CartClickListener() {

            final CartFragment this$0;

            public void onChangedNumber(com.biznessapps.food_ordering.entities.CategoryEntity.Item item, int i)
            {
                if (i > 0)
                {
                    updateCharges();
                    return;
                } else
                {
                    showRemoveItemDialog(item);
                    return;
                }
            }

            
            {
                this$0 = CartFragment.this;
                super();
            }
        });
        listView.setItemsCanFocus(false);
        listView.setExpandOn(true);
        listView.setAdapter(((android.widget.ListAdapter) (obj)));
    }

    private void initDeliveryTypeSection()
    {
        TextView textview = (TextView)root.findViewById(com.biznessapps.layout.R.id.delivery_text_view);
        textview.setTextColor(settings.getFeatureTextColor());
        CommonUtils.overrideImageColor(getResources().getColor(com.biznessapps.layout.R.color.fo_cart_item_background), textview.getBackground());
        String s;
        Object obj;
        Date date;
        int i;
        if (usedMode == 1)
        {
            s = getString(com.biznessapps.layout.R.string.fo_delivery);
        } else
        if (usedMode == 3)
        {
            s = getString(com.biznessapps.layout.R.string.fo_dine_in);
        } else
        {
            s = getString(com.biznessapps.layout.R.string.fo_takeout);
        }
        obj = Calendar.getInstance();
        i = ((Calendar) (obj)).get(7);
        date = new Date(cart.getTimeStamp() * 1000L);
        ((Calendar) (obj)).setTime(date);
        if (i == ((Calendar) (obj)).get(7))
        {
            obj = getString(com.biznessapps.layout.R.string.fo_today);
        } else
        {
            obj = (new SimpleDateFormat("EEEE", Locale.getDefault())).format(date);
        }
        textview.setText(String.format("%s %s @ %s", new Object[] {
            s, obj, FOUtils.getDeviceDateFormat(getApplicationContext(), date)
        }));
    }

    private void initEmailReceiptSection()
    {
        final ImageView turnButton = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.email_receipt_container);
        if (usedMode != 1)
        {
            final ViewGroup emailLabelContainer = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.email_container);
            turnButton.setVisibility(0);
            turnButton = (TextView)root.findViewById(com.biznessapps.layout.R.id.email_receipt_text_view);
            FOUtils.setSectionHeader(settings, getApplicationContext(), turnButton, com.biznessapps.layout.R.string.email_receipt);
            turnButton = (ImageView)root.findViewById(com.biznessapps.layout.R.id.turn_function_button);
            final ImageView circleView = (ImageView)root.findViewById(com.biznessapps.layout.R.id.turn_circle_view);
            turnButton.setOnClickListener(new android.view.View.OnClickListener() );
            ViewUtils.updateTurnOnOffViewState(false, circleView, turnButton, settings);
            emailLabelContainer.setVisibility(8);
        }
    }

    private void initMyAddressesSection()
    {
        int i = 1;
        LinearLayout linearlayout = (LinearLayout)root.findViewById(com.biznessapps.layout.R.id.my_addresses_container);
        if (usedMode == 1)
        {
            linearlayout.setVisibility(0);
            LinearLayout linearlayout1 = (LinearLayout)root.findViewById(com.biznessapps.layout.R.id.my_addresses_gallery_container);
            linearlayout1.removeAllViews();
            final List data = StorageKeeper.instance().getFOAccouns();
            if (data != null)
            {
                i = data.size() + 1;
            }
            int j = 0;
            while (j < i) 
            {
                final String text;
                View view;
                if (j == i - 1)
                {
                    text = " + ";
                } else
                {
                    text = ((AccountEntity)data.get(j)).getNickName();
                }
                view = ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.fo_category_quantity_item);
                FOUtils.setBackground((ImageView)view.findViewById(com.biznessapps.layout.R.id.background_view), getApplicationContext(), settings);
                ((TextView)view.findViewById(com.biznessapps.layout.R.id.value_view)).setText(text);
                view.setTag(com.biznessapps.layout.R.id.INT_VALUE_TAG, Integer.valueOf(j));
                view.setOnClickListener(new android.view.View.OnClickListener() {

                    final CartFragment this$0;
                    final List val$data;
                    final String val$text;

                    public void onClick(View view1)
                    {
                        if (text.equalsIgnoreCase(" + "))
                        {
                            MyAddressesListFragment.openAccountItem(getHoldActivity(), null);
                            return;
                        } else
                        {
                            int k = ((Integer)view1.getTag(com.biznessapps.layout.R.id.INT_VALUE_TAG)).intValue();
                            selectedAccount = (AccountEntity)data.get(k);
                            useNewLocationData = false;
                            initAcccountData(selectedAccount);
                            return;
                        }
                    }

            
            {
                this$0 = CartFragment.this;
                text = s;
                data = list;
                super();
            }
                });
                linearlayout1.addView(view);
                j++;
            }
        }
    }

    private void initTipSection()
    {
        firstTipButton = (Button)root.findViewById(com.biznessapps.layout.R.id.first_tip_button);
        secondTipButton = (Button)root.findViewById(com.biznessapps.layout.R.id.second_tip_button);
        thirdTipButton = (Button)root.findViewById(com.biznessapps.layout.R.id.third_tip_button);
        boolean flag = FoodOrderingManager.getInstance().getCommonInfo().allowTips();
        View view = root.findViewById(com.biznessapps.layout.R.id.tips_container);
        int i;
        if (flag)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        view.setVisibility(i);
        if (flag)
        {
            i = settings.getFeatureTextColor();
            int j = getResources().getColor(com.biznessapps.layout.R.color.fo_item_background);
            BZButtonStyle.getInstance(getApplicationContext()).apply(j, i, firstTipButton);
            BZButtonStyle.getInstance(getApplicationContext()).apply(j, i, secondTipButton);
            BZButtonStyle.getInstance(getApplicationContext()).apply(j, i, thirdTipButton);
            firstTipButton.setTag(com.biznessapps.layout.R.id.INT_VALUE_TAG, Integer.valueOf(10));
            secondTipButton.setTag(com.biznessapps.layout.R.id.INT_VALUE_TAG, Integer.valueOf(15));
            thirdTipButton.setTag(com.biznessapps.layout.R.id.INT_VALUE_TAG, Integer.valueOf(20));
            firstTipButton.setText("10%");
            secondTipButton.setText("15%");
            thirdTipButton.setText("20%");
            firstTipButton.setOnClickListener(new android.view.View.OnClickListener() );
            secondTipButton.setOnClickListener(new android.view.View.OnClickListener() );
            thirdTipButton.setOnClickListener(new android.view.View.OnClickListener() );
        }
    }

    private void postOrderToServer(String s)
    {
        String s1 = firstNameView.getText().toString();
        String s2 = lastNameView.getText().toString();
        String s4 = emailView.getText().toString();
        String s5 = phoneView.getText().toString();
        String s6 = addressView.getText().toString();
        String s7 = address2View.getText().toString();
        String s8 = zipView.getText().toString();
        if (selectedAccount != null)
        {
            selectedAccount.setFirstName(s1);
            selectedAccount.setLastName(s2);
            selectedAccount.setEmail(s4);
            selectedAccount.setPhone(s5);
            selectedAccount.setZipcode(s8);
            selectedAccount.setAddress1(s6);
            selectedAccount.setAddress2(s7);
            if (useNewLocationData && chosenLocation != null)
            {
                selectedAccount.setLatitude(chosenLocation.getLatitude());
                selectedAccount.setLongitude(chosenLocation.getLongitude());
            }
            StorageKeeper.instance().addFOAccount(selectedAccount);
        }
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        linkedhashmap.put("first_name", s1);
        linkedhashmap.put("last_name", s2);
        linkedhashmap.put("phone", s5);
        if (StringUtils.isNotEmpty(s6))
        {
            linkedhashmap.put("address1", s6);
        }
        if (StringUtils.isNotEmpty(s7))
        {
            linkedhashmap.put("address2", s7);
        }
        if (StringUtils.isNotEmpty(s4))
        {
            linkedhashmap.put("email", s4);
        }
        if (StringUtils.isNotEmpty(s8))
        {
            linkedhashmap.put("zipcode", s8);
        }
        linkedhashmap.put("location_id", FoodOrderingManager.getInstance().getChosenLocation().getId());
        linkedhashmap.put("order_type", (new StringBuilder()).append("").append(cart.getDeliveryOption()).toString());
        if (paymentType == 2)
        {
            s1 = "5";
        } else
        {
            s1 = "4";
        }
        linkedhashmap.put("payment_method", s1);
        s4 = cart.getCategoryId();
        s1 = null;
        for (Iterator iterator = cart.getItems().iterator(); iterator.hasNext();)
        {
            com.biznessapps.food_ordering.entities.CategoryEntity.Item item = (com.biznessapps.food_ordering.entities.CategoryEntity.Item)iterator.next();
            String s3 = s4;
            if (s4 == null)
            {
                s3 = item.getCategoryId();
            }
            s4 = String.format("{\"category_id\":\"%s\",\"item_id\":\"%s\",\"size_id\":\"%s\",\"options\":[%s],\"quantity\":\"%d\",\"note\":\"%s\"}", new Object[] {
                s3, item.getId(), item.getSizeValue(), item.getOptionsIds(), Integer.valueOf(item.getQuantity()), item.getNote()
            });
            if (s1 == null)
            {
                s1 = s4;
                s4 = s3;
            } else
            {
                s1 = (new StringBuilder()).append(s1).append(",").append(s4).toString();
                s4 = s3;
            }
        }

        linkedhashmap.put("items", String.format("[%s]", new Object[] {
            s1
        }));
        linkedhashmap.put("timestamp", (new StringBuilder()).append("").append(cart.getTimeStamp()).toString());
        linkedhashmap.put("tip_percent", (new StringBuilder()).append("").append(getTip()).toString());
        linkedhashmap.put("app_code", cacher().getAppCode());
        linkedhashmap.put("tab_id", tabId);
        if (StringUtils.isNotEmpty(s))
        {
            linkedhashmap.put("nonce", s);
            linkedhashmap.put("store_customer", "1");
            linkedhashmap.put("action", "sale");
        }
        linkedhashmap.put("total_price", (new StringBuilder()).append("").append(FOUtils.getRoundValue(cart.getTotalCharges())).toString());
        linkedhashmap.put("app_id", AppCore.getInstance().getAppSettings().getAppId());
        AppHttpUtils.addAdditionalParams(null, linkedhashmap);
        loadPostData(linkedhashmap);
    }

    private void showConfirmationSuccessDialog(final Activity holdActivity)
    {
        try
        {
            Object obj1 = new Builder(holdActivity);
            final Context context = holdActivity.getApplicationContext();
            Object obj = ViewUtils.loadLayout(context, com.biznessapps.layout.R.layout.fo_confirmation_success_dialog);
            ((android.app.AlertDialog.Builder) (obj1)).setView(((View) (obj)));
            obj1 = ((android.app.AlertDialog.Builder) (obj1)).create();
            ((AlertDialog) (obj1)).setCancelable(false);
            Button button = (Button)((View) (obj)).findViewById(com.biznessapps.layout.R.id.ok_button);
            button.setText(context.getString(com.biznessapps.layout.R.string.ok));
            ImageView imageview = (ImageView)((View) (obj)).findViewById(com.biznessapps.layout.R.id.success_image_view);
            TextView textview = (TextView)((View) (obj)).findViewById(com.biznessapps.layout.R.id.title_view);
            TextView textview1 = (TextView)((View) (obj)).findViewById(com.biznessapps.layout.R.id.order_info_view);
            obj = (TextView)((View) (obj)).findViewById(com.biznessapps.layout.R.id.additional_text_view);
            textview.setText(context.getString(com.biznessapps.layout.R.string.success));
            textview1.setText(String.format(context.getString(com.biznessapps.layout.R.string.fo_order_info), new Object[] {
                getConfirmationDate(context)
            }));
            ((TextView) (obj)).setText(context.getString(com.biznessapps.layout.R.string.thank_you));
            textview.setTextColor(0xff000000);
            textview1.setTextColor(0xff000000);
            ((TextView) (obj)).setTextColor(0xff000000);
            BZImageViewStyle.getInstance(context).apply(0xff000000, imageview);
            BZButtonStyle.getInstance(context).apply(settings, button);
            button.setText(FOUtils.toUpperCase(context, com.biznessapps.layout.R.string.ok));
            button.setOnClickListener(new android.view.View.OnClickListener() );
            ((AlertDialog) (obj1)).show();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (final Activity holdActivity)
        {
            holdActivity.printStackTrace();
        }
    }

    private void showRemoveItemDialog(final com.biznessapps.food_ordering.entities.CategoryEntity.Item item)
    {
        android.app.AlertDialog.Builder builder = new Builder(getHoldActivity());
        builder.setTitle(com.biznessapps.layout.R.string.fo_remove_cart_message);
        builder.setPositiveButton(com.biznessapps.layout.R.string.yes, new android.content.DialogInterface.OnClickListener() {

            final CartFragment this$0;
            final com.biznessapps.food_ordering.entities.CategoryEntity.Item val$item;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                FoodOrderingManager.getInstance().getCart().getItems().remove(item);
                initCartListView();
                updateCharges();
                if (dialoginterface != null)
                {
                    dialoginterface.dismiss();
                }
            }

            
            {
                this$0 = CartFragment.this;
                item = item1;
                super();
            }
        });
        builder.setNegativeButton(com.biznessapps.layout.R.string.no, new android.content.DialogInterface.OnClickListener() {

            final CartFragment this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (dialoginterface != null)
                {
                    dialoginterface.dismiss();
                }
            }

            
            {
                this$0 = CartFragment.this;
                super();
            }
        });
        item = builder.create();
        item.setCancelable(false);
        item.show();
    }

    private void updateCharges()
    {
        cart.setTip(getTip());
        cart.updateValues();
        tipValueView.setText(cart.getFormattedValue(cart.getTipValue()));
        totalChargesValueView.setText(cart.getFormattedValue(cart.getTotalCharges()));
        Object obj = (TextView)root.findViewById(com.biznessapps.layout.R.id.convenience_fee_value_view);
        Object obj1 = (TextView)root.findViewById(com.biznessapps.layout.R.id.delivery_fee_value_view);
        float f = cart.getConvenienceFee();
        float f1 = cart.getDeliveryFee();
        ((TextView) (obj)).setText(cart.getFormattedValue(f));
        ((TextView) (obj1)).setText(cart.getFormattedValue(f1));
        ((TextView) (obj)).setTextColor(settings.getFeatureTextColor());
        ((TextView) (obj1)).setTextColor(settings.getFeatureTextColor());
        obj = root.findViewById(com.biznessapps.layout.R.id.convenience_container);
        Object obj2;
        int i;
        if (f > 0.0F)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        ((View) (obj)).setVisibility(i);
        if (usedMode == 1 && f1 > 0.0F)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        obj = root.findViewById(com.biznessapps.layout.R.id.delivery_container);
        if (i != 0)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        ((View) (obj)).setVisibility(i);
        obj = (RefreshableListView)root.findViewById(com.biznessapps.layout.R.id.tax_list_view);
        ((RefreshableListView) (obj)).setExpandOn(true);
        obj2 = FoodOrderingManager.getInstance().getTaxes();
        obj1 = new ArrayList();
        obj2 = ((List) (obj2)).iterator();
        do
        {
            if (!((Iterator) (obj2)).hasNext())
            {
                break;
            }
            TaxEntity taxentity = (TaxEntity)((Iterator) (obj2)).next();
            if (taxentity.getCaclulatedTax() > 0.0F)
            {
                ((List) (obj1)).add(taxentity);
            }
        } while (true);
        ((RefreshableListView) (obj)).setAdapter(new TaxAdapter(getApplicationContext(), ((List) (obj1)), settings));
    }

    protected String getRequestUrl()
    {
        return "food_ordering_post.php";
    }

    protected View getViewForBg()
    {
        return root.findViewById(com.biznessapps.layout.R.id.content_layout);
    }

    protected List getViewsRef()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new WeakReference(checkoutButton));
        arraylist.add(new WeakReference(cardButton));
        arraylist.add(new WeakReference(cashButton));
        return arraylist;
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        initCartListView();
        initTipSection();
        initEmailReceiptSection();
        initDeliveryTypeSection();
        cardButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.card_button);
        cashButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.cash_button);
        cardButton.setOnClickListener(new android.view.View.OnClickListener() );
        cashButton.setOnClickListener(new android.view.View.OnClickListener() );
        cardButton.setText(FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.fo_card));
        cashButton.setText(FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.cash));
        Object obj = FoodOrderingManager.getInstance().getCommonInfo().getPaymentGateways();
        final boolean hasPayments;
        if (obj != null && !((List) (obj)).isEmpty())
        {
            hasPayments = true;
        } else
        {
            hasPayments = false;
        }
        if (hasPayments)
        {
            obj = ((List) (obj)).iterator();
            do
            {
                if (!((Iterator) (obj)).hasNext())
                {
                    break;
                }
                com.biznessapps.food_ordering.entities.CommonInfo.PaymentMethod paymentmethod = (com.biznessapps.food_ordering.entities.CommonInfo.PaymentMethod)((Iterator) (obj)).next();
                if (paymentmethod.getType() == 5)
                {
                    cardButton.setVisibility(0);
                    cardButton.performClick();
                } else
                if (paymentmethod.getType() == 4)
                {
                    cashButton.setVisibility(0);
                    if (cardButton.getVisibility() != 0)
                    {
                        cashButton.performClick();
                    }
                }
            } while (true);
        }
        checkoutButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.checkout_button);
        checkoutButton.setText(FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.fo_checkout));
        checkoutButton.setOnClickListener(new android.view.View.OnClickListener() {

            final CartFragment this$0;
            final boolean val$hasPayments;

            public void onClick(View view)
            {
                if (hasPayments)
                {
                    checkout();
                    return;
                } else
                {
                    ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.fo_payment_not_available));
                    return;
                }
            }

            
            {
                this$0 = CartFragment.this;
                hasPayments = flag;
                super();
            }
        });
        BZButtonStyle.getInstance(getApplicationContext()).apply(settings, checkoutButton);
        firstNameView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.first_name_editview);
        lastNameView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.last_name_editview);
        phoneView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.phone_editview);
        emailView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.email_editview);
        addressView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.address_editview);
        address2View = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.address2_editview);
        zipView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.zip_editview);
        if (usedMode == 3 || usedMode == 2)
        {
            viewgroup.findViewById(com.biznessapps.layout.R.id.address_container).setVisibility(8);
            viewgroup.findViewById(com.biznessapps.layout.R.id.address2_container).setVisibility(8);
            viewgroup.findViewById(com.biznessapps.layout.R.id.zip_container).setVisibility(8);
        }
        FOUtils.plugTextView(viewgroup.findViewById(com.biznessapps.layout.R.id.zip_container), zipView, true);
        FOUtils.plugTextView(viewgroup.findViewById(com.biznessapps.layout.R.id.address_container), addressView, true);
        FOUtils.plugTextView(viewgroup.findViewById(com.biznessapps.layout.R.id.address2_container), address2View, false);
        FOUtils.plugTextView(viewgroup.findViewById(com.biznessapps.layout.R.id.firstname_container), firstNameView, true);
        FOUtils.plugTextView(viewgroup.findViewById(com.biznessapps.layout.R.id.lastname_container), lastNameView, true);
        FOUtils.plugTextView(viewgroup.findViewById(com.biznessapps.layout.R.id.phone_container), phoneView, true);
        FOUtils.plugTextView(viewgroup.findViewById(com.biznessapps.layout.R.id.email_container), emailView, true);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.address_label_view)).setText(com.biznessapps.layout.R.string.fo_address);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.zip_label_view)).setText(com.biznessapps.layout.R.string.zip);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.address2_label_view)).setText(com.biznessapps.layout.R.string.fo_apt);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.first_name_label_view)).setText(com.biznessapps.layout.R.string.first_name);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.last_name_label_view)).setText(com.biznessapps.layout.R.string.last_name);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.phone_label_view)).setText(com.biznessapps.layout.R.string.phone);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.email_label_view)).setText(com.biznessapps.layout.R.string.email);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.convenience_fee_view)).setText(com.biznessapps.layout.R.string.fo_convenience_fee);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.convenience_fee_view)).setTextColor(settings.getFeatureTextColor());
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.delivery_fee_view)).setText(com.biznessapps.layout.R.string.fo_delivery_fee);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.delivery_fee_view)).setTextColor(settings.getFeatureTextColor());
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tip_view)).setText(String.format("%s?", new Object[] {
            getString(com.biznessapps.layout.R.string.fo_tip)
        }));
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tip_view)).setTextColor(settings.getFeatureTextColor());
        totalChargesValueView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.total_charges_value_view);
        tipValueView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tip_value_view);
        obj = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.total_charges_view);
        ((TextView) (obj)).setText(String.format("%s (%s)", new Object[] {
            getString(com.biznessapps.layout.R.string.fo_total_charges), cart.getCurrency()
        }).toUpperCase(Locale.getDefault()));
        totalChargesValueView.setTextColor(settings.getFeatureTextColor());
        ((TextView) (obj)).setTextColor(settings.getFeatureTextColor());
        tipValueView.setTextColor(settings.getFeatureTextColor());
        updateCharges();
        addressView.setOnClickListener(new android.view.View.OnClickListener() {

            final CartFragment this$0;

            public void onClick(View view)
            {
                view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_LOCATION_CHOOSER"));
                view.putExtra("TAB_FRAGMENT", "FO_LOCATION_CHOOSER");
                view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.fo_location_enter_address));
                view.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
                startActivityForResult(view, 22);
            }

            
            {
                this$0 = CartFragment.this;
                super();
            }
        });
        obj = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.address_view);
        TextView textview = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.contacts_view);
        viewgroup = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.payment_text_view);
        FOUtils.setSectionHeader(settings, getApplicationContext(), ((TextView) (obj)), com.biznessapps.layout.R.string.fo_address);
        FOUtils.setSectionHeader(settings, getApplicationContext(), textview, com.biznessapps.layout.R.string.contact);
        FOUtils.setSectionHeader(settings, getApplicationContext(), viewgroup, com.biznessapps.layout.R.string.fo_payment);
    }

    protected void loadBgUrl()
    {
        bgUrl = FoodOrderingManager.getInstance().getCommonInfo().getBackground();
        super.loadBgUrl();
    }

    protected void loadData()
    {
        if (paymentType == 2)
        {
            Intent intent = new Intent(getApplicationContext(), com/braintreepayments/api/dropin/BraintreePaymentActivity);
            String s = cart.getClientToken();
            if (StringUtils.isNotEmpty(s))
            {
                intent.putExtra("com.braintreepayments.api.dropin.EXTRA_CLIENT_TOKEN", s);
                intent.putExtra("com.braintreepayments.api.dropin.EXTRA_CUSTOMIZATION", (new com.braintreepayments.api.dropin.Customization.CustomizationBuilder()).primaryDescription(getString(com.biznessapps.layout.R.string.fo_cart)).amount(cart.getFormattedValue(cart.getTotalCharges())).submitButtonText(getString(com.biznessapps.layout.R.string.fo_checkout)).build());
                startActivityForResult(intent, 23);
                return;
            } else
            {
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.fo_card_payment_not_available));
                return;
            }
        } else
        {
            postOrderToServer(null);
            return;
        }
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        j;
        JVM INSTR tableswitch 22 22: default 28
    //                   22 51;
           goto _L1 _L2
_L1:
        if (i == 23 && j == -1)
        {
            postOrderToServer(intent.getStringExtra("com.braintreepayments.api.dropin.EXTRA_PAYMENT_METHOD_NONCE"));
        }
        return;
_L2:
        Object obj = (LocationEntity)intent.getSerializableExtra("ITEM_EXTRA");
        if (obj != null)
        {
            chosenLocation = ((LocationEntity) (obj));
            useNewLocationData = true;
            obj = chosenLocation.getAddress1();
            addressView.setText(((CharSequence) (obj)));
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.fo_cart, null);
        if (FoodOrderingManager.getInstance().getRestaurantEntity() == null)
        {
            getHoldActivity().finish();
        } else
        {
            cart = FoodOrderingManager.getInstance().getCart();
            usedMode = cart.getDeliveryOption();
            initSettingsData();
            initViews(root);
            loadBgUrl();
        }
        return root;
    }

    public void onResume()
    {
        super.onResume();
        initMyAddressesSection();
    }

    protected boolean tryParseData(String s)
    {
        return true;
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        showConfirmationSuccessDialog(activity);
    }


/*
    static int access$002(CartFragment cartfragment, int i)
    {
        cartfragment.paymentType = i;
        return i;
    }

*/










/*
    static AccountEntity access$1602(CartFragment cartfragment, AccountEntity accountentity)
    {
        cartfragment.selectedAccount = accountentity;
        return accountentity;
    }

*/


/*
    static boolean access$1702(CartFragment cartfragment, boolean flag)
    {
        cartfragment.useNewLocationData = flag;
        return flag;
    }

*/









/*
    static Button access$602(CartFragment cartfragment, Button button)
    {
        cartfragment.activeTipButton = button;
        return button;
    }

*/



}
