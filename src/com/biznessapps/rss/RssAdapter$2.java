// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.rss;

import android.view.View;
import com.biznessapps.common.social.ui.ShareComponent;

// Referenced classes of package com.biznessapps.rss:
//            RssAdapter

class this._cls0
    implements android.view.istener
{

    final RssAdapter this$0;

    public void onClick(View view)
    {
        ShareComponent.showSharingOptionDialog(RssAdapter.access$200(RssAdapter.this));
    }

    ShareComponent()
    {
        this$0 = RssAdapter.this;
        super();
    }
}
