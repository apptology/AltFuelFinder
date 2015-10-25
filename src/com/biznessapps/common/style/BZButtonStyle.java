// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.style;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.Button;
import com.biznessapps.api.UiSettings;
import com.biznessapps.utils.CommonUtils;

// Referenced classes of package com.biznessapps.common.style:
//            BZCommonStyle

public class BZButtonStyle extends BZCommonStyle
{

    private static BZButtonStyle instance;

    private BZButtonStyle(Context context)
    {
        super(context, new Class[] {
            android/widget/Button
        });
    }

    public static BZButtonStyle getInstance(Context context)
    {
        if (instance == null)
        {
            instance = new BZButtonStyle(context);
        }
        return instance;
    }

    public void apply(int i, int j, Button button)
    {
        if (button.getBackground() != null)
        {
            CommonUtils.overrideImageColor(i, button.getBackground());
        } else
        {
            button.setBackgroundColor(i);
        }
        apply(j, button);
    }

    public void apply(int i, ViewGroup viewgroup)
    {
        if (viewgroup != null)
        {
            int j = 0;
            while (j < viewgroup.getChildCount()) 
            {
                android.view.View view = viewgroup.getChildAt(j);
                if (isAvailableType(view))
                {
                    apply(i, (Button)view);
                } else
                if (view instanceof ViewGroup)
                {
                    apply(i, (ViewGroup)view);
                }
                j++;
            }
        }
    }

    public void apply(int i, Button button)
    {
        button.setTextColor(i);
    }

    public volatile void apply(int i, Object obj)
    {
        apply(i, (Button)obj);
    }

    public void apply(UiSettings uisettings, Button button)
    {
        apply(uisettings.getButtonBgColor(), uisettings.getButtonTextColor(), button);
    }

    public volatile void apply(Object obj, Object obj1)
    {
        apply((UiSettings)obj, (Button)obj1);
    }
}
