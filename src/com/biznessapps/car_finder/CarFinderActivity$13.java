// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.car_finder;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

// Referenced classes of package com.biznessapps.car_finder:
//            CarFinderActivity

class this._cls0
    implements LocationListener
{

    final CarFinderActivity this$0;

    public void onLocationChanged(Location location)
    {
        CarFinderActivity.access$602(CarFinderActivity.this, location);
        CarFinderActivity.access$1200(CarFinderActivity.this);
    }

    public void onProviderDisabled(String s)
    {
    }

    public void onProviderEnabled(String s)
    {
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
    }

    ()
    {
        this$0 = CarFinderActivity.this;
        super();
    }
}
