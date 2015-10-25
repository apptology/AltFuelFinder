// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reseller;

import android.text.Editable;
import android.text.TextWatcher;
import com.biznessapps.widgets.ExtendedViewPager;

// Referenced classes of package com.biznessapps.reseller:
//            ResellerDashboardFragment, ResellerInfo

class this._cls0
    implements TextWatcher
{

    final ResellerDashboardFragment this$0;

    public void afterTextChanged(Editable editable)
    {
        ResellerDashboardFragment.access$302(ResellerDashboardFragment.this, editable.toString());
        ResellerDashboardFragment.access$002(ResellerDashboardFragment.this, 0);
        editable = new ewPagerAdapter(ResellerDashboardFragment.this, ResellerDashboardFragment.access$600(ResellerDashboardFragment.this, ResellerDashboardFragment.access$400(ResellerDashboardFragment.this).getApps(), ResellerDashboardFragment.access$300(ResellerDashboardFragment.this), ResellerDashboardFragment.access$500(ResellerDashboardFragment.this)));
        ResellerDashboardFragment.access$700(ResellerDashboardFragment.this).setAdapter(editable);
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    ewPagerAdapter()
    {
        this$0 = ResellerDashboardFragment.this;
        super();
    }
}
