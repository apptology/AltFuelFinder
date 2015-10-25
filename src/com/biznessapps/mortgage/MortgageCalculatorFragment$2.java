// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.mortgage;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;

// Referenced classes of package com.biznessapps.mortgage:
//            MortgageCalculatorFragment

class this._cls0
    implements android.widget.er
{

    final MortgageCalculatorFragment this$0;

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
            MortgageCalculatorFragment.access$200(MortgageCalculatorFragment.this).requestFocus();
        }
        return true;
    }

    ()
    {
        this$0 = MortgageCalculatorFragment.this;
        super();
    }
}
