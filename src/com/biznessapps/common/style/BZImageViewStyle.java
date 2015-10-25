// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.style;

import android.content.Context;
import android.widget.ImageView;
import com.biznessapps.utils.CommonUtils;

// Referenced classes of package com.biznessapps.common.style:
//            BZCommonStyle

public class BZImageViewStyle extends BZCommonStyle
{

    private static BZImageViewStyle instance;

    private BZImageViewStyle(Context context)
    {
        super(context, new Class[] {
            android/widget/ImageView
        });
    }

    public static BZImageViewStyle getInstance(Context context)
    {
        if (instance == null)
        {
            instance = new BZImageViewStyle(context);
        }
        return instance;
    }

    public void apply(Integer integer, ImageView imageview)
    {
        if (imageview.getDrawable() != null)
        {
            CommonUtils.overrideImageColor(integer.intValue(), imageview.getDrawable());
        } else
        if (imageview.getBackground() != null)
        {
            CommonUtils.overrideImageColor(integer.intValue(), imageview.getBackground());
            return;
        }
    }

    public volatile void apply(Object obj, Object obj1)
    {
        apply((Integer)obj, (ImageView)obj1);
    }
}
