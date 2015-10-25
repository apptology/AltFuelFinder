// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.biznessapps.api.UiSettings;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.widgets.LoadMoreButton;

public class LoadMoreBuilder
{

    private LoadMoreBuilder()
    {
    }

    public static LoadMoreButton addLoadMoreButton(Context context, Runnable runnable, UiSettings uisettings)
    {
        LoadMoreButton loadmorebutton = new LoadMoreButton(context);
        loadmorebutton.setLayoutParams(new android.widget.AbsListView.LayoutParams(-1, context.getResources().getDimensionPixelSize(com.biznessapps.layout.R.dimen.big_button_height)));
        loadmorebutton.setText(com.biznessapps.layout.R.string.load_more);
        loadmorebutton.setBackgroundResource(com.biznessapps.layout.R.drawable.medium_button_long);
        loadmorebutton.setTextColor(uisettings.getButtonTextColor());
        CommonUtils.overrideMediumButtonColor(uisettings.getButtonBgColor(), loadmorebutton.getBackground());
        loadmorebutton.setOnClickListener(new android.view.View.OnClickListener(runnable) {

            final Runnable val$clickAction;

            public void onClick(View view)
            {
                clickAction.run();
            }

            
            {
                clickAction = runnable;
                super();
            }
        });
        return loadmorebutton;
    }
}
