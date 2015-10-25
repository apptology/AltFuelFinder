// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.style;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.utils.CommonUtils;

// Referenced classes of package com.biznessapps.common.style:
//            BZCommonStyle, BZTextViewStyle

public class BZSectionStyle extends BZCommonStyle
{

    private static BZSectionStyle instance;
    private boolean mUseTransparency;

    private BZSectionStyle(Context context)
    {
        super(context, false, new Class[] {
            android/view/ViewGroup
        });
        mUseTransparency = true;
    }

    public static BZSectionStyle getInstance(Context context)
    {
        if (instance == null)
        {
            instance = new BZSectionStyle(context);
        }
        return instance;
    }

    public void apply(UiSettings uisettings, View view)
    {
        int i;
label0:
        {
            if (view instanceof TextView)
            {
                BZTextViewStyle.getInstance(mContext).apply(uisettings.getSectionTextColor(), (TextView)view);
                if (mUseTransparency)
                {
                    i = uisettings.getTransparentSectionBarColor();
                } else
                {
                    i = uisettings.getSectionBarColor();
                }
                if (view.getBackground() == null)
                {
                    break label0;
                }
                CommonUtils.setColorWithoutMutation(i, view.getBackground());
            }
            return;
        }
        view.setBackgroundColor(i);
    }

    public void apply(UiSettings uisettings, ViewGroup viewgroup)
    {
        BZTextViewStyle.getInstance(mContext).apply(Integer.valueOf(uisettings.getSectionTextColor()), viewgroup);
        int i;
        if (mUseTransparency)
        {
            i = uisettings.getTransparentSectionBarColor();
        } else
        {
            i = uisettings.getSectionBarColor();
        }
        if (viewgroup.getBackground() != null)
        {
            CommonUtils.setColorWithoutMutation(i, viewgroup.getBackground());
            return;
        } else
        {
            viewgroup.setBackgroundColor(i);
            return;
        }
    }

    public volatile void apply(Object obj, View view)
    {
        apply((UiSettings)obj, view);
    }

    public volatile void apply(Object obj, ViewGroup viewgroup)
    {
        apply((UiSettings)obj, viewgroup);
    }

    public volatile void apply(Object obj, Object obj1)
    {
        apply((UiSettings)obj, (ViewGroup)obj1);
    }

    public void setTransparency(boolean flag)
    {
        mUseTransparency = flag;
    }
}
