// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.biznessapps.api.UiSettings;

// Referenced classes of package com.biznessapps.utils:
//            HeaderUtils, CommonUtils

static final class val.uiSettings
    implements android.view.stener
{

    final ImageView val$arrowNavigation;
    final ViewGroup val$dataContainer;
    final ViewGroup val$headerContainer;
    final UiSettings val$uiSettings;

    public void onClick(View view)
    {
        boolean flag;
        if (val$dataContainer.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            val$dataContainer.setVisibility(8);
            val$headerContainer.setBackgroundResource(com.biznessapps.layout.container_closed);
            val$arrowNavigation.setBackgroundResource(com.biznessapps.layout.ow_down);
        } else
        {
            val$dataContainer.setVisibility(0);
            val$arrowNavigation.setBackgroundResource(com.biznessapps.layout.ow_up);
            val$headerContainer.setBackgroundResource(com.biznessapps.layout.header_opened);
        }
        CommonUtils.setColorWithoutMutation(val$uiSettings.getSectionTextColor(), val$arrowNavigation.getBackground());
        CommonUtils.setColorWithoutMutation(val$uiSettings.getSectionBarColor(), val$headerContainer.getBackground());
        val$headerContainer.getBackground().setAlpha(120);
    }

    (ViewGroup viewgroup, ViewGroup viewgroup1, ImageView imageview, UiSettings uisettings)
    {
        val$dataContainer = viewgroup;
        val$headerContainer = viewgroup1;
        val$arrowNavigation = imageview;
        val$uiSettings = uisettings;
        super();
    }
}
