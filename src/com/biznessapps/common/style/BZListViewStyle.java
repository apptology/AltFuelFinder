// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.style;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.biznessapps.api.UiSettings;
import com.biznessapps.utils.CommonUtils;

// Referenced classes of package com.biznessapps.common.style:
//            BZCommonStyle, BZStyleManager

public class BZListViewStyle extends BZCommonStyle
{

    private static BZListViewStyle instance;
    private boolean mUseTransparency;

    private BZListViewStyle(Context context)
    {
        super(context, false, new Class[] {
            android/view/ViewGroup
        });
        mUseTransparency = true;
    }

    public static BZListViewStyle getInstance(Context context)
    {
        if (instance == null)
        {
            instance = new BZListViewStyle(context);
        }
        return instance;
    }

    public void apply(int i, int j, int k, int l, int i1, ViewGroup viewgroup)
    {
        int j1 = 0;
        while (j1 < viewgroup.getChildCount()) 
        {
            View view = viewgroup.getChildAt(j1);
            int k1;
            int l1;
            if (j1 % 2 == 1)
            {
                k1 = i;
                l1 = j;
            } else
            {
                k1 = k;
                l1 = l;
            }
            view.setBackgroundDrawable(CommonUtils.getListItemDrawable(i1, k1));
            if (view instanceof ViewGroup)
            {
                BZStyleManager.getInstance(mContext).applyColor(l1, (ViewGroup)view);
            } else
            {
                BZStyleManager.getInstance(mContext).applyColor(l1, view);
            }
            j1++;
        }
    }

    public void apply(UiSettings uisettings, ViewGroup viewgroup)
    {
        int j = 0;
        while (j < viewgroup.getChildCount()) 
        {
            View view = viewgroup.getChildAt(j);
            int i;
            int k;
            if (j % 2 == 1)
            {
                if (mUseTransparency)
                {
                    i = uisettings.getEvenRowColorTransparent();
                } else
                {
                    i = uisettings.getEvenRowColor();
                }
                k = uisettings.getEvenRowTextColor();
            } else
            {
                if (mUseTransparency)
                {
                    i = uisettings.getOddRowColorTransparent();
                } else
                {
                    i = uisettings.getOddRowColor();
                }
                k = uisettings.getOddRowTextColor();
            }
            view.setBackgroundDrawable(CommonUtils.getListItemDrawable(uisettings, i));
            if (view instanceof ViewGroup)
            {
                BZStyleManager.getInstance(mContext).applyColor(k, (ViewGroup)view);
            } else
            {
                BZStyleManager.getInstance(mContext).applyColor(k, view);
            }
            j++;
        }
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
