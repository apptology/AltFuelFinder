// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.widget.EditText;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeScreenActivity

class val.searchEditText
    implements net.simonvt.menudrawer.ateChangeListener
{

    final HomeScreenActivity this$0;
    final EditText val$searchEditText;

    public void onDrawerStateChange(int i, int j)
    {
        if (j == 0)
        {
            ViewUtils.closeKeyboard(getApplicationContext(), val$searchEditText);
        }
    }

    angeListener()
    {
        this$0 = final_homescreenactivity;
        val$searchEditText = EditText.this;
        super();
    }
}
