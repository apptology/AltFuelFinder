// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.entities;

import android.content.Context;

public class AnalyticEntity
{

    private String accountId;
    private String appId;
    private String catId;
    private Context context;
    private String itemId;
    private String tabId;

    public AnalyticEntity()
    {
    }

    public String getAccountId()
    {
        return accountId;
    }

    public String getAppId()
    {
        return appId;
    }

    public String getCatId()
    {
        return catId;
    }

    public Context getContext()
    {
        return context;
    }

    public String getItemId()
    {
        return itemId;
    }

    public String getTabId()
    {
        return tabId;
    }

    public void setAccountId(String s)
    {
        accountId = s;
    }

    public void setAppId(String s)
    {
        appId = s;
    }

    public void setCatId(String s)
    {
        catId = s;
    }

    public void setContext(Context context1)
    {
        context = context1;
    }

    public void setItemId(String s)
    {
        itemId = s;
    }

    public void setTabId(String s)
    {
        tabId = s;
    }
}
