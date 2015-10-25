// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.real_estate;

import android.content.Intent;
import android.view.View;
import com.biznessapps.api.ActivitySelector;

// Referenced classes of package com.biznessapps.real_estate:
//            RealEstateDetailActivity

class this._cls0
    implements android.view.ailActivity._cls10
{

    final RealEstateDetailActivity this$0;

    public void onClick(View view)
    {
        view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("RealEstatePropertyViewController"));
        view.putExtra("ITEM_EXTRA", RealEstateDetailActivity.access$400(RealEstateDetailActivity.this));
        view.putExtra("TAB_UNIQUE_ID", getTabId());
        view.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
        view.putExtra("TAB_FRAGMENT", "RealEstatePropertyViewController");
        view.putExtra("TAB_LABEL", getIntent().getStringExtra("TAB_LABEL"));
        startActivity(view);
    }

    ()
    {
        this$0 = RealEstateDetailActivity.this;
        super();
    }
}
