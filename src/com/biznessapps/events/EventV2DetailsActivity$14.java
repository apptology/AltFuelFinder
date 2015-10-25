// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.view.View;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.events:
//            EventV2DetailsActivity, EventEntity

class this._cls0
    implements android.view.tivity._cls14
{

    final EventV2DetailsActivity this$0;

    public void onClick(View view)
    {
        ViewUtils.openGoogleMap(getApplicationContext(), EventV2DetailsActivity.access$1600(EventV2DetailsActivity.this).getLongitude(), EventV2DetailsActivity.access$1600(EventV2DetailsActivity.this).getLatitude());
    }

    ()
    {
        this$0 = EventV2DetailsActivity.this;
        super();
    }
}
