// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.categories;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.food_ordering.entities.CategoryEntity;

// Referenced classes of package com.biznessapps.food_ordering.categories:
//            CategoriesFragment

class this._cls0
    implements android.widget.ckListener
{

    final CategoriesFragment this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (CategoryEntity)adapterview.getAdapter().getItem(i);
        CategoriesFragment.access$000(CategoriesFragment.this, adapterview);
    }

    ()
    {
        this$0 = CategoriesFragment.this;
        super();
    }
}
