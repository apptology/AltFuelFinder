// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.mortgage;

import com.biznessapps.common.entities.CommonEntity;

public class MortgageEntity extends CommonEntity
{

    private static final long serialVersionUID = 0x2b2aebb280dd08ffL;
    private String interest;
    private boolean isReadOnly;

    public MortgageEntity()
    {
    }

    public String getInterest()
    {
        return interest;
    }

    public boolean isReadOnly()
    {
        return isReadOnly;
    }

    public void setInterest(String s)
    {
        interest = s;
    }

    public void setReadOnly(boolean flag)
    {
        isReadOnly = flag;
    }
}
