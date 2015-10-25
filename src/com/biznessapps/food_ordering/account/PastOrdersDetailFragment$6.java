// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account;

import android.view.View;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.food_ordering.account:
//            PastOrdersDetailFragment

class this._cls0
    implements android.view.stOrdersDetailFragment._cls6
{

    final PastOrdersDetailFragment this$0;

    public void onClick(View view)
    {
        if (PastOrdersDetailFragment.access$500(PastOrdersDetailFragment.this) != 0)
        {
            PastOrdersDetailFragment.access$602(PastOrdersDetailFragment.this, PastOrdersDetailFragment.access$700(PastOrdersDetailFragment.this));
            if (PastOrdersDetailFragment.access$600(PastOrdersDetailFragment.this) != 0L)
            {
                PastOrdersDetailFragment.access$800(PastOrdersDetailFragment.this);
                return;
            } else
            {
                ViewUtils.showWarningDialog(getHoldActivity(), com.biznessapps.layout.);
                return;
            }
        } else
        {
            ViewUtils.showWarningDialog(getHoldActivity(), com.biznessapps.layout.pe);
            return;
        }
    }

    ()
    {
        this$0 = PastOrdersDetailFragment.this;
        super();
    }
}
