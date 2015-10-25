// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.view.View;

// Referenced classes of package com.biznessapps.events:
//            EventDetailsFragment, EventEntity

class val.item
    implements android.view.ragment._cls1
{

    final EventDetailsFragment this$0;
    final EventEntity val$item;

    public void onClick(View view)
    {
        EventDetailsFragment.addEvent(getHoldActivity(), val$item);
    }

    ()
    {
        this$0 = final_eventdetailsfragment;
        val$item = EventEntity.this;
        super();
    }
}
