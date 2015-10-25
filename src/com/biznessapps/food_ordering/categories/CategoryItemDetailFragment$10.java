// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.categories;

import android.content.DialogInterface;
import android.view.ViewGroup;
import android.widget.ScrollView;

// Referenced classes of package com.biznessapps.food_ordering.categories:
//            CategoryItemDetailFragment

class this._cls0
    implements android.content.r
{

    final CategoryItemDetailFragment this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        ((ScrollView)CategoryItemDetailFragment.access$1800(CategoryItemDetailFragment.this).findViewById(com.biznessapps.layout.DetailFragment)).fullScroll(33);
        if (dialoginterface != null)
        {
            dialoginterface.dismiss();
        }
    }

    ()
    {
        this$0 = CategoryItemDetailFragment.this;
        super();
    }
}
