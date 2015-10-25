// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reseller;

import android.content.Intent;
import android.view.View;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.reseller:
//            ResellerDashboardFragment

class this._cls1
    implements Runnable
{

    final y.finish this$1;

    public void run()
    {
        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("contentchangerviewcontroller"));
        intent.putExtra("TAB_FRAGMENT", "contentchangerviewcontroller");
        startActivity(intent);
        cacher().saveInSharedPreferences(getApplicationContext(), null, "RESELLER_ID_KEY");
        getHoldActivity().finish();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/reseller/ResellerDashboardFragment$8

/* anonymous class */
    class ResellerDashboardFragment._cls8
        implements android.view.View.OnClickListener
    {

        final ResellerDashboardFragment this$0;

        public void onClick(View view)
        {
            ViewUtils.closeKeyboardAndClearFocus(getApplicationContext(), ResellerDashboardFragment.access$200(ResellerDashboardFragment.this));
            ViewUtils.showDialog(getHoldActivity(), getString(com.biznessapps.layout.R.string.reseller_dashboard_logout), new ResellerDashboardFragment._cls8._cls1());
        }

            
            {
                this$0 = ResellerDashboardFragment.this;
                super();
            }
    }

}
