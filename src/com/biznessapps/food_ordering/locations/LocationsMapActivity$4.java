// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.locations;

import com.biznessapps.common.entities.MapEntity;
import com.google.android.gms.maps.model.Marker;
import java.util.Map;

// Referenced classes of package com.biznessapps.food_ordering.locations:
//            LocationsMapActivity

class this._cls0
    implements com.google.android.gms.maps.Listener
{

    final LocationsMapActivity this$0;

    public boolean onMarkerClick(Marker marker)
    {
        marker = (MapEntity)LocationsMapActivity.access$300(LocationsMapActivity.this).get(marker);
        defineMapItemClickAction(marker);
        return false;
    }

    ()
    {
        this$0 = LocationsMapActivity.this;
        super();
    }
}
