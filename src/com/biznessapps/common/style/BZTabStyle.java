// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.style;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;

// Referenced classes of package com.biznessapps.common.style:
//            BZCommonStyle

public class BZTabStyle extends BZCommonStyle
{

    private static BZTabStyle instance;
    private boolean mNavigationTextShadowColor;

    private BZTabStyle(Context context)
    {
        super(context, false, new Class[] {
            android/widget/TextView
        });
        mNavigationTextShadowColor = false;
    }

    public static BZTabStyle getInstance(Context context)
    {
        if (instance == null)
        {
            instance = new BZTabStyle(context);
        }
        return instance;
    }

    public void apply(UiSettings uisettings, ViewGroup viewgroup)
    {
        viewgroup.setBackgroundColor(uisettings.getNavigationBarColor());
    }

    public void apply(UiSettings uisettings, TextView textview)
    {
        int i;
        if (mNavigationTextShadowColor)
        {
            i = uisettings.getNavigationTextShadowColor();
        } else
        {
            i = uisettings.getNavigationTextColor();
        }
        textview.setTextColor(i);
    }

    public volatile void apply(Object obj, ViewGroup viewgroup)
    {
        apply((UiSettings)obj, viewgroup);
    }

    public volatile void apply(Object obj, Object obj1)
    {
        apply((UiSettings)obj, (TextView)obj1);
    }

    public void setNavigationTextShadowColor(boolean flag)
    {
        mNavigationTextShadowColor = flag;
    }
}
