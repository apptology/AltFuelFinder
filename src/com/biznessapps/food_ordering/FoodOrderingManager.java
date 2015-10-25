// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering;

import com.biznessapps.food_ordering.entities.CartEntity;
import com.biznessapps.food_ordering.entities.CommonInfo;
import com.biznessapps.food_ordering.entities.RestaurantEntity;
import com.biznessapps.location.entities.LocationEntity;
import java.util.List;

public class FoodOrderingManager
{

    private static FoodOrderingManager instance;
    private CartEntity cart;
    private LocationEntity chosenLocation;
    private CommonInfo commonInfo;
    private List locations;
    private List pastOrders;
    private RestaurantEntity restaurantEntity;
    private List taxes;

    private FoodOrderingManager()
    {
        commonInfo = new CommonInfo();
        cart = new CartEntity();
    }

    public static FoodOrderingManager getInstance()
    {
        if (instance == null)
        {
            instance = new FoodOrderingManager();
        }
        return instance;
    }

    public CartEntity getCart()
    {
        return cart;
    }

    public LocationEntity getChosenLocation()
    {
        return chosenLocation;
    }

    public CommonInfo getCommonInfo()
    {
        return commonInfo;
    }

    public List getLocations()
    {
        return locations;
    }

    public List getPastOrders()
    {
        return pastOrders;
    }

    public RestaurantEntity getRestaurantEntity()
    {
        return restaurantEntity;
    }

    public List getTaxes()
    {
        return taxes;
    }

    public void setChosenLocation(LocationEntity locationentity)
    {
        chosenLocation = locationentity;
    }

    public void setLocations(List list)
    {
        locations = list;
    }

    public void setPastOrders(List list)
    {
        pastOrders = list;
    }

    public void setRestaurantEntity(RestaurantEntity restaurantentity)
    {
        restaurantEntity = restaurantentity;
    }

    public void setTaxes(List list)
    {
        taxes = list;
    }
}
