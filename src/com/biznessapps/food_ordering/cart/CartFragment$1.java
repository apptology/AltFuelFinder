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
        CartFragment.access$002(CartFragment.this, 2);
        FOUtils.updateButtons(getApplicationContext(), CartFragment.access$100(CartFragment.this), true, new Button[] {
            CartFragment.access$200(CartFragment.this), CartFragment.access$300(CartFragment.this)
        });
    }

    ()
    {
        this$0 = CartFragment.this;
        super();
    }
}
