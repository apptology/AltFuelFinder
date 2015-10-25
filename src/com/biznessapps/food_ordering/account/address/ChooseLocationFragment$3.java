// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account.address;

import android.view.View;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.food_ordering.account.address:
//            ChooseLocationFragment

class this._cls0
    implements android.view.address.ChooseLocationFragment._cls3
{

    final ChooseLocationFragment this$0;

    public void onClick(View view)
    {
        if (ChooseLocationFragment.access$400(ChooseLocationFragment.this) != null)
        {
            ChooseLocationFragment.access$500(ChooseLocationFragment.this, ChooseLocationFragment.access$400(ChooseLocationFragment.this));
            return;
        } else
        {
            ViewUtils.showWarningDialog(getHoldActivity(), com.biznessapps.layout.alert);
            return;
        }
    }

    ()
    {
        this$0 = ChooseLocationFragment.this;
        super();
    }
}
