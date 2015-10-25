// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.wheel;


public class ItemsRange
{

    private int count;
    private int first;

    public ItemsRange()
    {
        this(0, 0);
    }

    public ItemsRange(int i, int j)
    {
        first = i;
        count = j;
    }

    public boolean contains(int i)
    {
        return i >= getFirst() && i <= getLast();
    }

    public int getCount()
    {
        return count;
    }

    public int getFirst()
    {
        return first;
    }

    public int getLast()
    {
        return (getFirst() + getCount()) - 1;
    }
}
