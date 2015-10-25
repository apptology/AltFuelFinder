// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.car_finder;

import android.location.Location;
import android.view.View;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.car_finder:
//            CarFinderActivity

class this._cls0
    implements android.view.
{

    final CarFinderActivity this$0;

    public void onClick(View view)
    {
        if (CarFinderActivity.access$400() != null)
        {
            ViewUtils.openGoogleMap(getApplicationContext(), (new StringBuilder()).append("").append(CarFinderActivity.access$400().getLongitude()).toString(), (new StringBuilder()).append("").append(CarFinderActivity.access$400().getLatitude()).toString());
        }
    }

    ()
    {
        this$0 = CarFinderActivity.this;
        super();
    }
}
