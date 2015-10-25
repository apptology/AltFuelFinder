// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.real_estate;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;

// Referenced classes of package com.biznessapps.real_estate:
//            RealEstateListActivity, RealEstateEntity

class this._cls0
    implements android.widget.tener
{

    final RealEstateListActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (RealEstateEntity)adapterview.getAdapter().getItem(i);
        RealEstateListActivity.access$1700(RealEstateListActivity.this, adapterview);
    }

    ()
    {
        this$0 = RealEstateListActivity.this;
        super();
    }
}
