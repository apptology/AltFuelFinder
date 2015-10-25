// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.entities;

import java.util.List;

public class CommonInfo
{
    public static class PaymentMethod
    {

        public static final int CARD_TYPE = 5;
        public static final int CASH_TYPE = 4;
        private String title;
        private int type;

        public String getTitle()
        {
            return title;
        }

        public int getType()
        {
            return type;
        }

        public void setTitle(String s)
        {
            title = s;
        }

        public void setType(int i)
        {
            type = i;
        }

        public PaymentMethod()
        {
        }
    }


    private static final String GRID_VIEW_MODE = "grid";
    private boolean allowTips;
    private String background;
    private boolean hasNavigationBar;
    private List paymentGateways;
    private String viewMode;

    public CommonInfo()
    {
    }

    public boolean allowTips()
    {
        return allowTips;
    }

    public String getBackground()
    {
        return background;
    }

    public List getPaymentGateways()
    {
        return paymentGateways;
    }

    public void hasNavigationBar(boolean flag)
    {
        hasNavigationBar = flag;
    }

    public boolean isGridViewMode()
    {
        return "grid".equalsIgnoreCase(viewMode);
    }

    public boolean isHasNavigationBar()
    {
        return hasNavigationBar;
    }

    public void setAllowTips(boolean flag)
    {
        allowTips = flag;
    }

    public void setBackground(String s)
    {
        background = s;
    }

    public void setPaymentGateways(List list)
    {
        paymentGateways = list;
    }

    public void setViewMode(String s)
    {
        viewMode = s;
    }
}
