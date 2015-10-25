// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.entities;

import com.biznessapps.common.entities.CommonListEntity;
import java.util.List;

public class OrderEntity extends CommonListEntity
{
    public static class Size
    {

        private String id;
        private float price;
        private String sizeName;

        public String getId()
        {
            return id;
        }

        public float getPrice()
        {
            return price;
        }

        public String getSizeName()
        {
            return sizeName;
        }

        public void setId(String s)
        {
            id = s;
        }

        public void setPrice(float f)
        {
            price = f;
        }

        public void setSizeName(String s)
        {
            sizeName = s;
        }

        public Size()
        {
        }
    }


    private static final long serialVersionUID = 0x3b2166f1f6ac8db2L;
    private String categoryId;
    private String deliveryDate;
    private boolean isTaxExempted;
    private List options;
    private float price;
    private int quantity;
    private List sizes;
    private String thumbnail;

    public OrderEntity()
    {
    }

    public String getCategoryId()
    {
        return categoryId;
    }

    public String getDeliveryDate()
    {
        return deliveryDate;
    }

    public List getOptions()
    {
        return options;
    }

    public float getPrice()
    {
        return price;
    }

    public int getQuantity()
    {
        return quantity;
    }

    public List getSizes()
    {
        return sizes;
    }

    public String getThumbnail()
    {
        return thumbnail;
    }

    public boolean isTaxExempted()
    {
        return isTaxExempted;
    }

    public void setCategoryId(String s)
    {
        categoryId = s;
    }

    public void setDeliveryDate(String s)
    {
        deliveryDate = s;
    }

    public void setOptions(List list)
    {
        options = list;
    }

    public void setPrice(float f)
    {
        price = f;
    }

    public void setQuantity(int i)
    {
        quantity = i;
    }

    public void setSizes(List list)
    {
        sizes = list;
    }

    public void setTaxExempted(boolean flag)
    {
        isTaxExempted = flag;
    }

    public void setThumbnail(String s)
    {
        thumbnail = s;
    }
}
