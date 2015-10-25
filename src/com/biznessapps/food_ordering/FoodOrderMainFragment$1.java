// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering;

import android.content.Intent;
import android.view.View;
import com.biznessapps.api.ActivitySelector;

// Referenced classes of package com.biznessapps.food_ordering:
//            FoodOrderMainFragment

class this._cls0
    implements android.view.erMainFragment._cls1
{

    final FoodOrderMainFragment this$0;

    public void onClick(View view)
    {
        view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_ACCOUNT_CONTROLLER"));
        view.putExtra("TAB_FRAGMENT", "FO_ACCOUNT_CONTROLLER");
        view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.ment.getString));
        view.putExtra("BG_URL_EXTRA", FoodOrderMainFragment.access$000(FoodOrderMainFragment.this));
        view.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
        startActivity(view);
    }

    ()
    {
        this$0 = FoodOrderMainFragment.this;
        super();
    }
}
