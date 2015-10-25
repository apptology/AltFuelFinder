// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.around_us;

import com.biznessapps.utils.json.JsonParser;

// Referenced classes of package com.biznessapps.around_us:
//            AroundUsActivity

class DataRunnable extends com.biznessapps.api.l.LoadDataRunnable
{

    final AroundUsActivity this$0;

    public void run()
    {
        AroundUsActivity.access$202(AroundUsActivity.this, JsonParser.parseAroundUsData(getDataToParse()));
    }

    DataRunnable()
    {
        this$0 = AroundUsActivity.this;
        super();
    }
}
