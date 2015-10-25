// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.wheel;

import android.content.Context;

// Referenced classes of package com.biznessapps.widgets.wheel:
//            AbstractWheelTextAdapter

public class DigitalWheelAdapter extends AbstractWheelTextAdapter
{

    private String format;
    private int maxValue;
    private int minValue;

    public DigitalWheelAdapter(Context context, int i, int j)
    {
        this(context, i, j, null);
    }

    public DigitalWheelAdapter(Context context, int i, int j, String s)
    {
        super(context, com.biznessapps.layout.R.layout.wheel_item_row, 0);
        setItemTextResource(com.biznessapps.layout.R.id.description);
        setRange(i, j);
        format = s;
    }

    public int getIndexFromValue(int i)
    {
        return i - minValue;
    }

    public CharSequence getItemText(int i)
    {
        if (i >= 0 && i < getItemsCount())
        {
            i = minValue + i;
            if (format != null)
            {
                return String.format(format, new Object[] {
                    Integer.valueOf(i)
                });
            } else
            {
                return Integer.toString(i);
            }
        } else
        {
            return null;
        }
    }

    public int getItemsCount()
    {
        return (maxValue - minValue) + 1;
    }

    public int getMaxIndex()
    {
        return getIndexFromValue(getMaxValue());
    }

    public int getMaxValue()
    {
        return maxValue;
    }

    public int getMinValue()
    {
        return minValue;
    }

    public int getValueFromIndex(int i)
    {
        return minValue + i;
    }

    public void setMaxValue(int i)
    {
        maxValue = i;
    }

    public void setMinValue(int i)
    {
        minValue = i;
    }

    public void setRange(int i, int j)
    {
        minValue = i;
        maxValue = j;
    }
}
