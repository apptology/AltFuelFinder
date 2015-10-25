// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeScreenActivity, HomeScreenHelper

class val.isListLayout
    implements TextWatcher
{

    final HomeScreenActivity this$0;
    final boolean val$isListLayout;
    final View val$menuDrawerView;
    final int val$menuSize;

    public void afterTextChanged(Editable editable)
    {
        HomeScreenActivity.access$602(HomeScreenActivity.this, editable.toString());
        HomeScreenHelper.setTabsToSlider(HomeScreenActivity.this, (ViewGroup)val$menuDrawerView, HomeScreenActivity.access$700(HomeScreenActivity.this), val$menuSize, val$isListLayout, HomeScreenActivity.access$800(HomeScreenActivity.this), HomeScreenActivity.access$600(HomeScreenActivity.this));
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    ()
    {
        this$0 = final_homescreenactivity;
        val$menuDrawerView = view;
        val$menuSize = i;
        val$isListLayout = Z.this;
        super();
    }
}
