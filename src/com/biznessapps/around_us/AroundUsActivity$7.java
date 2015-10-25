// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.around_us;


// Referenced classes of package com.biznessapps.around_us:
//            AroundUsActivity

class e extends com.biznessapps.common.components.DataRunnable
{

    final AroundUsActivity this$0;

    public void run()
    {
        AroundUsActivity.access$902(AroundUsActivity.this, getSearchQuery());
        AroundUsActivity.access$1000(AroundUsActivity.this);
    }

    r.SearchDataRunnable()
    {
        this$0 = AroundUsActivity.this;
        super();
    }
}
