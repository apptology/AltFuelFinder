// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.app.Activity;
import com.biznessapps.more.Tab;

// Referenced classes of package com.biznessapps.utils:
//            TabUtils, ApiUtils

static final class val.tab
    implements Runnable
{

    final Activity val$activity;
    final Tab val$tab;

    public void run()
    {
        android.content.Intent intent = ApiUtils.getTabIntent(val$activity.getApplicationContext(), val$tab, null, null);
        val$activity.startActivity(intent);
    }

    (Activity activity1, Tab tab1)
    {
        val$activity = activity1;
        val$tab = tab1;
        super();
    }
}
