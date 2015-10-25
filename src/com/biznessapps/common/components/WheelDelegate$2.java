// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.components;

import android.view.View;
import android.widget.TextView;
import com.biznessapps.widgets.wheel.WheelView;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.biznessapps.common.components:
//            WheelDelegate, OnTargetChangedListener

class val.labels
    implements android.view.ener
{

    final WheelDelegate this$0;
    final List val$labels;
    final boolean val$useCalendarMode;

    public void onClick(View view)
    {
        if (val$useCalendarMode)
        {
            view = Calendar.getInstance();
            view.set(1, (view.get(1) - 114) + WheelDelegate.access$000(WheelDelegate.this).getCurrentItem());
            view.set(2, WheelDelegate.access$100(WheelDelegate.this).getCurrentItem());
            view.set(5, WheelDelegate.access$200(WheelDelegate.this).getCurrentItem() + 1);
            view = (new SimpleDateFormat(WheelDelegate.access$400(WheelDelegate.this), Locale.getDefault())).format(view.getTime());
        } else
        {
            view = (String)val$labels.get(WheelDelegate.access$100(WheelDelegate.this).getCurrentItem());
        }
        if (WheelDelegate.access$500(WheelDelegate.this) != null)
        {
            WheelDelegate.access$500(WheelDelegate.this).onChanged(WheelDelegate.access$600(WheelDelegate.this).getText().toString(), view);
        }
        WheelDelegate.access$600(WheelDelegate.this).setText(view);
        hide();
    }

    istener()
    {
        this$0 = final_wheeldelegate;
        val$useCalendarMode = flag;
        val$labels = List.this;
        super();
    }
}
