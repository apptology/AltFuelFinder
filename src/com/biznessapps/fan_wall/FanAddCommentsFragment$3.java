// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.biznessapps.fan_wall:
//            FanAddCommentsFragment

class this._cls0
    implements android.view.sFragment._cls3
{

    final FanAddCommentsFragment this$0;

    public void onClick(View view)
    {
        if (FanAddCommentsFragment.access$000(FanAddCommentsFragment.this).getText().toString().length() <= 250)
        {
            FanAddCommentsFragment.access$100(FanAddCommentsFragment.this);
        }
    }

    ()
    {
        this$0 = FanAddCommentsFragment.this;
        super();
    }
}
