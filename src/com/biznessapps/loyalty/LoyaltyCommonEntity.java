// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import com.biznessapps.common.entities.CommonListEntity;

public abstract class LoyaltyCommonEntity extends CommonListEntity
{

    private static final long serialVersionUID = 0xc8a1a1d43ef47704L;

    public LoyaltyCommonEntity()
    {
    }

    public abstract int getAwardedValue();

    public abstract int getTotalValue();

    public abstract void setAwardedValue(int i);
}
