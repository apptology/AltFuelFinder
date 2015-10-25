// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.cart;

import android.content.DialogInterface;

// Referenced classes of package com.biznessapps.food_ordering.cart:
//            CartFragment

class this._cls0
    implements android.content.OnClickListener
{

    final CartFragment this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (dialoginterface != null)
        {
            dialoginterface.dismiss();
        }
    }

    ()
    {
        this$0 = CartFragment.this;
        super();
    }
}
