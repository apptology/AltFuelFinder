// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.cart;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.biznessapps.food_ordering.FOMainActivity;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.entities.CartEntity;

// Referenced classes of package com.biznessapps.food_ordering.cart:
//            CartFragment

class val.holdActivity
    implements android.view.ener
{

    final CartFragment this$0;
    final Context val$context;
    final Activity val$holdActivity;

    public void onClick(View view)
    {
        FoodOrderingManager.getInstance().getCart().clear();
        view = new Intent(val$context, com/biznessapps/food_ordering/FOMainActivity);
        view.putExtra("TAB_FRAGMENT", "FoodOrderingViewController");
        view.putExtra("BG_URL_EXTRA", CartFragment.access$1900(CartFragment.this));
        view.putExtra("TAB_SPECIAL_ID", val$holdActivity.getIntent().getStringExtra("TAB_SPECIAL_ID"));
        view.setFlags(0x4000000);
        val$holdActivity.startActivity(view);
        val$holdActivity.finish();
    }

    ()
    {
        this$0 = final_cartfragment;
        val$context = context1;
        val$holdActivity = Activity.this;
        super();
    }
}
