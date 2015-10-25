// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeScreenActivity, HomeScreenHelper

class val.isListLayout
    implements android.view.reenActivity._cls9
{

    final HomeScreenActivity this$0;
    final boolean val$isListLayout;
    final View val$menuDrawerView;
    final int val$menuSize;
    final EditText val$searchEditText;

    public void onClick(View view)
    {
        HomeScreenActivity.access$602(HomeScreenActivity.this, "");
        val$searchEditText.setText(HomeScreenActivity.access$600(HomeScreenActivity.this));
        ViewUtils.closeKeyboard(getApplicationContext(), val$searchEditText);
        HomeScreenHelper.setTabsToSlider(HomeScreenActivity.this, (ViewGroup)val$menuDrawerView, HomeScreenActivity.access$700(HomeScreenActivity.this), val$menuSize, val$isListLayout, HomeScreenActivity.access$900(HomeScreenActivity.this), HomeScreenActivity.access$600(HomeScreenActivity.this));
    }

    ()
    {
        this$0 = final_homescreenactivity;
        val$searchEditText = edittext;
        val$menuDrawerView = view;
        val$menuSize = i;
        val$isListLayout = Z.this;
        super();
    }
}
