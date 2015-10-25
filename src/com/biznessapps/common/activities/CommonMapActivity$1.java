// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.activities;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.biznessapps.common.entities.MapEntity;
import com.google.android.gms.maps.model.Marker;
import java.util.Map;

// Referenced classes of package com.biznessapps.common.activities:
//            CommonMapActivity

class tLayoutInflater
    implements com.google.android.gms.maps.Adapter
{

    final CommonMapActivity this$0;
    private final View view;

    public View getInfoContents(Marker marker)
    {
        return null;
    }

    public View getInfoWindow(Marker marker)
    {
        marker = (MapEntity)markersHashMap.get(marker);
        ((TextView)view.findViewById(com.biznessapps.layout.Activity._cls1.view)).setText(marker.getGeneralInfo());
        return view;
    }

    r()
    {
        this$0 = CommonMapActivity.this;
        super();
        view = getLayoutInflater().inflate(com.biznessapps.layout.alog, null);
    }
}
