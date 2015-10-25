// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.car_finder;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.biznessapps.common.entities.MapEntity;
import com.biznessapps.utils.DateUtils;
import com.google.android.gms.maps.model.Marker;
import java.util.Date;
import java.util.Map;

// Referenced classes of package com.biznessapps.car_finder:
//            CarFinderActivity

class 
    implements com.google.android.gms.maps.Adapter
{

    final CarFinderActivity this$0;
    private final View view;

    public View getInfoContents(Marker marker)
    {
        return null;
    }

    public View getInfoWindow(Marker marker)
    {
        marker = (MapEntity)CarFinderActivity.access$000(CarFinderActivity.this).get(marker);
        ((TextView)view.findViewById(com.biznessapps.layout.y._cls1.view)).setText(marker.getGeneralInfo());
        if ((marker instanceof rFinderItem) && ((rFinderItem)marker).isCarItem())
        {
            marker = (TextView)view.findViewById(com.biznessapps.layout.w);
            marker.setText(DateUtils.getStandartDateFormat(new Date(CarFinderActivity.access$100(CarFinderActivity.this))));
            marker.setVisibility(0);
        }
        return view;
    }

    rFinderItem()
    {
        this$0 = CarFinderActivity.this;
        super();
        view = getLayoutInflater().inflate(com.biznessapps.layout.alog, null);
    }
}
