// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.entities;

import com.biznessapps.common.entities.CommonListEntity;

public class RestaurantEntity extends CommonListEntity
{

    private static final int WEEK_NUMBER = 7;
    private static final long serialVersionUID = 0xa8cd2dcbc6c9393fL;
    private float convenienceFee;
    private boolean convenienceFeeTaxable;
    private String cuisineType;
    private int deliveryDays;
    private float deliveryFee;
    private boolean deliveryFeeTaxable;
    private float deliveryMin;
    private float deliveryRadius;
    private float freeDeliveryAmount;
    private boolean isDelivery;
    private boolean isDineIn;
    private boolean isTakeout;
    private int leadTime;
    private int takeoutDays;

    public RestaurantEntity()
    {
        takeoutDays = 7;
        deliveryDays = 7;
    }

    public float getConvenienceFee()
    {
        return convenienceFee;
    }

    public String getCuisineType()
    {
        return cuisineType;
    }

    public int getDeliveryDays()
    {
        return deliveryDays;
    }

    public float getDeliveryFee()
    {
        return deliveryFee;
    }

    public float getDeliveryMin()
    {
        return deliveryMin;
    }

    public float getDeliveryRadius()
    {
        return deliveryRadius;
    }

    public float getFreeDeliveryAmount()
    {
        return freeDeliveryAmount;
    }

    public int getLeadTime()
    {
        return leadTime;
    }

    public int getTakeoutDays()
    {
        return takeoutDays;
    }

    public boolean isConvenienceFeeTaxable()
    {
        return convenienceFeeTaxable;
    }

    public boolean isDelivery()
    {
        return isDelivery;
    }

    public boolean isDeliveryFeeTaxable()
    {
        return deliveryFeeTaxable;
    }

    public boolean isDineIn()
    {
        return isDineIn;
    }

    public boolean isTakeout()
    {
        return isTakeout;
    }

    public void setConvenienceFee(float f)
    {
        convenienceFee = f;
    }

    public void setConvenienceFeeTaxable(boolean flag)
    {
        convenienceFeeTaxable = flag;
    }

    public void setCuisineType(String s)
    {
        cuisineType = s;
    }

    public void setDelivery(boolean flag)
    {
        isDelivery = flag;
    }

    public void setDeliveryDays(int i)
    {
        deliveryDays = i;
    }

    public void setDeliveryFee(float f)
    {
        deliveryFee = f;
    }

    public void setDeliveryFeeTaxable(boolean flag)
    {
        deliveryFeeTaxable = flag;
    }

    public void setDeliveryMin(float f)
    {
        deliveryMin = f;
    }

    public void setDeliveryRadius(float f)
    {
        deliveryRadius = f;
    }

    public void setDineIn(boolean flag)
    {
        isDineIn = flag;
    }

    public void setFreeDeliveryAmount(float f)
    {
        freeDeliveryAmount = f;
    }

    public void setLeadTime(int i)
    {
        leadTime = i;
    }

    public void setTakeout(boolean flag)
    {
        isTakeout = flag;
    }

    public void setTakeoutDays(int i)
    {
        takeoutDays = i;
    }
}
