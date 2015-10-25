// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;


// Referenced classes of package com.biznessapps.home_screen:
//            HomeScreenActivity, HomeScreenHelper

class this._cls0
    implements com.biznessapps.localization.ationListener
{

    final HomeScreenActivity this$0;

    public void onLanguageChanged()
    {
        HomeScreenActivity homescreenactivity = HomeScreenActivity.this;
        if (homescreenactivity != null && HomeScreenActivity.access$000(HomeScreenActivity.this) != null)
        {
            HomeScreenHelper.updateHomeButtons(homescreenactivity, HomeScreenActivity.access$000(HomeScreenActivity.this), HomeScreenActivity.access$100(HomeScreenActivity.this));
        }
    }

    zationListener()
    {
        this$0 = HomeScreenActivity.this;
        super();
    }
}
