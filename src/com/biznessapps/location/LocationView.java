// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.location;

import android.content.Intent;
import android.os.Bundle;
import com.biznessapps.api.AppCore;
import com.biznessapps.common.activities.CommonMapActivity;
import com.biznessapps.common.entities.AnalyticEntity;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.entities.MapEntity;
import com.biznessapps.coupons.CouponEntity;
import com.biznessapps.utils.ViewUtils;

public class LocationView extends CommonMapActivity
{

    public LocationView()
    {
    }

    protected void defineMapItemClickAction(MapEntity mapentity)
    {
        ViewUtils.openGoogleMap(getApplicationContext(), mapentity.getLongitude(), mapentity.getLatitude());
    }

    protected AnalyticEntity getAnalyticData()
    {
        AnalyticEntity analyticentity = new AnalyticEntity();
        AppSettings appsettings = AppCore.getInstance().getAppSettings();
        analyticentity.setContext(getApplicationContext());
        analyticentity.setAccountId(appsettings.getGaAccountId());
        analyticentity.setAppId(appsettings.getAppId());
        analyticentity.setTabId(getIntent().getStringExtra("TAB_SPECIAL_ID"));
        return analyticentity;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.location_layout;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        addPins(((CouponEntity)getIntent().getSerializableExtra("COUPON_EXTRA")).getLocations());
    }
}
