// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.coupons;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.coupons:
//            CouponDetailFragment

class this._cls1
    implements android.widget.stener
{

    final getLatitude this$1;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (LocationEntity)adapterview.getAdapter().getItem(i);
        ViewUtils.openGoogleMap(getApplicationContext(), adapterview.getLongitude(), adapterview.getLatitude());
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/coupons/CouponDetailFragment$3

/* anonymous class */
    class CouponDetailFragment._cls3
        implements android.view.View.OnClickListener
    {

        final CouponDetailFragment this$0;

        public void onClick(View view)
        {
            CouponDetailFragment.access$700(CouponDetailFragment.this, getHoldActivity(), com.biznessapps.layout.R.string.branch_directions_title, new CouponDetailFragment._cls3._cls1());
        }

            
            {
                this$0 = CouponDetailFragment.this;
                super();
            }
    }

}
