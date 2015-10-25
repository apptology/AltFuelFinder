// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.components;

import android.widget.EditText;
import android.widget.TextView;

// Referenced classes of package com.biznessapps.common.components:
//            SearchTopBar

class this._cls0
    implements com.biznessapps.common.fragments.ent.ScreenListener
{

    final SearchTopBar this$0;

    public void onResumed()
    {
        int i = SearchTopBar.access$000(SearchTopBar.this).getVisibility();
        TextView textview = SearchTopBar.access$200(SearchTopBar.this);
        if (i == 0)
        {
            i = 8;
        } else
        {
            i = 0;
        }
        textview.setVisibility(i);
    }

    nt.ScreenListener()
    {
        this$0 = SearchTopBar.this;
        super();
    }
}
