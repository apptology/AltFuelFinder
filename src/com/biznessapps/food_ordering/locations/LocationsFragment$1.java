// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.locations;

import android.content.Intent;
import android.view.View;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.common.activities.CommonFragmentActivity;

// Referenced classes of package com.biznessapps.food_ordering.locations:
//            LocationsFragment

class this._cls0
    implements android.view.
{

    final LocationsFragment this$0;

    public void onClick(View view)
    {
        view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_LOCATIONS_MAP"));
        view.putExtra("TAB_FRAGMENT", "FO_LOCATIONS_MAP");
        view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.s));
        view.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
        startActivity(view);
        getHoldActivity().finish();
    }

    A()
    {
        this$0 = LocationsFragment.this;
        super();
    }
}
