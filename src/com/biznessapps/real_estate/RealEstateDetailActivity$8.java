// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.real_estate;

import android.view.View;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.real_estate:
//            RealEstateDetailActivity, RealEstateEntity

class this._cls0
    implements android.view.tailActivity._cls8
{

    final RealEstateDetailActivity this$0;

    public void onClick(View view)
    {
        if (RealEstateDetailActivity.access$400(RealEstateDetailActivity.this) != null)
        {
            ViewUtils.openGoogleMap(getApplicationContext(), RealEstateDetailActivity.access$400(RealEstateDetailActivity.this).getLongitude(), RealEstateDetailActivity.access$400(RealEstateDetailActivity.this).getLatitude());
        }
    }

    ()
    {
        this$0 = RealEstateDetailActivity.this;
        super();
    }
}
