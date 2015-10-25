// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reseller;

import android.view.MotionEvent;
import android.view.View;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.reseller:
//            ResellerDashboardFragment

class this._cls1
    implements android.view.erAdapter._cls2
{

    final is._cls0 this$1;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        ViewUtils.closeKeyboardAndClearFocus(getApplicationContext(), ResellerDashboardFragment.access$200(_fld0));
        return false;
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
