// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.real_estate;


// Referenced classes of package com.biznessapps.real_estate:
//            RealEstateListActivity

class DataRunnable extends com.biznessapps.common.components.nnable
{

    final RealEstateListActivity this$0;

    public void run()
    {
        RealEstateListActivity.access$902(RealEstateListActivity.this, getSearchQuery());
        RealEstateListActivity.access$800(RealEstateListActivity.this);
    }

    DataRunnable()
    {
        this$0 = RealEstateListActivity.this;
        super();
    }
}
