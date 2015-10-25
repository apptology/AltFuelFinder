// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.categories;

import android.widget.EditText;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.food_ordering.categories:
//            CategoryItemsFragment

class val.searchEditText
    implements Runnable
{

    final CategoryItemsFragment this$0;
    final EditText val$searchEditText;

    public void run()
    {
        CategoryItemsFragment.access$102(CategoryItemsFragment.this, val$searchEditText.getText().toString());
        ViewUtils.closeKeyboard(getApplicationContext(), val$searchEditText);
        CategoryItemsFragment.access$400(CategoryItemsFragment.this, getHoldActivity(), CategoryItemsFragment.access$300(CategoryItemsFragment.this, CategoryItemsFragment.access$200(CategoryItemsFragment.this)));
    }

    ()
    {
        this$0 = final_categoryitemsfragment;
        val$searchEditText = EditText.this;
        super();
    }
}
