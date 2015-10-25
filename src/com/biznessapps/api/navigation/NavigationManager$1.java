// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api.navigation;

import android.content.Intent;

// Referenced classes of package com.biznessapps.api.navigation:
//            NavigationManager

class val.comingIntent
    implements Runnable
{

    final NavigationManager this$0;
    final Intent val$comingIntent;

    public void run()
    {
        NavigationManager.access$000(NavigationManager.this, val$comingIntent);
    }

    ()
    {
        this$0 = final_navigationmanager;
        val$comingIntent = Intent.this;
        super();
    }
}
