// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account.address;

import android.widget.EditText;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.food_ordering.account.address:
//            ChooseLocationFragment

class val.searchEditText
    implements Runnable
{

    final ChooseLocationFragment this$0;
    final EditText val$searchEditText;

    public void run()
    {
        ChooseLocationFragment.access$002(ChooseLocationFragment.this, val$searchEditText.getText().toString());
        ViewUtils.closeKeyboard(getApplicationContext(), val$searchEditText);
        ChooseLocationFragment.access$200(ChooseLocationFragment.this, ChooseLocationFragment.access$100(ChooseLocationFragment.this));
    }

    ()
    {
        this$0 = final_chooselocationfragment;
        val$searchEditText = EditText.this;
        super();
    }
}
