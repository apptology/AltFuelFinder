// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.around_us;

import android.view.View;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.around_us:
//            AroundUsDetailActivity

class this._cls0
    implements android.view.ilActivity._cls4
{

    final AroundUsDetailActivity this$0;

    public void onClick(View view)
    {
        if (AroundUsDetailActivity.access$000(AroundUsDetailActivity.this) != null)
        {
            ViewUtils.email(AroundUsDetailActivity.this, new String[] {
                AroundUsDetailActivity.access$000(AroundUsDetailActivity.this).tLocation().getEmail()
            }, null);
        }
    }

    ()
    {
        this$0 = AroundUsDetailActivity.this;
        super();
    }
}
