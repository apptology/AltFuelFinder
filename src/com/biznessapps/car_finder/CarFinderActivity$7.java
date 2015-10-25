// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.car_finder;

import android.location.Location;
import android.view.View;
import com.biznessapps.utils.ViewUtils;
import java.util.Locale;

// Referenced classes of package com.biznessapps.car_finder:
//            CarFinderActivity

class this._cls0
    implements android.view.
{

    final CarFinderActivity this$0;

    public void onClick(View view)
    {
        view = getString(com.biznessapps.layout.ation);
        String s = getString(com.biznessapps.layout.email_message);
        s = (new StringBuilder()).append(s).append("\n").append(String.format(Locale.US, "http://maps.google.com/maps?q=%f,%f", new Object[] {
            Double.valueOf(CarFinderActivity.access$600(CarFinderActivity.this).getLatitude()), Double.valueOf(CarFinderActivity.access$600(CarFinderActivity.this).getLongitude())
        })).toString();
        ViewUtils.email(CarFinderActivity.this, new String[] {
            ""
        }, view, s);
    }

    ()
    {
        this$0 = CarFinderActivity.this;
        super();
    }
}
