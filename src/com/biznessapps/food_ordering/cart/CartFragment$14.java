// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.cart;

import android.content.DialogInterface;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.entities.CartEntity;
import java.util.List;

// Referenced classes of package com.biznessapps.food_ordering.cart:
//            CartFragment

class ty.Item
    implements android.content.OnClickListener
{

    final CartFragment this$0;
    final com.biznessapps.food_ordering.entities.tem val$item;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        FoodOrderingManager.getInstance().getCart().getItems().remove(val$item);
        CartFragment.access$2000(CartFragment.this);
        CartFragment.access$1100(CartFragment.this);
        if (dialoginterface != null)
        {
            dialoginterface.dismiss();
        }
    }

    ty.Item()
    {
        this$0 = final_cartfragment;
        val$item = com.biznessapps.food_ordering.entities.tem.this;
        super();
    }
}
