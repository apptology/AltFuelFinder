// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.view.View;
import com.biznessapps.utils.TabUtils;
import java.util.List;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeAnimation

class val.url
    implements android.view.ener
{

    final HomeAnimation this$0;
    final String val$url;

    public void onClick(View view)
    {
        TabUtils.openLinkedTab(HomeAnimation.access$300(HomeAnimation.this).indexOf(val$url), HomeAnimation.access$100(HomeAnimation.this));
    }

    ()
    {
        this$0 = final_homeanimation;
        val$url = String.this;
        super();
    }
}
