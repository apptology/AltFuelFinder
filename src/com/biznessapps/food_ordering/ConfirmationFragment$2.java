// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering;

import android.view.View;

// Referenced classes of package com.biznessapps.food_ordering:
//            ConfirmationFragment, FOUtils

class this._cls0
    implements android.view.mationFragment._cls2
{

    final ConfirmationFragment this$0;

    public void onClick(View view)
    {
        FOUtils.openCartView(getHoldActivity());
    }

    ()
    {
        this$0 = ConfirmationFragment.this;
        super();
    }
}
