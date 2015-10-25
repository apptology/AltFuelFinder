// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation.entities;

import com.biznessapps.common.entities.CommonListEntity;

public class ReservationTimeItem extends CommonListEntity
{

    private static final long serialVersionUID = 0x32c2e8501f7de510L;
    protected int from;
    protected int to;

    public ReservationTimeItem()
    {
    }

    public int getFrom()
    {
        return from;
    }

    public int getTo()
    {
        return to;
    }

    public void setFrom(int i)
    {
        from = i;
    }

    public void setTo(int i)
    {
        to = i;
    }
}
