// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import com.biznessapps.common.activities.CommonFragmentActivity;

// Referenced classes of package com.biznessapps.fan_wall:
//            FanWallFragment

class this._cls0
    implements com.biznessapps.common.activities.vity.BackPressed
{

    final FanWallFragment this$0;

    public boolean onBackPressed()
    {
        if (FanWallFragment.access$000(FanWallFragment.this))
        {
            getHoldActivity().setResult(4);
            getHoldActivity().finish();
        }
        return FanWallFragment.access$000(FanWallFragment.this);
    }

    gmentActivity()
    {
        this$0 = FanWallFragment.this;
        super();
    }
}
