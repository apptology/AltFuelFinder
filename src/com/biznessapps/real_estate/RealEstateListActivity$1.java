// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.real_estate;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.biznessapps.common.entities.MapEntity;
import com.biznessapps.location.LocationUtils;
import com.google.android.gms.maps.model.Marker;
import java.util.Map;

// Referenced classes of package com.biznessapps.real_estate:
//            RealEstateListActivity, RealEstateEntity

class g
    implements com.google.android.gms.maps.er
{

    final RealEstateListActivity this$0;
    private final View view;

    public View getInfoContents(Marker marker)
    {
        return null;
    }

    public View getInfoWindow(Marker marker)
    {
        marker = (MapEntity)RealEstateListActivity.access$000(RealEstateListActivity.this).get(marker);
        if (marker instanceof RealEstateEntity)
        {
            ((TextView)view.findViewById(com.biznessapps.layout.ty._cls1.view)).setText(((RealEstateEntity)marker).getAddressInfo());
            TextView textview = (TextView)view.findViewById(com.biznessapps.layout.ty._cls1.view);
            LocationUtils.setDistanceValue(getApplicationContext(), textview, marker);
        }
        return view;
    }

    er()
    {
        this$0 = RealEstateListActivity.this;
        super();
        view = getLayoutInflater().inflate(com.biznessapps.layout.dialog, null);
    }
}
