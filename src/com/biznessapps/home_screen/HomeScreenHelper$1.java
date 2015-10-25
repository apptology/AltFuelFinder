// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.app.Activity;
import android.content.Intent;
import com.biznessapps.api.ActivitySelector;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeScreenHelper

static final class val.activity
    implements Runnable
{

    final Activity val$activity;

    public void run()
    {
        Intent intent = new Intent(val$activity.getApplicationContext(), ActivitySelector.getActivityClass("GLOBAL_SEARCH_VIEW_CONTROLLER"));
        intent.putExtra("TAB_FRAGMENT", "GLOBAL_SEARCH_VIEW_CONTROLLER");
        val$activity.startActivity(intent);
    }

    (Activity activity1)
    {
        val$activity = activity1;
        super();
    }
}
