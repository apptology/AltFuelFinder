// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.cart;

import android.view.View;
import android.widget.Button;
import com.biznessapps.food_ordering.FOUtils;

// Referenced classes of package com.biznessapps.food_ordering.cart:
//            CartFragment

class this._cls0
    implements android.view.tener
{

    final CartFragment this$0;

    public void onClick(View view)
    {
        CartFragment.access$602(CartFragment.this, CartFragment.access$700(CartFragment.this));
        FOUtils.updateTipButtons(getApplicationContext(), CartFragment.access$800(CartFragment.this), new Button[] {
            CartFragment.access$700(CartFragment.this), CartFragment.access$900(CartFragment.this), CartFragment.access$1000(CartFragment.this)
        });
        CartFragment.access$1100(CartFragment.this);
    }

    ()
    {
        this$0 = CartFragment.this;
        super();
    }
}
