// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.menu_items;

import android.app.Activity;
import android.content.Intent;
import com.biznessapps.api.CachingManager;
import com.biznessapps.common.entities.AnalyticEntity;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.info_items.InfoDetailFragment;
import com.biznessapps.utils.json.JsonParser;

public class MenuItemDetailFragment extends InfoDetailFragment
{

    private String menuItemDetailId;

    public MenuItemDetailFragment()
    {
    }

    protected boolean canUseCachedData()
    {
        infoItem = (CommonListEntity)cacher().getData((new StringBuilder()).append("MENU_ITEM_DETAIL_PROPERTY").append(menuItemDetailId).toString());
        return infoItem != null;
    }

    protected AnalyticEntity getAnalyticData()
    {
        AnalyticEntity analyticentity = super.getAnalyticData();
        analyticentity.setCatId(getIntent().getStringExtra("SECTION_ID"));
        analyticentity.setItemId(getIntent().getStringExtra("MENU_ITEM_DETAIL_ID"));
        return analyticentity;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.info_detail_layout;
    }

    protected String getRequestUrl()
    {
        return String.format("menu_item_detail.php?id=%s", new Object[] {
            menuItemDetailId
        });
    }

    protected void preDataLoading(Activity activity)
    {
        super.preDataLoading(activity);
        menuItemDetailId = activity.getIntent().getStringExtra("MENU_ITEM_DETAIL_ID");
    }

    protected boolean tryParseData(String s)
    {
        infoItem = JsonParser.parseInfo(s);
        return cacher().saveData((new StringBuilder()).append("MENU_ITEM_DETAIL_PROPERTY").append(menuItemDetailId).toString(), infoItem);
    }
}
