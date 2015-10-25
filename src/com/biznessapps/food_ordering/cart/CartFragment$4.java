// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.cart;

import android.content.Intent;
import android.view.View;
import com.biznessapps.api.ActivitySelector;

// Referenced classes of package com.biznessapps.food_ordering.cart:
//            CartFragment

class this._cls0
    implements android.view.tener
{

    final CartFragment this$0;

    public void onClick(View view)
    {
        view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_LOCATION_CHOOSER"));
        view.putExtra("TAB_FRAGMENT", "FO_LOCATION_CHOOSER");
        view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.ation_enter_address));
        view.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
        startActivityForResult(view, 22);
    }

    ()
    {
        this$0 = CartFragment.this;
        super();
    }
}
