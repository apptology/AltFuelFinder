// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account.address;

import com.biznessapps.food_ordering.account.AccountEntity;

// Referenced classes of package com.biznessapps.food_ordering.account.address:
//            MyAddressesListFragment

class val.item
    implements Runnable
{

    final MyAddressesListFragment this$0;
    final AccountEntity val$item;

    public void run()
    {
        MyAddressesListFragment.access$000(MyAddressesListFragment.this, val$item);
        loadData();
    }

    ()
    {
        this$0 = final_myaddresseslistfragment;
        val$item = AccountEntity.this;
        super();
    }
}
