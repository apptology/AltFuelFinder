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

class this._cls1
    implements Runnable
{

    final oldActivity this$1;

    public void run()
    {
        FoodOrderingManager.getInstance().getCart().clear();
        getHoldActivity().finish();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/food_ordering/account/PastOrdersDetailFragment$1

/* anonymous class */
    class PastOrdersDetailFragment._cls1
        implements com.biznessapps.common.activities.CommonFragmentActivity.BackPressed
    {

        final PastOrdersDetailFragment this$0;

        public boolean onBackPressed()
        {
            if (FoodOrderingManager.getInstance().getCart().isEmpty())
            {
                return false;
            } else
            {
                ViewUtils.showDialog(getHoldActivity(), null, getString(com.biznessapps.layout.R.string.fo_location_warning), new PastOrdersDetailFragment._cls1._cls1(), true, getString(com.biznessapps.layout.R.string.go_back), getString(com.biznessapps.layout.R.string.stay_here));
                return true;
            }
        }

            
            {
                this$0 = PastOrdersDetailFragment.this;
                super();
            }
    }

}
