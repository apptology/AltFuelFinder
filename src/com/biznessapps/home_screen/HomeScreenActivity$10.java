// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.content.Intent;
import android.content.SharedPreferences;
import android.view.View;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.common.entities.AppSettings;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeScreenActivity

class val.viewControoler
    implements android.view.eenActivity._cls10
{

    final HomeScreenActivity this$0;
    final String val$viewControoler;

    public void onClick(View view)
    {
        view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass(val$viewControoler));
        SharedPreferences sharedpreferences = getSharedPreferences("ba.application.settings", 0);
        view.putExtra("TAB_LABEL", sharedpreferences.getString((new StringBuilder()).append("TAB_LABEL").append(val$viewControoler).toString(), ""));
        view.putExtra("TAB_SPECIAL_ID", sharedpreferences.getString((new StringBuilder()).append("TAB_SPECIAL_ID").append(val$viewControoler).toString(), ""));
        if ("messagesviewcontroller".equalsIgnoreCase(val$viewControoler))
        {
            view.putExtra("TAB_SPECIAL_ID", HomeScreenActivity.access$1200(HomeScreenActivity.this).getMessateLinkedTab());
        }
        view.putExtra("TAB_FRAGMENT", val$viewControoler);
        startActivity(view);
    }

    ()
    {
        this$0 = final_homescreenactivity;
        val$viewControoler = String.this;
        super();
    }
}
