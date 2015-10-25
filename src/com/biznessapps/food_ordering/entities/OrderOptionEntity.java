// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.entities;

import com.biznessapps.common.entities.CommonListEntity;

public class OrderOptionEntity extends CommonListEntity
{

    private static final long serialVersionUID = 0x8ca11d98cecae984L;
    private float charges;
    private String group;
    private String id;
    private boolean isRequired;
    private boolean isShown;
    private int max;
    private int min;
    private String name;

    public OrderOptionEntity()
    {
    }

    public float getCharges()
    {
        return charges;
    }

    public String getGroup()
    {
        return group;
    }

    public String getId()
    {
        return id;
    }

    public int getMax()
    {
        return max;
    }

    public int getMin()
    {
        return min;
    }

    public String getName()
    {
        return name;
    }

    public boolean isRequired()
    {
        return isRequired;
    }

    public boolean isShown()
    {
        return isShown;
    }

    public void setCharges(float f)
    {
        charges = f;
    }

    public void setGroup(String s)
    {
        group = s;
    }

    public void setId(String s)
    {
        id = s;
    }

    public void setMax(int i)
    {
        max = i;
    }

    public void setMin(int i)
    {
        min = i;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setRequired(boolean flag)
    {
        isRequired = flag;
    }

    public void setShown(boolean flag)
    {
        isShown = flag;
    }
}
