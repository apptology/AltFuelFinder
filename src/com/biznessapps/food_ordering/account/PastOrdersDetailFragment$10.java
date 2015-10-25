// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account;

import com.biznessapps.common.activities.CommonFragmentActivity;

// Referenced classes of package com.biznessapps.food_ordering.account:
//            PastOrdersDetailFragment

class this._cls0
    implements Runnable
{

    final PastOrdersDetailFragment this$0;

    public void run()
    {
        getHoldActivity().finish();
    }

    ()
    {
        this$0 = PastOrdersDetailFragment.this;
        super();
    }
}
