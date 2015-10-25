// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.cart;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.food_ordering.cart:
//            CartFragment

class val.emailLabelContainer
    implements android.view.tener
{

    final CartFragment this$0;
    final ImageView val$circleView;
    final ViewGroup val$emailLabelContainer;
    final ImageView val$turnButton;

    public void onClick(View view)
    {
        Object obj = null;
        byte byte0 = 0;
        Object obj1;
        boolean flag;
        boolean flag1;
        if (val$turnButton.getTag() != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj1 = val$turnButton;
        if (flag)
        {
            view = null;
        } else
        {
            view = Boolean.valueOf(true);
        }
        ((ImageView) (obj1)).setTag(view);
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        ViewUtils.updateTurnOnOffViewState(flag1, val$circleView, val$turnButton, CartFragment.access$1400(CartFragment.this));
        obj1 = val$emailLabelContainer;
        if (flag)
        {
            view = obj;
        } else
        {
            view = Boolean.valueOf(true);
        }
        ((ViewGroup) (obj1)).setTag(view);
        view = val$emailLabelContainer;
        if (flag)
        {
            byte0 = 8;
        }
        view.setVisibility(byte0);
    }

    ()
    {
        this$0 = final_cartfragment;
        val$turnButton = imageview;
        val$circleView = imageview1;
        val$emailLabelContainer = ViewGroup.this;
        super();
    }
}
