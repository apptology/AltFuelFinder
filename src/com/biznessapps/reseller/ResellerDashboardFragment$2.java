// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reseller;

import android.view.MotionEvent;
import android.view.View;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.reseller:
//            ResellerDashboardFragment

class this._cls0
    implements android.view.dFragment._cls2
{

    final ResellerDashboardFragment this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        ViewUtils.closeKeyboardAndClearFocus(getApplicationContext(), ResellerDashboardFragment.access$200(ResellerDashboardFragment.this));
        return false;
    }

    ()
    {
        this$0 = ResellerDashboardFragment.this;
        super();
    }
}
