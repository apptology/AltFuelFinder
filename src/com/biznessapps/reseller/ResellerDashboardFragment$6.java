// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reseller;

import android.view.View;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.ExtendedViewPager;

// Referenced classes of package com.biznessapps.reseller:
//            ResellerDashboardFragment, ResellerInfo

class this._cls0
    implements android.view.dFragment._cls6
{

    final ResellerDashboardFragment this$0;

    public void onClick(View view)
    {
        ViewUtils.closeKeyboardAndClearFocus(getApplicationContext(), ResellerDashboardFragment.access$200(ResellerDashboardFragment.this));
        view = new ewPagerAdapter(ResellerDashboardFragment.this, ResellerDashboardFragment.access$600(ResellerDashboardFragment.this, ResellerDashboardFragment.access$400(ResellerDashboardFragment.this).getApps(), ResellerDashboardFragment.access$300(ResellerDashboardFragment.this), ResellerDashboardFragment.access$500(ResellerDashboardFragment.this)));
        ResellerDashboardFragment.access$700(ResellerDashboardFragment.this).setAdapter(view);
        ResellerDashboardFragment.access$700(ResellerDashboardFragment.this).setCurrentItem(ResellerDashboardFragment.access$000(ResellerDashboardFragment.this));
    }

    ewPagerAdapter()
    {
        this$0 = ResellerDashboardFragment.this;
        super();
    }
}
