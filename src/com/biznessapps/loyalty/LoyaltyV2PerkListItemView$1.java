// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.view.View;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV2PerkListItemView, OnPerkItemRedeemClickListener

class this._cls0
    implements android.view.ItemView._cls1
{

    final LoyaltyV2PerkListItemView this$0;

    public void onClick(View view)
    {
        boolean flag;
        if (LoyaltyV2PerkListItemView.access$000(LoyaltyV2PerkListItemView.this) != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        if (LoyaltyV2PerkListItemView.access$100(LoyaltyV2PerkListItemView.this) != null)
        {
            LoyaltyV2PerkListItemView.access$100(LoyaltyV2PerkListItemView.this).onRedeemClickListener(LoyaltyV2PerkListItemView.access$000(LoyaltyV2PerkListItemView.this));
        }
    }

    r()
    {
        this$0 = LoyaltyV2PerkListItemView.this;
        super();
    }
}
