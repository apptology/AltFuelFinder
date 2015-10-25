// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.layout;

import android.app.Activity;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.layout:
//            MainController

class val.resId
    implements Runnable
{

    final MainController this$0;
    final Activity val$activity;
    final int val$resId;

    public void run()
    {
        ViewUtils.showCustomToast(val$activity.getApplicationContext(), val$activity.getString(val$resId));
    }

    ()
    {
        this$0 = final_maincontroller;
        val$activity = activity1;
        val$resId = I.this;
        super();
    }
}
