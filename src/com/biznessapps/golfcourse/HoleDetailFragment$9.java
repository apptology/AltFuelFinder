// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.golfcourse:
//            HoleDetailFragment

class this._cls0
    implements com.biznessapps.common.activities.y.BackPressed
{

    final HoleDetailFragment this$0;

    public boolean onBackPressed()
    {
        return ViewUtils.canGoBack(HoleDetailFragment.access$1400(HoleDetailFragment.this));
    }

    Activity.BackPressed()
    {
        this$0 = HoleDetailFragment.this;
        super();
    }
}
