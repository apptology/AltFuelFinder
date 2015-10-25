// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.app.Activity;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeScreenHelper

static final class val.activity
    implements android.widget.lickListener
{

    final Activity val$activity;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (LocationEntity)adapterview.getAdapter().getItem(i);
        ViewUtils.openGoogleMap(val$activity.getApplicationContext(), adapterview.getLongitude(), adapterview.getLatitude());
    }

    y(Activity activity1)
    {
        val$activity = activity1;
        super();
    }
}
