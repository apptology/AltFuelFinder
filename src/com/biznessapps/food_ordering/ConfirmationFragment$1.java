// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering;

import android.content.Intent;
import android.view.View;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.common.activities.CommonFragmentActivity;

// Referenced classes of package com.biznessapps.food_ordering:
//            ConfirmationFragment

class this._cls0
    implements android.view.mationFragment._cls1
{

    final ConfirmationFragment this$0;

    public void onClick(View view)
    {
        view = getIntent().getStringExtra("LOCATION_ID");
        if (view != null)
        {
            Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_CATEGORIES"));
            intent.putExtra("TAB_FRAGMENT", "FO_CATEGORIES");
            intent.putExtra("TAB_LABEL", getString(com.biznessapps.layout.ment.getString));
            intent.putExtra("BG_URL_EXTRA", ConfirmationFragment.access$000(ConfirmationFragment.this));
            intent.putExtra("TIMESTAMP_EXTRA", getIntent().getLongExtra("TIMESTAMP_EXTRA", 0L));
            intent.putExtra("LOCATION_ID", view);
            intent.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
            startActivity(intent);
            return;
        } else
        {
            getHoldActivity().finish();
            return;
        }
    }

    ity()
    {
        this$0 = ConfirmationFragment.this;
        super();
    }
}
