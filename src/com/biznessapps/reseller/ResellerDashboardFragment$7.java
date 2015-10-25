// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reseller;

import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.ExtendedViewPager;

// Referenced classes of package com.biznessapps.reseller:
//            ResellerDashboardFragment, ResellerInfo

class val.names
    implements android.widget.stener
{

    final ResellerDashboardFragment this$0;
    final String val$names[];

    public void onItemSelected(AdapterView adapterview, View view, int i, long l)
    {
        ResellerDashboardFragment.access$502(ResellerDashboardFragment.this, i);
        ResellerDashboardFragment.access$800(ResellerDashboardFragment.this).setText(val$names[i]);
        ResellerDashboardFragment.access$002(ResellerDashboardFragment.this, 0);
        ViewUtils.closeKeyboardAndClearFocus(getApplicationContext(), ResellerDashboardFragment.access$200(ResellerDashboardFragment.this));
        adapterview = new ewPagerAdapter(ResellerDashboardFragment.this, ResellerDashboardFragment.access$600(ResellerDashboardFragment.this, ResellerDashboardFragment.access$400(ResellerDashboardFragment.this).getApps(), ResellerDashboardFragment.access$300(ResellerDashboardFragment.this), ResellerDashboardFragment.access$500(ResellerDashboardFragment.this)));
        ResellerDashboardFragment.access$700(ResellerDashboardFragment.this).setAdapter(adapterview);
    }

    public void onNothingSelected(AdapterView adapterview)
    {
    }

    ewPagerAdapter()
    {
        this$0 = final_resellerdashboardfragment;
        val$names = _5B_Ljava.lang.String_3B_.this;
        super();
    }
}
