// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.newrelic.agent.android.util;

import com.newrelic.agent.android.background.ApplicationStateMonitor;

// Referenced classes of package com.newrelic.agent.android.util:
//            ActivityLifecycleBackgroundListener

class this._cls0
    implements Runnable
{

    final ActivityLifecycleBackgroundListener this$0;

    public void run()
    {
        ApplicationStateMonitor.getInstance().activityStarted();
    }

    ()
    {
        this$0 = ActivityLifecycleBackgroundListener.this;
        super();
    }
}
