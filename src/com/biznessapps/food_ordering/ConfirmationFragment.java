// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.common.style.BZButtonStyle;
import com.biznessapps.common.style.BZTextViewStyle;
import com.biznessapps.food_ordering.cart.CartTextAnimation;
import com.biznessapps.food_ordering.entities.CommonInfo;

// Referenced classes of package com.biznessapps.food_ordering:
//            FOUtils, FoodOrderingManager

public class ConfirmationFragment extends CommonFragment
{

    private CartTextAnimation cartAnimation;
    private Button orderMoreButton;
    private Button placeOrderButton;

    public ConfirmationFragment()
    {
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.fo_confirmation_page;
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        orderMoreButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.order_more_button);
        int i = getResources().getColor(com.biznessapps.layout.R.color.fo_buttom_color);
        BZButtonStyle.getInstance(getApplicationContext()).apply(i, settings.getFeatureTextColor(), orderMoreButton);
        placeOrderButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.place_order_button);
        orderMoreButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ConfirmationFragment this$0;

            public void onClick(View view)
            {
                view = getIntent().getStringExtra("LOCATION_ID");
                if (view != null)
                {
                    Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_CATEGORIES"));
                    intent.putExtra("TAB_FRAGMENT", "FO_CATEGORIES");
                    intent.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.fo_categories));
                    intent.putExtra("BG_URL_EXTRA", 
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = ConfirmationFragment.this;
                super();
            }
        });
        placeOrderButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ConfirmationFragment this$0;

            public void onClick(View view)
            {
                FOUtils.openCartView(getHoldActivity());
            }

            
            {
                this$0 = ConfirmationFragment.this;
                super();
            }
        });
        placeOrderButton.setText(FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.fo_place_order));
        orderMoreButton.setText(FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.fo_order_more));
        TextView textview = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.cart_updated_textview);
        textview.setText(FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.fo_cart_updated));
        BZTextViewStyle.getInstance(getApplicationContext()).apply(settings.getFeatureTextColor(), textview);
        cartAnimation = FOUtils.initCartViews(getHoldActivity(), viewgroup);
        BZButtonStyle.getInstance(getApplicationContext()).apply(settings, placeOrderButton);
    }

    protected void loadBgUrl()
    {
        bgUrl = FoodOrderingManager.getInstance().getCommonInfo().getBackground();
        loadBgUrl();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        onCreateView(layoutinflater, viewgroup, bundle);
        initViews(root);
        loadBgUrl();
        return root;
    }

    public void onPause()
    {
        cartAnimation.stopAnim();
        onPause();
    }

    public void onResume()
    {
        onResume();
        cartAnimation.startAnim();
    }

}
