// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.style;

import android.content.Context;
import android.widget.TextView;
import com.biznessapps.utils.CommonUtils;

// Referenced classes of package com.biznessapps.common.style:
//            BZCommonStyle

public class BZTextViewStyle extends BZCommonStyle
{

    private static BZTextViewStyle instance;

    private BZTextViewStyle(Context context)
    {
        super(context, new Class[] {
            android/widget/TextView
        });
    }

    public static BZTextViewStyle getInstance(Context context)
    {
        if (instance == null)
        {
            instance = new BZTextViewStyle(context);
        }
        return instance;
    }

    public void apply(Integer integer, TextView textview)
    {
        textview.setTextColor(integer.intValue());
        if (textview.getCompoundDrawables() != null)
        {
            if (textview.getCompoundDrawables()[0] != null)
            {
                CommonUtils.overrideImageColor(integer.intValue(), textview.getCompoundDrawables()[0]);
            }
            if (textview.getCompoundDrawables()[1] != null)
            {
                CommonUtils.overrideImageColor(integer.intValue(), textview.getCompoundDrawables()[1]);
            }
            if (textview.getCompoundDrawables()[2] != null)
            {
                CommonUtils.overrideImageColor(integer.intValue(), textview.getCompoundDrawables()[2]);
            }
            if (textview.getCompoundDrawables()[3] != null)
            {
                CommonUtils.overrideImageColor(integer.intValue(), textview.getCompoundDrawables()[3]);
            }
        }
    }

    public volatile void apply(Object obj, Object obj1)
    {
        apply((Integer)obj, (TextView)obj1);
    }
}
