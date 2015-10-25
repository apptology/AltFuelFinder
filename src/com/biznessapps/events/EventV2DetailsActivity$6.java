// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.biznessapps.events:
//            EventV2DetailsActivity, EventEntity, EventDetailsFragment

class this._cls0
    implements android.view.ctivity._cls6
{

    final EventV2DetailsActivity this$0;

    public void onClick(View view)
    {
        view = (EventEntity)getIntent().getSerializableExtra("EVENT");
        EventDetailsFragment.addEvent(EventV2DetailsActivity.this, view);
    }

    ()
    {
        this$0 = EventV2DetailsActivity.this;
        super();
    }
}
