// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.info_items;

import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.info_items:
//            InfoDetailFragment

class this._cls0
    implements com.biznessapps.common.activities.y.BackPressed
{

    final InfoDetailFragment this$0;

    public boolean onBackPressed()
    {
        return ViewUtils.canGoBack(webView);
    }

    Activity.BackPressed()
    {
        this$0 = InfoDetailFragment.this;
        super();
    }
}
