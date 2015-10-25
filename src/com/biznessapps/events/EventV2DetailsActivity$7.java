// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.view.View;
import com.biznessapps.common.social.ui.ShareComponent;

// Referenced classes of package com.biznessapps.events:
//            EventV2DetailsActivity

class this._cls0
    implements android.view.ctivity._cls7
{

    final EventV2DetailsActivity this$0;

    public void onClick(View view)
    {
        ShareComponent.showSharingOptionDialog(EventV2DetailsActivity.this);
    }

    ()
    {
        this$0 = EventV2DetailsActivity.this;
        super();
    }
}
