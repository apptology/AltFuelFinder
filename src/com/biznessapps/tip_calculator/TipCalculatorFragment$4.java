// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.tip_calculator;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;

// Referenced classes of package com.biznessapps.tip_calculator:
//            TipCalculatorFragment

class this._cls0
    implements android.widget.istener
{

    final TipCalculatorFragment this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (i == 5)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (i != 0)
        {
            TipCalculatorFragment.access$300(TipCalculatorFragment.this).requestFocus();
        }
        return true;
    }

    ()
    {
        this$0 = TipCalculatorFragment.this;
        super();
    }
}
