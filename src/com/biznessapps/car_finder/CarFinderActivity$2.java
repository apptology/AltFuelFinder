// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.car_finder;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.biznessapps.car_finder:
//            CarFinderActivity, ChooseTimerActivity

class this._cls0
    implements android.view.
{

    final CarFinderActivity this$0;

    public void onClick(View view)
    {
        view = new Intent(getApplicationContext(), com/biznessapps/car_finder/ChooseTimerActivity);
        startActivityForResult(view, 20);
    }

    ()
    {
        this$0 = CarFinderActivity.this;
        super();
    }
}
