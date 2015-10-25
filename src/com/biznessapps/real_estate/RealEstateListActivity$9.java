// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.real_estate;

import com.biznessapps.api.CachingManager;
import com.biznessapps.utils.json.JsonParser;
import java.util.List;

// Referenced classes of package com.biznessapps.real_estate:
//            RealEstateListActivity

class able extends com.biznessapps.api.DataRunnable
{

    final RealEstateListActivity this$0;

    public void run()
    {
        RealEstateListActivity.access$1202(RealEstateListActivity.this, JsonParser.parseRealEstateList(getDataToParse()));
        if (RealEstateListActivity.access$1200(RealEstateListActivity.this) == null || RealEstateListActivity.access$1200(RealEstateListActivity.this).isEmpty())
        {
            RealEstateListActivity.access$1302(RealEstateListActivity.this, JsonParser.getBackground(getDataToParse()));
        }
        setCorrectData(RealEstateListActivity.access$1500(RealEstateListActivity.this).saveData((new StringBuilder()).append("REAL_ESTATE_LIST_PROPERTY").append(RealEstateListActivity.access$1400(RealEstateListActivity.this)).toString(), RealEstateListActivity.access$1200(RealEstateListActivity.this)));
    }

    able()
    {
        this$0 = RealEstateListActivity.this;
        super();
    }
}
