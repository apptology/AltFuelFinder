// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fragments.single;

import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.biznessapps.common.activities.CommonFragmentActivity;

// Referenced classes of package com.biznessapps.fragments.single:
//            PreviewAppFragment

class this._cls0
    implements android.view.obalLayoutListener
{

    final PreviewAppFragment this$0;

    public void onGlobalLayout()
    {
        if (PreviewAppFragment.access$200(PreviewAppFragment.this).getRootView().getHeight() - PreviewAppFragment.access$300(PreviewAppFragment.this).getHeight() <= getHoldActivity().getWindow().findViewById(0x1020002).getTop())
        {
            PreviewAppFragment.access$400(PreviewAppFragment.this, false);
            return;
        } else
        {
            PreviewAppFragment.access$400(PreviewAppFragment.this, true);
            return;
        }
    }

    ty()
    {
        this$0 = PreviewAppFragment.this;
        super();
    }
}
