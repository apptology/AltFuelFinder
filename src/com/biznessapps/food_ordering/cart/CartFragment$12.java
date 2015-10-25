// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.cart;

import android.view.View;
import com.biznessapps.food_ordering.account.AccountEntity;
import com.biznessapps.food_ordering.account.address.MyAddressesListFragment;
import java.util.List;

// Referenced classes of package com.biznessapps.food_ordering.cart:
//            CartFragment

class val.data
    implements android.view.ener
{

    final CartFragment this$0;
    final List val$data;
    final String val$text;

    public void onClick(View view)
    {
        if (val$text.equalsIgnoreCase(" + "))
        {
            MyAddressesListFragment.openAccountItem(getHoldActivity(), null);
            return;
        } else
        {
            int i = ((Integer)view.getTag(com.biznessapps.layout.AG)).intValue();
            CartFragment.access$1602(CartFragment.this, (AccountEntity)val$data.get(i));
            CartFragment.access$1702(CartFragment.this, false);
            CartFragment.access$1800(CartFragment.this, CartFragment.access$1600(CartFragment.this));
            return;
        }
    }

    ()
    {
        this$0 = final_cartfragment;
        val$text = s;
        val$data = List.this;
        super();
    }
}
