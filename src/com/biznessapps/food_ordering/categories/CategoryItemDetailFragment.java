// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.categories;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.Locker;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.common.style.BZButtonStyle;
import com.biznessapps.food_ordering.CheckAvailabilityTask;
import com.biznessapps.food_ordering.FOUtils;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.cart.CartTextAnimation;
import com.biznessapps.food_ordering.entities.CartEntity;
import com.biznessapps.food_ordering.entities.CommonInfo;
import com.biznessapps.food_ordering.entities.OrderEntity;
import com.biznessapps.food_ordering.entities.OrderOptionEntity;
import com.biznessapps.food_ordering.parser.FoodOrderingParser;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.widgets.CustomScrollView;
import com.biznessapps.widgets.RefreshableListView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.food_ordering.categories:
//            OptionsAdapter

public class CategoryItemDetailFragment extends CommonFragment
{

    private Button addItemButton;
    private CartTextAnimation cartAnimation;
    private TextView descriptionView;
    private com.biznessapps.food_ordering.entities.CategoryEntity.Item item;
    private Locker locker;
    private String moreText;
    private OrderEntity order;
    private TextView priceView;
    private LinearLayout quantitiesContainer;
    private List quantityViewList;
    private LinearLayout sizesContainer;
    private List sizesViewList;
    private EditText specialInstructionView;
    private ImageView thumbnailView;
    private TextView titleView;

    public CategoryItemDetailFragment()
    {
        quantityViewList = new ArrayList();
        sizesViewList = new ArrayList();
        locker = new Locker();
    }

    private void activateView(View view)
    {
        ((ImageView)view.findViewById(com.biznessapps.layout.R.id.background_view)).setSelected(true);
        view.setSelected(true);
        ((TextView)view.findViewById(com.biznessapps.layout.R.id.value_view)).setTextColor(settings.getButtonTextColor());
    }

    private void activateViewByValue(int i)
    {
        Iterator iterator = quantityViewList.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            View view = (View)iterator.next();
            if (((Integer)view.getTag(com.biznessapps.layout.R.id.INT_VALUE_TAG)).intValue() != i)
            {
                continue;
            }
            activateView(view);
            updateQuantityAndPrice(view);
            break;
        } while (true);
    }

    private void checkAvailability()
    {
        final com.biznessapps.common.activities.CommonFragmentActivity activity = getHoldActivity();
        if (activity != null)
        {
            com.biznessapps.food_ordering.CheckAvailabilityTask.CustomRunnable customrunnable = new com.biznessapps.food_ordering.CheckAvailabilityTask.CustomRunnable() {

                final CategoryItemDetailFragment this$0;
                final Activity val$activity;

                public void run()
                {
                    goToNextStep(activity);
                }

            
            {
                this$0 = CategoryItemDetailFragment.this;
                activity = activity1;
                super();
            }
            };
            long l = FoodOrderingManager.getInstance().getCart().getTimeStamp();
            String s = FoodOrderingManager.getInstance().getChosenLocation().getId();
            ArrayList arraylist = new ArrayList();
            item.setCategoryId(FoodOrderingManager.getInstance().getCart().getCategoryId());
            arraylist.add(item);
            (new CheckAvailabilityTask(activity, getViewsRef(), s, l, arraylist, customrunnable, null, tabId, cacher().getAppCode())).execute(new Void[0]);
        }
    }

    private void deactivateViews(List list)
    {
        list = list.iterator();
        do
        {
            if (!list.hasNext())
            {
                break;
            }
            View view = (View)list.next();
            ((ImageView)view.findViewById(com.biznessapps.layout.R.id.background_view)).setSelected(false);
            view.setSelected(false);
            TextView textview = (TextView)view.findViewById(com.biznessapps.layout.R.id.value_view);
            textview.setTextColor(0xff000000);
            if (view.getTag(com.biznessapps.layout.R.id.BOOL_VALUE_TAG) != null && ((Boolean)view.getTag(com.biznessapps.layout.R.id.BOOL_VALUE_TAG)).booleanValue())
            {
                textview.setText(moreText);
            }
        } while (true);
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

    private int getQuantityValue()
    {
        boolean flag = false;
        Iterator iterator = quantityViewList.iterator();
        int i;
        do
        {
            i = ((flag) ? 1 : 0);
            if (!iterator.hasNext())
            {
                break;
            }
            View view = (View)iterator.next();
            if (!view.isSelected())
            {
                continue;
            }
            i = ((Integer)view.getTag(com.biznessapps.layout.R.id.INT_VALUE_TAG)).intValue();
            break;
        } while (true);
        return i;
    }

    private String getSizeValue(int i)
    {
        String s = "";
        Iterator iterator = sizesViewList.iterator();
        Object obj;
        do
        {
            obj = s;
            if (!iterator.hasNext())
            {
                break;
            }
            obj = (View)iterator.next();
            if (!((View) (obj)).isSelected())
            {
                continue;
            }
            obj = (String)((View) (obj)).getTag(i);
            break;
        } while (true);
        return ((String) (obj));
    }

    private void goToNextStep(Activity activity)
    {
        FoodOrderingManager.getInstance().getCart().addToCart(item);
        Intent intent = new Intent(activity.getApplicationContext(), ActivitySelector.getActivityClass("FO_CONFIRMATION_PAGE"));
        intent.putExtra("TAB_FRAGMENT", "FO_CONFIRMATION_PAGE");
        intent.putExtra("TAB_LABEL", activity.getString(com.biznessapps.layout.R.string.fo_confirmation));
        intent.putExtra("TAB_SPECIAL_ID", activity.getIntent().getStringExtra("TAB_SPECIAL_ID"));
        activity.startActivity(intent);
        activity.setResult(1, new Intent());
        activity.finish();
    }

    private void initOptionsSection()
    {
        Object obj = order.getOptions();
        if (obj != null && !((List) (obj)).isEmpty())
        {
            root.findViewById(com.biznessapps.layout.R.id.options_container).setVisibility(0);
            RefreshableListView refreshablelistview = (RefreshableListView)root.findViewById(com.biznessapps.layout.R.id.options_list_view);
            refreshablelistview.setExpandOn(true);
            FOUtils.addLineSeparator(refreshablelistview, getApplicationContext());
            String s = FoodOrderingManager.getInstance().getCart().getCurrencySign();
            obj = new OptionsAdapter(getApplicationContext(), ((List) (obj)), settings, s);
            ((OptionsAdapter) (obj)).setListener(new OptionsAdapter.ClickListener() {

                final CategoryItemDetailFragment this$0;

                public void onClicked(boolean flag, OrderOptionEntity orderoptionentity)
                {
                    item.updateOptions(orderoptionentity, flag);
                    updatePriceValue(getQuantityValue());
                }

            
            {
                this$0 = CategoryItemDetailFragment.this;
                super();
            }
            });
            refreshablelistview.setAdapter(((android.widget.ListAdapter) (obj)));
        }
    }

    private void initQuantitiesSection()
    {
        quantitiesContainer = (LinearLayout)root.findViewById(com.biznessapps.layout.R.id.quantity_gallery_container);
        quantitiesContainer.removeAllViews();
        int i = 1;
        while (i <= 6) 
        {
            String s;
            final Object view;
            View view1;
            boolean flag;
            if (i == 6)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                s = moreText;
            } else
            {
                s = (new StringBuilder()).append("").append(i).toString();
            }
            view1 = getItemView(s, quantityViewList, com.biznessapps.layout.R.id.STRING_VALUE_TAG);
            view = view1;
            if (view1 == null)
            {
                view = (ViewGroup)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.fo_category_quantity_item);
                ((View) (view)).setTag(com.biznessapps.layout.R.id.STRING_VALUE_TAG, s);
                ((View) (view)).setTag(com.biznessapps.layout.R.id.INT_VALUE_TAG, Integer.valueOf(i));
                quantityViewList.add(view);
            }
            ((View) (view)).setTag(com.biznessapps.layout.R.id.BOOL_VALUE_TAG, Boolean.valueOf(flag));
            FOUtils.setBackground((ImageView)((View) (view)).findViewById(com.biznessapps.layout.R.id.background_view), getApplicationContext(), settings);
            ((TextView)((View) (view)).findViewById(com.biznessapps.layout.R.id.value_view)).setText(s);
            ((View) (view)).setOnClickListener(new android.view.View.OnClickListener() {

                final CategoryItemDetailFragment this$0;
                final View val$view;

                public void onClick(View view2)
                {
                    if (((String)view.getTag(com.biznessapps.layout.R.id.STRING_VALUE_TAG)).equalsIgnoreCase(moreText))
                    {
                        showQuantityDialog(view);
                        return;
                    } else
                    {
                        deactivateViews(quantityViewList);
                        activateView(view);
                        updateQuantityAndPrice(view);
                        return;
                    }
                }

            
            {
                this$0 = CategoryItemDetailFragment.this;
                view = view1;
                super();
            }
            });
            if (i == 1)
            {
                ((View) (view)).performClick();
            }
            quantitiesContainer.addView(((View) (view)));
            i++;
        }
    }

    private void initSizesSection()
    {
        List list = order.getSizes();
        if (list != null && !list.isEmpty())
        {
            root.findViewById(com.biznessapps.layout.R.id.sizes_container).setVisibility(0);
            sizesContainer = (LinearLayout)root.findViewById(com.biznessapps.layout.R.id.size_gallery_container);
            sizesContainer.removeAllViews();
            boolean flag = true;
            for (Iterator iterator = list.iterator(); iterator.hasNext();)
            {
                com.biznessapps.food_ordering.entities.OrderEntity.Size size = (com.biznessapps.food_ordering.entities.OrderEntity.Size)iterator.next();
                String s = size.getSizeName();
                View view1 = getItemView(s, sizesViewList, com.biznessapps.layout.R.id.STRING_VALUE_TAG);
                final Object view = view1;
                if (view1 == null)
                {
                    view = (ViewGroup)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.fo_category_size_item);
                    ((View) (view)).setTag(com.biznessapps.layout.R.id.STRING_ID_VALUE_TAG, size.getId());
                    ((View) (view)).setTag(com.biznessapps.layout.R.id.STRING_VALUE_TAG, s);
                    ((View) (view)).setTag(com.biznessapps.layout.R.id.FLOAT_VALUE_TAG, Float.valueOf(size.getPrice()));
                    sizesViewList.add(view);
                }
                FOUtils.setBackground((ImageView)((View) (view)).findViewById(com.biznessapps.layout.R.id.background_view), getApplicationContext(), settings);
                ((TextView)((View) (view)).findViewById(com.biznessapps.layout.R.id.value_view)).setText(s);
                ((View) (view)).setOnClickListener(new android.view.View.OnClickListener() {

                    final CategoryItemDetailFragment this$0;
                    final View val$view;

                    public void onClick(View view2)
                    {
                        deactivateViews(sizesViewList);
                        activateView(view);
                        float f = ((Float)view.getTag(com.biznessapps.layout.R.id.FLOAT_VALUE_TAG)).floatValue();
                        item.setPrice(f);
                        updatePriceValue(getQuantityValue());
                    }

            
            {
                this$0 = CategoryItemDetailFragment.this;
                view = view1;
                super();
            }
                });
                boolean flag1 = flag;
                if (flag)
                {
                    ((View) (view)).performClick();
                    flag1 = false;
                }
                sizesContainer.addView(((View) (view)));
                flag = flag1;
            }

        }
    }

    private void showConfirmationDialog()
    {
        Locker locker1 = locker;
        locker1;
        JVM INSTR monitorenter ;
        if (locker.isLocked()) goto _L2; else goto _L1
_L1:
        float f;
        final AlertDialog dialog;
        Button button;
        Button button1;
        ImageView imageview;
        TextView textview;
        TextView textview1;
        TextView textview2;
        TextView textview3;
        final int quantityValue;
        locker.setLocked(true);
        dialog = new android.app.AlertDialog.Builder(getHoldActivity());
        View view = ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.fo_category_confirmation_dialog);
        dialog.setView(view);
        dialog = dialog.create();
        dialog.setCancelable(false);
        button = (Button)view.findViewById(com.biznessapps.layout.R.id.add_button);
        button1 = (Button)view.findViewById(com.biznessapps.layout.R.id.cancel_button);
        imageview = (ImageView)view.findViewById(com.biznessapps.layout.R.id.thumbnail_view);
        textview = (TextView)view.findViewById(com.biznessapps.layout.R.id.title_view);
        textview1 = (TextView)view.findViewById(com.biznessapps.layout.R.id.name_view);
        textview2 = (TextView)view.findViewById(com.biznessapps.layout.R.id.description_view);
        textview3 = (TextView)view.findViewById(com.biznessapps.layout.R.id.price_view);
        textview.setText(com.biznessapps.layout.R.string.fo_confirmation);
        textview1.setText(item.getTitle());
        quantityValue = getQuantityValue();
        f = item.getPrice();
        float f1 = quantityValue;
        final String sizeValue;
        boolean flag;
        sizeValue = getSizeValue(com.biznessapps.layout.R.id.STRING_ID_VALUE_TAG);
        String s = getSizeValue(com.biznessapps.layout.R.id.STRING_VALUE_TAG);
        if (StringUtils.isNotEmpty(sizeValue))
        {
            s = String.format("%s: %s", new Object[] {
                getString(com.biznessapps.layout.R.string.fo_size), s
            });
        }
        String s1 = FoodOrderingManager.getInstance().getCart().getFormattedValue(item.getPriceWithoutOptions());
        String s2 = String.format("%s: %d <br/> %s <br/> %s: %s", new Object[] {
            getString(com.biznessapps.layout.R.string.fo_quantity), Integer.valueOf(getQuantityValue()), s, getString(com.biznessapps.layout.R.string.fo_item_price), s1
        });
        item.setDescription(getApplicationContext(), s, s1);
        textview2.setText(Html.fromHtml(s2));
        textview3.setText(FoodOrderingManager.getInstance().getCart().getFormattedValue(f * f1));
        flag = StringUtils.isNotEmpty(item.getImageUrl());
        if (!flag) goto _L4; else goto _L3
_L3:
        com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
        imageloadparams.setView(imageview);
        imageloadparams.setUrl(item.getImageUrl());
        imageloadparams.setImageSrc(true);
        imageloadparams.setImageType(2);
        getImageFetcher().loadImage(imageloadparams);
          goto _L4
_L6:
        byte byte0;
        imageview.setVisibility(byte0);
        button.setText(FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.fo_add));
        button1.setText(FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.cancel));
        textview.setTextColor(0xff000000);
        textview1.setTextColor(0xff000000);
        textview2.setTextColor(0xff000000);
        textview3.setTextColor(0xff000000);
        BZButtonStyle.getInstance(getApplicationContext()).apply(settings, button);
        BZButtonStyle.getInstance(getApplicationContext()).apply(settings, button1);
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final CategoryItemDetailFragment this$0;
            final AlertDialog val$dialog;
            final int val$quantityValue;
            final String val$sizeValue;

            public void onClick(View view1)
            {
                view1 = specialInstructionView.getText().toString();
                item.setNote(view1);
                item.setQuantity(quantityValue);
                item.setSizeValue(sizeValue);
                item.setTaxExempted(order.isTaxExempted());
                checkAvailability();
                locker.setLocked(false);
                if (dialog.isShowing())
                {
                    dialog.dismiss();
                }
            }

            
            {
                this$0 = CategoryItemDetailFragment.this;
                quantityValue = i;
                sizeValue = s;
                dialog = alertdialog;
                super();
            }
        });
        button1.setOnClickListener(new android.view.View.OnClickListener() {

            final CategoryItemDetailFragment this$0;
            final AlertDialog val$dialog;

            public void onClick(View view1)
            {
                locker.setLocked(false);
                if (dialog.isShowing())
                {
                    dialog.dismiss();
                }
            }

            
            {
                this$0 = CategoryItemDetailFragment.this;
                dialog = alertdialog;
                super();
            }
        });
        dialog.show();
_L2:
        locker1;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        locker1;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        if (flag)
        {
            byte0 = 0;
        } else
        {
            byte0 = 8;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void showQuantityDialog(final View itemView)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getHoldActivity());
        final View view = ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.fo_category_quantity_dialog);
        builder.setView(view);
        builder.setTitle(com.biznessapps.layout.R.string.fo_quantity_message);
        builder.setPositiveButton(com.biznessapps.layout.R.string.done, new android.content.DialogInterface.OnClickListener() {

            final CategoryItemDetailFragment this$0;
            final View val$itemView;
            final View val$view;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                String s = ((EditText)view.findViewById(com.biznessapps.layout.R.id.quantity_edit_text)).getText().toString();
                i = Integer.parseInt(s);
                if (i <= 0)
                {
                    break MISSING_BLOCK_LABEL_56;
                }
                deactivateViews(quantityViewList);
                if (i > 5)
                {
                    break MISSING_BLOCK_LABEL_89;
                }
                try
                {
                    activateViewByValue(i);
                }
                catch (NumberFormatException numberformatexception)
                {
                    numberformatexception.printStackTrace();
                }
                ((ScrollView)
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = CategoryItemDetailFragment.this;
                view = view1;
                itemView = view2;
                super();
            }
        });
        builder.setNegativeButton(com.biznessapps.layout.R.string.cancel, new android.content.DialogInterface.OnClickListener() );
        builder.create().show();
    }

    private void updatePriceValue(int i)
    {
        priceView.setText(FoodOrderingManager.getInstance().getCart().getFormattedValue((float)i * item.getPrice()));
    }

    private void updateQuantityAndPrice(View view)
    {
        updatePriceValue(((Integer)view.getTag(com.biznessapps.layout.R.id.INT_VALUE_TAG)).intValue());
    }

    protected String defineBgUrl(Intent intent)
    {
        return FoodOrderingManager.getInstance().getCommonInfo().getBackground();
    }

    protected String getRequestUrl()
    {
        return String.format("food_ordering_item.php?app_code=%s&tab_id=%s&id=%s", new Object[] {
            cacher().getAppCode(), tabId, item.getId()
        });
    }

    protected List getViewsRef()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new WeakReference(addItemButton));
        return arraylist;
    }

    protected void initViews(ViewGroup viewgroup)
    {
        initViews(viewgroup);
        cartAnimation = FOUtils.initCartViews(getHoldActivity(), viewgroup);
        specialInstructionView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.specific_instructions_edit_text);
        thumbnailView = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.thumbnail_view);
        titleView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.title_view);
        descriptionView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.description_view);
        titleView.setText(item.getTitle());
        descriptionView.setText(item.getDescription());
        priceView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.price_view);
        priceView.setBackgroundColor(settings.getButtonBgColor());
        titleView.setTextColor(settings.getFeatureTextColor());
        descriptionView.setTextColor(settings.getFeatureTextColor());
        priceView.setTextColor(settings.getButtonTextColor());
        ((CustomScrollView)viewgroup.findViewById(com.biznessapps.layout.R.id.description_scroll_container)).setOnTouchListener(new android.view.View.OnTouchListener() {

            final CategoryItemDetailFragment this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                view.getParent().requestDisallowInterceptTouchEvent(true);
                return false;
            }

            
            {
                this$0 = CategoryItemDetailFragment.this;
                super();
            }
        });
        addItemButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.add_item_to_order);
        addItemButton.setOnClickListener(new android.view.View.OnClickListener() {

            final CategoryItemDetailFragment this$0;

            public void onClick(View view)
            {
                showConfirmationDialog();
            }

            
            {
                this$0 = CategoryItemDetailFragment.this;
                super();
            }
        });
        BZButtonStyle.getInstance(getApplicationContext()).apply(settings, addItemButton);
        addItemButton.setText(FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.fo_add_item_to_order));
        TextView textview = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.quantity_text_view);
        TextView textview1 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.sizes_text_view);
        TextView textview2 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.options_text_view);
        viewgroup = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.specific_instr_text_view);
        FOUtils.setSectionHeader(settings, getApplicationContext(), textview, com.biznessapps.layout.R.string.fo_quantity);
        FOUtils.setSectionHeader(settings, getApplicationContext(), textview1, com.biznessapps.layout.R.string.fo_size);
        FOUtils.setSectionHeader(settings, getApplicationContext(), textview2, com.biznessapps.layout.R.string.fo_options);
        FOUtils.setSectionHeader(settings, getApplicationContext(), viewgroup, com.biznessapps.layout.R.string.fo_specific_instructions);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.fo_category_item_detail, null);
        getActivity().getWindow().setSoftInputMode(19);
        initSettingsData();
        item = (com.biznessapps.food_ordering.entities.CategoryEntity.Item)getIntent().getSerializableExtra("ITEM_EXTRA");
        moreText = getString(com.biznessapps.layout.R.string.more);
        initViews(root);
        loadData();
        return root;
    }

    public void onPause()
    {
        cartAnimation.stopAnim();
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        cartAnimation.startAnim();
    }

    protected boolean tryParseData(String s)
    {
        order = FoodOrderingParser.parseOrder(s);
        return true;
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        activity = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
        activity.setView(thumbnailView);
        activity.setTint(null);
        activity.setUrl(order.getImageUrl());
        activity.setImageSrc(true);
        activity.setImageType(3);
        getImageFetcher().loadImage(activity);
        initSizesSection();
        initOptionsSection();
        initQuantitiesSection();
    }



















}
