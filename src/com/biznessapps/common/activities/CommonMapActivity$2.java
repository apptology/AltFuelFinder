// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.activities;

import com.biznessapps.common.entities.MapEntity;
import com.google.android.gms.maps.model.Marker;
import java.util.Map;

// Referenced classes of package com.biznessapps.common.activities:
//            CommonMapActivity

class this._cls0
    implements com.google.android.gms.maps.owClickListener
{

    final CommonMapActivity this$0;

    public void onInfoWindowClick(Marker marker)
    {
        marker = (MapEntity)markersHashMap.get(marker);
        defineMapItemClickAction(marker);
    }

    kListener()
    {
        this$0 = CommonMapActivity.this;
        super();
    }
}
