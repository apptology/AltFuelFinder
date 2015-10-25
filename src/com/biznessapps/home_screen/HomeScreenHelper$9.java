// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.app.Activity;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.api.navigation.TabButton;
import com.biznessapps.utils.ApiUtils;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeScreenHelper

static final class val.activity
    implements android.widget.lickListener
{

    final Activity val$activity;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (TabButton)adapterview.getAdapter().getItem(i);
        adapterview = ApiUtils.getTabIntent(val$activity.getApplicationContext(), adapterview.getTab(), null, null);
        val$activity.startActivity(adapterview);
    }

    (Activity activity1)
    {
        val$activity = activity1;
        super();
    }
}
