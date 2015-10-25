// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.car_finder;

import android.view.View;
import android.widget.Button;
import com.google.android.gms.maps.GoogleMap;

// Referenced classes of package com.biznessapps.car_finder:
//            CarFinderActivity

class val.mapModeButton
    implements android.view.
{

    final CarFinderActivity this$0;
    final Button val$hybModeButton;
    final Button val$mapModeButton;

    public void onClick(View view)
    {
        val$hybModeButton.setSelected(true);
        val$mapModeButton.setSelected(false);
        CarFinderActivity.access$300(CarFinderActivity.this).setMapType(4);
    }

    ()
    {
        this$0 = final_carfinderactivity;
        val$hybModeButton = button;
        val$mapModeButton = Button.this;
        super();
    }
}
