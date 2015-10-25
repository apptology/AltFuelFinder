// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reseller;

import android.content.Intent;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.layout.MainController;
import com.biznessapps.utils.ViewUtils;
import java.net.URLEncoder;

// Referenced classes of package com.biznessapps.reseller:
//            ResellerDashboardFragment

class val.item
    implements Runnable
{

    final val.item this$2;
    final val.item val$item;

    public void run()
    {
        Intent intent = (new Intent()).setClass(getApplicationContext(), com/biznessapps/layout/MainController);
        intent.putExtra("APPCODE", URLEncoder.encode(val$item.item()));
        intent.putExtra("IS_FROM_RESELLER", true);
        startActivity(intent);
    }

    is._cls1()
    {
        this$2 = final__pcls1;
        val$item = val.item.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1

/* anonymous class */
    class ResellerDashboardFragment.ViewPagerAdapter._cls1
        implements android.widget.AdapterView.OnItemClickListener
    {

        final ResellerDashboardFragment.ViewPagerAdapter this$1;

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            adapterview = (ResellerInfo.AppInfo)adapterview.getAdapter().getItem(i);
            view = String.format("%s %s", new Object[] {
                getString(com.biznessapps.layout.R.string.reseller_dashboard_login), adapterview.getAppCode()
            });
            ViewUtils.showDialog(getHoldActivity(), null, view, adapterview. new ResellerDashboardFragment.ViewPagerAdapter._cls1._cls1(), true);
        }

            
            {
                this$1 = ResellerDashboardFragment.ViewPagerAdapter.this;
                super();
            }
    }

}
