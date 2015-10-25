// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.location;

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.LatLngBounds;

// Referenced classes of package com.biznessapps.location:
//            MapUtils

static final class val.map
    implements com.google.android.gms.maps.nMapLoadedCallback
{

    final LatLngBounds val$bounds;
    final GoogleMap val$map;

    public void onMapLoaded()
    {
        com.google.android.gms.maps.CameraUpdate cameraupdate = CameraUpdateFactory.newLatLngBounds(val$bounds, 50);
        val$map.moveCamera(cameraupdate);
        val$map.animateCamera(cameraupdate);
    }

    p(LatLngBounds latlngbounds, GoogleMap googlemap)
    {
        val$bounds = latlngbounds;
        val$map = googlemap;
        super();
    }
}
