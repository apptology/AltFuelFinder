// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account.address;

import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.biznessapps.common.entities.MapEntity;
import com.google.android.gms.maps.model.Marker;
import java.util.Map;

// Referenced classes of package com.biznessapps.food_ordering.account.address:
//            ChooseLocationFragment

class tActivity
    implements com.google.android.gms.maps.er
{

    final ChooseLocationFragment this$0;
    private final View view;

    public View getInfoContents(Marker marker)
    {
        return null;
    }

    public View getInfoWindow(Marker marker)
    {
        marker = (MapEntity)ChooseLocationFragment.access$600(ChooseLocationFragment.this).get(marker);
        ((TextView)view.findViewById(com.biznessapps.layout.ooseLocationFragment._cls5.view)).setText(marker.getAddress1());
        return view;
    }

    ()
    {
        this$0 = ChooseLocationFragment.this;
        super();
        view = getActivity().getLayoutInflater().inflate(com.biznessapps.layout.ser_item, null);
    }
}
