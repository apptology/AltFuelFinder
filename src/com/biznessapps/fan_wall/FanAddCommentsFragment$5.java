// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.biznessapps.fan_wall:
//            FanAddCommentsFragment

class this._cls0
    implements android.view.sFragment._cls5
{

    final FanAddCommentsFragment this$0;

    public boolean onKey(View view, int i, KeyEvent keyevent)
    {
        view = FanAddCommentsFragment.access$000(FanAddCommentsFragment.this).getText().toString();
        FanAddCommentsFragment.access$300(FanAddCommentsFragment.this, view);
        if (keyevent.getAction() == 0)
        {
            if (i != 66);
        }
        return false;
    }

    ()
    {
        this$0 = FanAddCommentsFragment.this;
        super();
    }
}
