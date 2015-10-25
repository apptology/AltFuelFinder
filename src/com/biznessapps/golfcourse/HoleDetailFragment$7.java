// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.view.View;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.golfcourse:
//            HoleDetailFragment

class this._cls0
    implements android.view.ailFragment._cls7
{

    final HoleDetailFragment this$0;

    public void onClick(View view)
    {
        HoleDetailFragment.access$1202(HoleDetailFragment.this, view.getId());
        if (HoleDetailFragment.access$1200(HoleDetailFragment.this) == com.biznessapps.layout.t)
        {
            ViewUtils.checkGpsEnabling(getActivity());
        }
        HoleDetailFragment.access$800(HoleDetailFragment.this);
    }

    ()
    {
        this$0 = HoleDetailFragment.this;
        super();
    }
}
