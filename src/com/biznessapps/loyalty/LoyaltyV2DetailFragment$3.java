// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.view.View;
import android.widget.Button;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV2DetailFragment

class this._cls0
    implements android.view.Fragment._cls3
{

    final LoyaltyV2DetailFragment this$0;

    public void onClick(View view)
    {
        if (LoyaltyV2DetailFragment.access$000(LoyaltyV2DetailFragment.this).getText().equals(getString(com.biznessapps.layout.etString)))
        {
            LoyaltyV2DetailFragment.access$100(LoyaltyV2DetailFragment.this);
            return;
        } else
        {
            LoyaltyV2DetailFragment.access$200(LoyaltyV2DetailFragment.this);
            return;
        }
    }

    ()
    {
        this$0 = LoyaltyV2DetailFragment.this;
        super();
    }
}
