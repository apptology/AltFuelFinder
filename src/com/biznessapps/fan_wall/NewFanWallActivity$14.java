// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

// Referenced classes of package com.biznessapps.fan_wall:
//            NewFanWallActivity

class this._cls0
    implements LocationListener
{

    final NewFanWallActivity this$0;

    public void onLocationChanged(Location location)
    {
        NewFanWallActivity.access$1402(NewFanWallActivity.this, location);
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
        this$0 = NewFanWallActivity.this;
        super();
    }
}
