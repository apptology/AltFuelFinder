// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account;

import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.entities.CartEntity;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.food_ordering.account:
//            PastOrdersDetailFragment

class this._cls0
    implements com.biznessapps.common.activities.Pressed
{

    final PastOrdersDetailFragment this$0;

    public boolean onBackPressed()
    {
        if (FoodOrderingManager.getInstance().getCart().isEmpty())
        {
            return false;
        } else
        {
            ViewUtils.showDialog(getHoldActivity(), null, getString(com.biznessapps.layout.g), new Runnable() {

                final PastOrdersDetailFragment._cls1 this$1;

                public void run()
                {
                    FoodOrderingManager.getInstance().getCart().clear();
                    getHoldActivity().finish();
                }

            
            {
                this$1 = PastOrdersDetailFragment._cls1.this;
                super();
            }
            }, true, getString(com.biznessapps.layout.tailFragment.getString), getString(com.biznessapps.layout.tailFragment.getString));
            return true;
        }
    }

    _cls1.this._cls1()
    {
        this$0 = PastOrdersDetailFragment.this;
        super();
    }
}
