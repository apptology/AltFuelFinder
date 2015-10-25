// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.flexible_counter;

import android.view.View;
import android.widget.TextView;
import java.util.List;

// Referenced classes of package com.biznessapps.flexible_counter:
//            FlexibleCounterFragment

class val.counterView
    implements android.view.leCounterFragment._cls4
{

    final FlexibleCounterFragment this$0;
    final TextView val$counterView;
    final int val$currentPos;

    public void onClick(View view)
    {
        int i = ((Integer)FlexibleCounterFragment.access$100(FlexibleCounterFragment.this).get(val$currentPos)).intValue();
        FlexibleCounterFragment.access$100(FlexibleCounterFragment.this).set(val$currentPos, Integer.valueOf(i - 1));
        val$counterView.setText((new StringBuilder()).append("").append(FlexibleCounterFragment.access$100(FlexibleCounterFragment.this).get(val$currentPos)).toString());
    }

    ()
    {
        this$0 = final_flexiblecounterfragment;
        val$currentPos = i;
        val$counterView = TextView.this;
        super();
    }
}
