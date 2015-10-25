// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import com.biznessapps.api.CachingManager;
import com.biznessapps.utils.json.JsonParser;

// Referenced classes of package com.biznessapps.events:
//            EventV2DetailsActivity

class Runnable extends com.biznessapps.api.ataRunnable
{

    final EventV2DetailsActivity this$0;

    public void run()
    {
        EventV2DetailsActivity.access$1602(EventV2DetailsActivity.this, JsonParser.parseEventDetail(getDataToParse()));
        setCorrectData(EventV2DetailsActivity.access$1700(EventV2DetailsActivity.this).saveData((new StringBuilder()).append("EVENT_DETAIL_PROPERTY").append(EventV2DetailsActivity.access$1100(EventV2DetailsActivity.this)).toString(), EventV2DetailsActivity.access$1600(EventV2DetailsActivity.this)));
    }

    Runnable()
    {
        this$0 = EventV2DetailsActivity.this;
        super();
    }
}
