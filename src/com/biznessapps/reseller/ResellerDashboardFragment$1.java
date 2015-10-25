// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reseller;

import android.view.ViewGroup;
import android.widget.ImageView;

// Referenced classes of package com.biznessapps.reseller:
//            ResellerDashboardFragment

class this._cls0
    implements android.support.v4.view.er
{

    final ResellerDashboardFragment this$0;

    public void onPageScrollStateChanged(int i)
    {
    }

    public void onPageScrolled(int i, float f, int j)
    {
    }

    public void onPageSelected(int i)
    {
        ResellerDashboardFragment.access$002(ResellerDashboardFragment.this, i);
        if (ResellerDashboardFragment.access$100(ResellerDashboardFragment.this) != null)
        {
            int k = ResellerDashboardFragment.access$100(ResellerDashboardFragment.this).getChildCount();
            int j = 0;
            while (j < k) 
            {
                ImageView imageview = (ImageView)ResellerDashboardFragment.access$100(ResellerDashboardFragment.this).getChildAt(j);
                if (j == i)
                {
                    imageview.setImageResource(com.biznessapps.layout._cls1.this._fld0);
                } else
                {
                    imageview.setImageResource(com.biznessapps.layout.);
                }
                j++;
            }
        }
    }

    r()
    {
        this$0 = ResellerDashboardFragment.this;
        super();
    }
}
