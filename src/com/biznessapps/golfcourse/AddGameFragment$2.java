// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import com.biznessapps.common.components.OnTargetChangedListener;
import com.biznessapps.common.components.WheelDelegate;
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import java.util.Date;

// Referenced classes of package com.biznessapps.golfcourse:
//            AddGameFragment

class this._cls0
    implements OnTargetChangedListener
{

    final AddGameFragment this$0;

    public void onChanged(String s, String s1)
    {
        if (StringUtils.isEmpty(s1))
        {
            AddGameFragment.access$200(AddGameFragment.this).startDate = 0L;
            return;
        } else
        {
            AddGameFragment.access$200(AddGameFragment.this).startDate = CommonUtils.getDate(s1, AddGameFragment.access$300(AddGameFragment.this).getCalendarStringFormat()).getTime();
            return;
        }
    }

    te()
    {
        this$0 = AddGameFragment.this;
        super();
    }
}
