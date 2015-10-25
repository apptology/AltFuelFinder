// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.locations;

import android.content.Intent;
import android.view.View;
import com.biznessapps.api.ActivitySelector;

// Referenced classes of package com.biznessapps.food_ordering.locations:
//            LocationsMapActivity

class this._cls0
    implements android.view.ons.LocationsMapActivity._cls2
{

    final LocationsMapActivity this$0;

    public void onClick(View view)
    {
        view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_LOCATIONS"));
        view.putExtra("TAB_FRAGMENT", "FO_LOCATIONS");
        view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.onsMapActivity.getString));
        view.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
        startActivity(view);
        finish();
    }

    ()
    {
        this$0 = LocationsMapActivity.this;
        super();
    }
}
