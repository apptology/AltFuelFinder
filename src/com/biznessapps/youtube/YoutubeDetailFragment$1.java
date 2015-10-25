// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.youtube;

import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.youtube:
//            YoutubeDetailFragment

class this._cls0
    implements com.biznessapps.common.activities.ackPressed
{

    final YoutubeDetailFragment this$0;

    public boolean onBackPressed()
    {
        return ViewUtils.canGoBack(YoutubeDetailFragment.access$000(YoutubeDetailFragment.this));
    }

    Activity.BackPressed()
    {
        this$0 = YoutubeDetailFragment.this;
        super();
    }
}
