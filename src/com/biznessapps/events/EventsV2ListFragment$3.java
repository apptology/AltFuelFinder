// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;


// Referenced classes of package com.biznessapps.events:
//            EventsV2ListFragment

class .SearchDataRunnable extends com.biznessapps.common.components.Runnable
{

    final EventsV2ListFragment this$0;

    public void run()
    {
        EventsV2ListFragment.access$402(EventsV2ListFragment.this, getSearchQuery());
        EventsV2ListFragment.access$500(EventsV2ListFragment.this);
    }

    .SearchDataRunnable()
    {
        this$0 = EventsV2ListFragment.this;
        super();
    }
}
