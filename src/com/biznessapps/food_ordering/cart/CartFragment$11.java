// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.cart;


// Referenced classes of package com.biznessapps.food_ordering.cart:
//            CartFragment

class this._cls0
    implements .CartClickListener
{

    final CartFragment this$0;

    public void onChangedNumber(com.biznessapps.food_ordering.entities.tem tem, int i)
    {
        if (i > 0)
        {
            CartFragment.access$1100(CartFragment.this);
            return;
        } else
        {
            CartFragment.access$1500(CartFragment.this, tem);
            return;
        }
    }

    ty.Item()
    {
        this$0 = CartFragment.this;
        super();
    }
}
