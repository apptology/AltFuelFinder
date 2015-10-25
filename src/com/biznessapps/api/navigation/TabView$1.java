// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api.navigation;

import android.view.View;

// Referenced classes of package com.biznessapps.api.navigation:
//            TabView

class this._cls0
    implements android.view.ckListener
{

    final TabView this$0;

    public void onClick(View view)
    {
        if (TabView.access$000(TabView.this) != null)
        {
            TabView.access$000(TabView.this).run();
            setSelected(true);
        }
    }

    ()
    {
        this$0 = TabView.this;
        super();
    }
}
