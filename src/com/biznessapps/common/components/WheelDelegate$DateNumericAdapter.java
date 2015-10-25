// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.components;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.biznessapps.widgets.wheel.DigitalWheelAdapter;

// Referenced classes of package com.biznessapps.common.components:
//            WheelDelegate

private class currentValue extends DigitalWheelAdapter
{

    int currentItem;
    int currentValue;
    final WheelDelegate this$0;

    public View getItem(int i, View view, ViewGroup viewgroup)
    {
        currentItem = i;
        return super.getItem(i, view, viewgroup);
    }

    public (Context context, int i, int j, int k)
    {
        this$0 = WheelDelegate.this;
        super(context, i, j);
        currentValue = k;
    }
}
