// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.text.Html;
import android.text.format.DateFormat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.style.BZButtonStyle;
import com.biznessapps.common.style.BZSectionStyle;
import com.biznessapps.food_ordering.cart.CartTextAnimation;
import com.biznessapps.food_ordering.entities.CartEntity;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.ViewUtils;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.biznessapps.food_ordering:
//            FoodOrderingManager

public class FOUtils
{

    public FOUtils()
    {
    }

    public static void addLineSeparator(ListView listview, Context context)
    {
        addLineSeparator(listview, context, context.getResources().getColor(com.biznessapps.layout.R.color.fo_item_background));
    }

    public static void addLineSeparator(ListView listview, Context context, int i)
    {
        listview.setDivider(new ColorDrawable(i));
        listview.setDividerHeight(2);
    }

    public static String getDeviceDateFormat(Context context, Date date)
    {
        if (DateFormat.is24HourFormat(context))
        {
            context = "H:mm";
        } else
        {
            context = "h:mm a";
        }
        return (new SimpleDateFormat(context)).format(date);
    }

    public static String getFormattedValue(float f, String s)
    {
        return Html.fromHtml(String.format("%s %.2f", new Object[] {
            s, Float.valueOf(f)
        })).toString();
    }

    public static float getRoundValue(float f)
    {
        return (float)Math.round(f * 100F) / 100F;
    }

    private static void initCartButton(Activity activity, ViewGroup viewgroup)
    {
        ((ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.cart_view)).setOnClickListener(new android.view.View.OnClickListener(activity) {

            final Activity val$activity;

            public void onClick(View view)
            {
                FOUtils.openCartView(activity);
            }

            
            {
                activity = activity1;
                super();
            }
        });
    }

    public static CartTextAnimation initCartViews(Activity activity, ViewGroup viewgroup)
    {
        initCartButton(activity, viewgroup);
        TextView textview = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.cart_price_view);
        TextView textview1 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.cart_items_quantity_view);
        viewgroup = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.cart_container);
        return new CartTextAnimation(activity.getApplicationContext(), textview, textview1, viewgroup);
    }

    public static void openCartView(Activity activity)
    {
        List list = FoodOrderingManager.getInstance().getCart().getItems();
        if (list != null && !list.isEmpty())
        {
            Intent intent = new Intent(activity.getApplicationContext(), ActivitySelector.getActivityClass("FOOD_ORDER_CART_CONTROLLER"));
            intent.putExtra("TAB_FRAGMENT", "FOOD_ORDER_CART_CONTROLLER");
            intent.putExtra("TAB_LABEL", activity.getString(com.biznessapps.layout.R.string.fo_cart));
            intent.putExtra("TAB_SPECIAL_ID", activity.getIntent().getStringExtra("TAB_SPECIAL_ID"));
            activity.startActivity(intent);
            return;
        } else
        {
            ViewUtils.showDialog(activity, com.biznessapps.layout.R.string.fo_cart_is_empty);
            return;
        }
    }

    public static void plugTextView(View view, TextView textview, boolean flag)
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            view.setAlpha(0.5F);
        }
        int i;
        if (flag)
        {
            i = com.biznessapps.layout.R.string.required;
        } else
        {
            i = com.biznessapps.layout.R.string.optional;
        }
        textview.setHint(i);
        ViewUtils.changeDefaultCursorColor(textview);
    }

    public static void setBackground(ImageView imageview, Context context, UiSettings uisettings)
    {
        int i = context.getResources().getColor(com.biznessapps.layout.R.color.fo_item_background);
        imageview.setImageDrawable(CommonUtils.getButtonDrawable(new ColorDrawable(uisettings.getButtonBgColor()), new ColorDrawable(i)));
    }

    public static void setSectionHeader(UiSettings uisettings, Context context, TextView textview, int i)
    {
        textview.setText(context.getString(i).toUpperCase(Locale.getDefault()));
        BZSectionStyle.getInstance(context).apply(uisettings, textview);
    }

    public static String toUpperCase(Context context, int i)
    {
        return context.getString(i).toUpperCase(Locale.getDefault());
    }

    public static transient boolean updateButtons(Context context, UiSettings uisettings, boolean flag, Button abutton[])
    {
        Button button = abutton[0];
        int j;
        int k;
        int l;
        boolean flag1;
        if (!button.isSelected())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        j = uisettings.getButtonTextColor();
        k = uisettings.getButtonBgColor();
        l = abutton.length;
        for (int i = 0; i < l; i++)
        {
            Button button1 = abutton[i];
            button1.setSelected(false);
            BZButtonStyle.getInstance(context).apply(j, k, button1);
        }

        if (flag1 || flag)
        {
            BZButtonStyle.getInstance(context).apply(uisettings, button);
            button.setSelected(true);
        }
        return flag1;
    }

    public static transient boolean updateButtons(Context context, UiSettings uisettings, Button abutton[])
    {
        Button button = abutton[0];
        int j;
        int k;
        boolean flag;
        if (!button.isSelected())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j = context.getResources().getColor(com.biznessapps.layout.R.color.fo_buttom_color);
        k = abutton.length;
        for (int i = 0; i < k; i++)
        {
            Button button1 = abutton[i];
            button1.setSelected(false);
            BZButtonStyle.getInstance(context).apply(j, 0xff000000, button1);
        }

        if (flag)
        {
            BZButtonStyle.getInstance(context).apply(uisettings, button);
            button.setSelected(true);
        }
        return flag;
    }

    public static transient boolean updateTipButtons(Context context, UiSettings uisettings, Button abutton[])
    {
        Button button = abutton[0];
        int j;
        int k;
        boolean flag;
        if (!button.isSelected())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j = context.getResources().getColor(com.biznessapps.layout.R.color.fo_item_background);
        k = abutton.length;
        for (int i = 0; i < k; i++)
        {
            Button button1 = abutton[i];
            button1.setSelected(false);
            BZButtonStyle.getInstance(context).apply(j, uisettings.getFeatureTextColor(), button1);
        }

        if (flag)
        {
            BZButtonStyle.getInstance(context).apply(uisettings, button);
            button.setSelected(true);
        }
        return flag;
    }
}
