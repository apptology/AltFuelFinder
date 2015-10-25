// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.coupons;

import android.content.Intent;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.List;

// Referenced classes of package com.biznessapps.coupons:
//            CouponsListFragment, CouponEntity

public class QrCouponsListFragment extends CouponsListFragment
{

    public QrCouponsListFragment()
    {
    }

    protected boolean canUseCachedData()
    {
        items = (List)cacher().getData((new StringBuilder()).append("COUPONS_LIST_PROPERTY").append(tabId).toString());
        return items != null;
    }

    protected String getRequestUrl()
    {
        return String.format("qrcoupons.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected void startCouponDetailActivity(CouponEntity couponentity)
    {
        CommonFragmentActivity commonfragmentactivity = getHoldActivity();
        if (commonfragmentactivity != null)
        {
            Intent intent = new Intent(commonfragmentactivity.getApplicationContext(), ActivitySelector.getActivityClass("COUPON_DETAIL_FRAGMENT"));
            if (couponentity != null && StringUtils.isNotEmpty(couponentity.getId()))
            {
                intent.putExtra("COUPON_EXTRA", couponentity);
                intent.putExtra("TAB_UNIQUE_ID", commonfragmentactivity.getTabId());
                intent.putExtra("TAB_SPECIAL_ID", commonfragmentactivity.getIntent().getStringExtra("TAB_SPECIAL_ID"));
                intent.putExtra("TAB_FRAGMENT", "COUPON_DETAIL_FRAGMENT");
                intent.putExtra("QR_COUPON_TYPE", true);
                intent.putExtra("BG_URL_EXTRA", bgUrl);
                commonfragmentactivity.startActivityForResult(intent, 1);
            }
        }
    }

    protected boolean tryParseData(String s)
    {
        items = doCouponsPrehandling(JsonParser.parseCoupons(s));
        cacher().saveData((new StringBuilder()).append("COUPONS_LIST_PROPERTY").append(tabId).toString(), items);
        return true;
    }
}
