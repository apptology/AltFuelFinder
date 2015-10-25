// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.support.v4.app.FragmentActivity;
import android.view.ViewGroup;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV2DetailFragment

class this._cls0
    implements com.biznessapps.common.activities.kPressed
{

    final LoyaltyV2DetailFragment this$0;

    public boolean onBackPressed()
    {
        if (LoyaltyV2DetailFragment.access$900(LoyaltyV2DetailFragment.this).isShown())
        {
            LoyaltyV2DetailFragment.access$802(LoyaltyV2DetailFragment.this, false);
            LoyaltyV2DetailFragment.access$500(LoyaltyV2DetailFragment.this);
        } else
        {
            getActivity().finish();
        }
        return true;
    }

    tivity.BackPressed()
    {
        this$0 = LoyaltyV2DetailFragment.this;
        super();
    }
}
