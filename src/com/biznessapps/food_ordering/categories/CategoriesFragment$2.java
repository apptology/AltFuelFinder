// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.categories;

import android.widget.EditText;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.food_ordering.categories:
//            CategoriesFragment

class val.searchEditText
    implements Runnable
{

    final CategoriesFragment this$0;
    final EditText val$searchEditText;

    public void run()
    {
        CategoriesFragment.access$102(CategoriesFragment.this, val$searchEditText.getText().toString());
        ViewUtils.closeKeyboard(getApplicationContext(), val$searchEditText);
        CategoriesFragment.access$400(CategoriesFragment.this, getHoldActivity(), CategoriesFragment.access$300(CategoriesFragment.this, CategoriesFragment.access$200(CategoriesFragment.this)));
    }

    ()
    {
        this$0 = final_categoriesfragment;
        val$searchEditText = EditText.this;
        super();
    }
}
