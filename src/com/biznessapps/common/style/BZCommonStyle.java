// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.style;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

// Referenced classes of package com.biznessapps.common.style:
//            BZStyleManager

public abstract class BZCommonStyle
{

    protected Context mContext;
    final Class mTypeParameterClasses[];

    transient BZCommonStyle(Context context, boolean flag, Class aclass[])
    {
        mTypeParameterClasses = aclass;
        mContext = context;
        if (flag)
        {
            BZStyleManager.getInstance(mContext).addStyle(this);
        }
    }

    transient BZCommonStyle(Context context, Class aclass[])
    {
        this(context, true, aclass);
    }

    public void apply(int i, Object obj)
    {
        try
        {
            apply(Integer.valueOf(i), obj);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return;
        }
    }

    public void apply(Object obj, View view)
    {
        apply(obj, view);
    }

    public void apply(Object obj, ViewGroup viewgroup)
    {
        if (viewgroup != null)
        {
            int i = 0;
            while (i < viewgroup.getChildCount()) 
            {
                View view = viewgroup.getChildAt(i);
                if (isAvailableType(view))
                {
                    apply(obj, view);
                } else
                if (view instanceof ViewGroup)
                {
                    apply(obj, (ViewGroup)view);
                }
                i++;
            }
        }
    }

    public transient void apply(Object obj, ViewGroup viewgroup, View aview[])
    {
        if (viewgroup != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i = 0;
_L8:
        if (i >= viewgroup.getChildCount()) goto _L1; else goto _L3
_L3:
        View view;
        int j;
        boolean flag1;
        view = viewgroup.getChildAt(i);
        if (aview == null)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        flag1 = true;
        j = 0;
_L9:
        boolean flag = flag1;
        if (j >= aview.length) goto _L5; else goto _L4
_L4:
        if (view != aview[j]) goto _L7; else goto _L6
_L6:
        flag = false;
_L5:
        if (flag)
        {
            break MISSING_BLOCK_LABEL_81;
        }
_L10:
        i++;
          goto _L8
_L7:
        j++;
          goto _L9
        if (isAvailableType(view))
        {
            apply(obj, view);
        } else
        if (view instanceof ViewGroup)
        {
            apply(obj, (ViewGroup)view);
        }
          goto _L10
    }

    public abstract void apply(Object obj, Object obj1);

    public transient void apply(Object obj, View aview[])
    {
        if (aview != null)
        {
            int i = 0;
            while (i < aview.length) 
            {
                apply(obj, aview[i]);
                i++;
            }
        }
    }

    public boolean isAvailableType(View view)
    {
        boolean flag1 = false;
        int i = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (i < mTypeParameterClasses.length)
                {
                    if (!mTypeParameterClasses[i].isAssignableFrom(view.getClass()))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            i++;
        } while (true);
    }
}
