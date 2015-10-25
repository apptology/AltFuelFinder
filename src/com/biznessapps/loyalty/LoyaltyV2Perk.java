// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import com.biznessapps.common.entities.CommonEntity;

public class LoyaltyV2Perk extends CommonEntity
{

    private static final long serialVersionUID = 0xe236bab0ea889be4L;
    public String gaugeIcon;
    public boolean isAvailable;
    public boolean isConsumed;
    public boolean reused;
    public int totalPoints;

    public LoyaltyV2Perk()
    {
        isConsumed = false;
        isAvailable = false;
    }
}
