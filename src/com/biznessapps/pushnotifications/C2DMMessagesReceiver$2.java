// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.pushnotifications;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

// Referenced classes of package com.biznessapps.pushnotifications:
//            C2DMMessagesReceiver

class this._cls0
    implements LocationListener
{

    final C2DMMessagesReceiver this$0;

    public void onLocationChanged(Location location)
    {
        if (C2DMMessagesReceiver.access$300() == null)
        {
            Location _tmp = C2DMMessagesReceiver.access$302(location);
            C2DMMessagesReceiver.access$400(C2DMMessagesReceiver.this);
        } else
        if (C2DMMessagesReceiver.access$300().distanceTo(location) > 100F)
        {
            Location _tmp1 = C2DMMessagesReceiver.access$302(location);
            C2DMMessagesReceiver.access$400(C2DMMessagesReceiver.this);
            return;
        }
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
        this$0 = C2DMMessagesReceiver.this;
        super();
    }
}
