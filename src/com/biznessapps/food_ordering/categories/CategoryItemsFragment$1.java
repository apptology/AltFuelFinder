// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.categories;

import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.TextView;

// Referenced classes of package com.biznessapps.food_ordering.categories:
//            CategoryItemsFragment

class val.cartContainer
    implements android.view.lLayoutListener
{

    final CategoryItemsFragment this$0;
    final ViewGroup val$cartContainer;

    public void onGlobalLayout()
    {
        val$cartContainer.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        int i = val$cartContainer.getMeasuredWidth();
        CategoryItemsFragment.access$000(CategoryItemsFragment.this).setPadding(0, 0, i, 0);
    }

    ()
    {
        this$0 = final_categoryitemsfragment;
        val$cartContainer = ViewGroup.this;
        super();
    }
}
