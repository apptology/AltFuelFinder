// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.entities;

import com.biznessapps.common.entities.CommonEntity;

public class TaxEntity extends CommonEntity
{

    public static final int FLAT_TAX = 1;
    public static final int RATE_TAX = 0;
    private static final long serialVersionUID = 0x3dc6de12cf7b2726L;
    private float amount;
    private float caclulatedTax;
    private String currencySign;
    private int type;

    public TaxEntity()
    {
    }

    public float getAmount()
    {
        return amount;
    }

    public float getCaclulatedTax()
    {
        return caclulatedTax;
    }

    public String getCurrencySign()
    {
        return currencySign;
    }

    public int getType()
    {
        return type;
    }

    public void setAmount(float f)
    {
        amount = f;
    }

    public void setCaclulatedTax(float f)
    {
        caclulatedTax = f;
    }

    public void setCurrencySign(String s)
    {
        currencySign = s;
    }

    public void setType(int i)
    {
        type = i;
    }
}
