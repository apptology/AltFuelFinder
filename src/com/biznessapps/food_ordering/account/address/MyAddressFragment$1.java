// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account.address;

import android.content.Intent;
import android.view.View;
import com.biznessapps.api.ActivitySelector;

// Referenced classes of package com.biznessapps.food_ordering.account.address:
//            MyAddressFragment

class this._cls0
    implements android.view.
{

    final MyAddressFragment this$0;

    public void onClick(View view)
    {
        view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_LOCATION_CHOOSER"));
        view.putExtra("TAB_FRAGMENT", "FO_LOCATION_CHOOSER");
        view.putExtra("TAB_LABEL", getString(com.biznessapps.layout._enter_address));
        view.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
        startActivityForResult(view, 22);
    }

    ()
    {
        this$0 = MyAddressFragment.this;
        super();
    }
}
