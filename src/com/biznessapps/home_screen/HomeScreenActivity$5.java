// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.content.Intent;
import com.biznessapps.api.ActivitySelector;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeScreenActivity

class this._cls0
    implements Runnable
{

    final HomeScreenActivity this$0;

    public void run()
    {
        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("GLOBAL_SEARCH_VIEW_CONTROLLER"));
        intent.putExtra("TAB_FRAGMENT", "GLOBAL_SEARCH_VIEW_CONTROLLER");
        startActivity(intent);
    }

    ()
    {
        this$0 = HomeScreenActivity.this;
        super();
    }
}
