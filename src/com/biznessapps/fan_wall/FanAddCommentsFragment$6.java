// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

// Referenced classes of package com.biznessapps.fan_wall:
//            FanAddCommentsFragment

class this._cls0
    implements TextWatcher
{

    final FanAddCommentsFragment this$0;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        charsequence = FanAddCommentsFragment.access$000(FanAddCommentsFragment.this).getText().toString();
        FanAddCommentsFragment.access$300(FanAddCommentsFragment.this, charsequence);
    }

    ()
    {
        this$0 = FanAddCommentsFragment.this;
        super();
    }
}
