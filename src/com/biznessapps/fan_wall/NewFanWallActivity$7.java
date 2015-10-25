// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.view.View;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.fan_wall:
//            NewFanWallActivity

class this._cls0
    implements android.view.lActivity._cls7
{

    final NewFanWallActivity this$0;

    public void onClick(View view)
    {
        if (ViewUtils.checkGpsEnabling(NewFanWallActivity.this))
        {
            NewFanWallActivity.access$102(NewFanWallActivity.this, true);
            NewFanWallActivity.access$1000(NewFanWallActivity.this, NewFanWallActivity.access$100(NewFanWallActivity.this));
            NewFanWallActivity.access$400(NewFanWallActivity.this);
        }
    }

    ()
    {
        this$0 = NewFanWallActivity.this;
        super();
    }
}
