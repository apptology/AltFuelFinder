// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fragments.single;

import android.view.View;
import com.biznessapps.api.UrlWrapper;

// Referenced classes of package com.biznessapps.fragments.single:
//            PreviewAppFragment

class this._cls0
    implements android.view.reviewAppFragment._cls8
{

    final PreviewAppFragment this$0;

    public void onClick(View view)
    {
        UrlWrapper.getInstance().useStaging();
        PreviewAppFragment.access$1000(PreviewAppFragment.this, PreviewAppFragment.access$1100(PreviewAppFragment.this));
    }

    ()
    {
        this$0 = PreviewAppFragment.this;
        super();
    }
}
