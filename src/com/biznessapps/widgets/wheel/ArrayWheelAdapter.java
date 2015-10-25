// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.wheel;

import android.content.Context;

// Referenced classes of package com.biznessapps.widgets.wheel:
//            AbstractWheelTextAdapter

public class ArrayWheelAdapter extends AbstractWheelTextAdapter
{

    private Object items[];

    public ArrayWheelAdapter(Context context, Object aobj[])
    {
        super(context);
        items = aobj;
    }

    public CharSequence getItemText(int i)
    {
        if (i >= 0 && i < items.length)
        {
            Object obj = items[i];
            if (obj instanceof CharSequence)
            {
                return (CharSequence)obj;
            } else
            {
                return obj.toString();
            }
        } else
        {
            return null;
        }
    }

    public int getItemsCount()
    {
        return items.length;
    }
}
