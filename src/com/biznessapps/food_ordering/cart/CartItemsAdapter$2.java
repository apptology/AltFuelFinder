// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.cart;

import android.view.View;
import android.widget.TextView;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.entities.CartEntity;

// Referenced classes of package com.biznessapps.food_ordering.cart:
//            CartItemsAdapter

class val.priceView
    implements android.view.r
{

    final CartItemsAdapter this$0;
    final com.biznessapps.food_ordering.entities. val$item;
    final TextView val$priceView;
    final TextView val$valueView;

    public void onClick(View view)
    {
        int i = val$item.getQuantity() + 1;
        val$item.setQuantity(i);
        val$valueView.setText((new StringBuilder()).append("").append(i).toString());
        val$priceView.setText(FoodOrderingManager.getInstance().getCart().getFormattedValue(val$item.getPrice() * (float)i));
        CartItemsAdapter.access$100(CartItemsAdapter.this).onChangedNumber(val$item, i);
    }

    Item()
    {
        this$0 = final_cartitemsadapter;
        val$item = ;
        val$valueView = textview;
        val$priceView = TextView.this;
        super();
    }
}
