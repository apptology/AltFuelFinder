// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.menu_items;

import com.biznessapps.common.entities.CommonListEntity;

public class MenuSectionEntities extends CommonListEntity
{

    private static final String ZERO_VALUE = "0.00";
    private static final long serialVersionUID = 0x34888941be88960bL;
    private String price;

    public MenuSectionEntities()
    {
    }

    public String getPrice()
    {
        return price;
    }

    public void setPrice(String s)
    {
        if (s == null)
        {
            s = "0.00";
        }
        price = s;
    }
}
