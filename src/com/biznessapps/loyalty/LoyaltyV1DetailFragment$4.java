// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.view.View;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV1DetailFragment, LoyaltyV1Entity

class this._cls0
    implements android.view.Fragment._cls4
{

    final LoyaltyV1DetailFragment this$0;

    public void onClick(View view)
    {
        view = LoyaltyV1DetailFragment.access$400(LoyaltyV1DetailFragment.this);
        boolean flag;
        if (!LoyaltyV1DetailFragment.access$400(LoyaltyV1DetailFragment.this).isSelected())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        view.setSelected(flag);
        ViewUtils.updateTurnOnOffViewState(LoyaltyV1DetailFragment.access$400(LoyaltyV1DetailFragment.this).isSelected(), LoyaltyV1DetailFragment.access$500(LoyaltyV1DetailFragment.this), LoyaltyV1DetailFragment.access$600(LoyaltyV1DetailFragment.this), LoyaltyV1DetailFragment.access$700(LoyaltyV1DetailFragment.this));
    }

    ()
    {
        this$0 = LoyaltyV1DetailFragment.this;
        super();
    }
}
