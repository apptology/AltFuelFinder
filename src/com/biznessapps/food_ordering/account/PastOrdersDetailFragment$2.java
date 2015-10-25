// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account;

import android.app.Activity;

// Referenced classes of package com.biznessapps.food_ordering.account:
//            PastOrdersDetailFragment

class val.activity
    implements Runnable
{

    final PastOrdersDetailFragment this$0;
    final Activity val$activity;

    public void run()
    {
        val$activity.finish();
    }

    ()
    {
        this$0 = final_pastordersdetailfragment;
        val$activity = Activity.this;
        super();
    }
}
