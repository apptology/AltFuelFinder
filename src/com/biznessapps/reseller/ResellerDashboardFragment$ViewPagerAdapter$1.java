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

class this._cls1
    implements android.widget.Adapter._cls1
{

    final _cls1.val.item this$1;

    public void onItemClick(final AdapterView item, View view, int i, long l)
    {
        item = (this._cls1)item.getAdapter().getItem(i);
        view = String.format("%s %s", new Object[] {
            getString(com.biznessapps.layout._fld1), item._mth1()
        });
        ViewUtils.showDialog(getHoldActivity(), null, view, new Runnable() {

            final ResellerDashboardFragment.ViewPagerAdapter._cls1 this$2;
            final ResellerInfo.AppInfo val$item;

            public void run()
            {
                Intent intent = (new Intent()).setClass(getApplicationContext(), com/biznessapps/layout/MainController);
                intent.putExtra("APPCODE", URLEncoder.encode(item.getAppCode()));
                intent.putExtra("IS_FROM_RESELLER", true);
                startActivity(intent);
            }

            
            {
                this$2 = ResellerDashboardFragment.ViewPagerAdapter._cls1.this;
                item = appinfo;
                super();
            }
        }, true);
    }

    _cls1.val.item()
    {
        this$1 = this._cls1.this;
        super();
    }
}
