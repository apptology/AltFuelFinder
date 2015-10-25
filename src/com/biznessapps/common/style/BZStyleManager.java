// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.style;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.biznessapps.common.style:
//            BZCommonStyle, BZListViewStyle, BZSectionStyle, BZTabStyle, 
//            BZImageViewStyle, BZButtonStyle, BZTextViewStyle

public class BZStyleManager
{

    private static BZStyleManager instance;
    private Context mContext;
    private List mStyleList;

    private BZStyleManager(Context context)
    {
        mStyleList = new ArrayList();
        mContext = context;
    }

    public static BZStyleManager getInstance(Context context)
    {
        if (instance == null)
        {
            instance = new BZStyleManager(context);
        }
        return instance;
    }

    void addStyle(BZCommonStyle bzcommonstyle)
    {
        mStyleList.add(bzcommonstyle);
    }

    public void applyColor(int i, View view)
    {
        int j = 0;
        do
        {
label0:
            {
                if (j < mStyleList.size())
                {
                    BZCommonStyle bzcommonstyle = (BZCommonStyle)mStyleList.get(j);
                    if (!bzcommonstyle.isAvailableType(view))
                    {
                        break label0;
                    }
                    bzcommonstyle.apply(i, view);
                }
                return;
            }
            j++;
        } while (true);
    }

    public void applyColor(int i, ViewGroup viewgroup)
    {
        if (viewgroup != null)
        {
            int j = 0;
            while (j < viewgroup.getChildCount()) 
            {
                View view = viewgroup.getChildAt(j);
                if (view instanceof ViewGroup)
                {
                    applyColor(i, (ViewGroup)view);
                } else
                {
                    applyColor(i, view);
                }
                j++;
            }
        }
    }

    public transient void applyColor(int i, ViewGroup viewgroup, View aview[])
    {
        if (viewgroup != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j = 0;
_L8:
        if (j >= viewgroup.getChildCount()) goto _L1; else goto _L3
_L3:
        View view;
        int k;
        boolean flag1;
        view = viewgroup.getChildAt(j);
        if (aview == null)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        flag1 = true;
        k = 0;
_L9:
        boolean flag = flag1;
        if (k >= aview.length) goto _L5; else goto _L4
_L4:
        if (view != aview[k]) goto _L7; else goto _L6
_L6:
        flag = false;
_L5:
        if (flag)
        {
            break MISSING_BLOCK_LABEL_81;
        }
_L10:
        j++;
          goto _L8
_L7:
        k++;
          goto _L9
        if (view instanceof ViewGroup)
        {
            applyColor(i, (ViewGroup)view);
        } else
        {
            applyColor(i, view);
        }
          goto _L10
    }

    public void initStyles()
    {
        BZListViewStyle.getInstance(mContext);
        BZSectionStyle.getInstance(mContext);
        BZTabStyle.getInstance(mContext);
        BZImageViewStyle.getInstance(mContext);
        BZButtonStyle.getInstance(mContext);
        BZTextViewStyle.getInstance(mContext);
    }
}
