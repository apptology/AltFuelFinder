// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.car_finder;

import android.location.Location;
import android.view.View;
import android.view.ViewGroup;

// Referenced classes of package com.biznessapps.car_finder:
//            CarFinderActivity

class this._cls0
    implements android.view.
{

    final CarFinderActivity this$0;

    public void onClick(View view)
    {
        if (CarFinderActivity.access$600(CarFinderActivity.this) != null)
        {
            Location _tmp = CarFinderActivity.access$402(new Location(CarFinderActivity.access$600(CarFinderActivity.this)));
            CarFinderActivity.access$1102(CarFinderActivity.this, true);
            CarFinderActivity.access$102(CarFinderActivity.this, System.currentTimeMillis());
            CarFinderActivity.access$1200(CarFinderActivity.this);
            CarFinderActivity.access$1300(CarFinderActivity.this).setVisibility(0);
            CarFinderActivity.access$1400(CarFinderActivity.this, 1);
        }
    }

    ()
    {
        this$0 = CarFinderActivity.this;
        super();
    }
}
