// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.car_finder;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.widget.ImageButton;
import android.widget.TextView;

// Referenced classes of package com.biznessapps.car_finder:
//            CarFinderActivity

class this._cls0 extends Handler
{

    final CarFinderActivity this$0;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 2: // '\002'
            if (CarFinderActivity.access$1600(CarFinderActivity.this) >= 0)
            {
                CarFinderActivity.access$1700(CarFinderActivity.this).setTextColor(-1);
                CarFinderActivity.access$1800(CarFinderActivity.this).setImageResource(com.biznessapps.layout.);
            } else
            {
                CarFinderActivity.access$1800(CarFinderActivity.this).setImageResource(com.biznessapps.layout.);
                CarFinderActivity.access$1700(CarFinderActivity.this).setTextColor(0xffff0000);
                CarFinderActivity.access$1900(CarFinderActivity.this);
            }
            CarFinderActivity.access$1700(CarFinderActivity.this).setText(CarFinderActivity.access$2000(CarFinderActivity.this, CarFinderActivity.access$1600(CarFinderActivity.this)));
            int _tmp = CarFinderActivity.access$1610(CarFinderActivity.this);
            CarFinderActivity.access$1400(CarFinderActivity.this, 2);
            return;

        case 1: // '\001'
            CarFinderActivity.access$2200(CarFinderActivity.this).setText(CarFinderActivity.access$2000(CarFinderActivity.this, CarFinderActivity.access$2100(CarFinderActivity.this)));
            int _tmp1 = CarFinderActivity.access$2108(CarFinderActivity.this);
            CarFinderActivity.access$1400(CarFinderActivity.this, 1);
            return;
        }
    }

    (Looper looper)
    {
        this$0 = CarFinderActivity.this;
        super(looper);
    }
}
