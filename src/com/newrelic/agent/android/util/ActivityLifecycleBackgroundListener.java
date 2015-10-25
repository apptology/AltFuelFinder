// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.newrelic.agent.android.util;

import android.app.Activity;
import android.os.Bundle;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.newrelic.agent.android.util:
//            UiBackgroundListener

public class ActivityLifecycleBackgroundListener extends UiBackgroundListener
    implements android.app.Application.ActivityLifecycleCallbacks
{

    private static final AgentLog log = AgentLogManager.getAgentLog();
    private AtomicBoolean isInBackground;

    public ActivityLifecycleBackgroundListener()
    {
        isInBackground = new AtomicBoolean(false);
    }

    public void onActivityCreated(Activity activity, Bundle bundle)
    {
        isInBackground.set(false);
    }

    public void onActivityDestroyed(Activity activity)
    {
        isInBackground.set(false);
    }

    public void onActivityPaused(Activity activity)
    {
    }

    public void onActivityResumed(Activity activity)
    {
        log.debug((new StringBuilder()).append("ActivityLifecycleBackgroundListener.onActivityResumed Activity[").append(activity.toString()).toString());
        if (isInBackground.getAndSet(false))
        {
            activity = new Runnable() {

                final ActivityLifecycleBackgroundListener this$0;

                public void run()
                {
                    ApplicationStateMonitor.getInstance().activityStarted();
                }

            
            {
                this$0 = ActivityLifecycleBackgroundListener.this;
                super();
            }
            };
            executor.submit(activity);
        }
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle)
    {
    }

    public void onActivityStarted(Activity activity)
    {
    }

    public void onActivityStopped(Activity activity)
    {
    }

    public void onTrimMemory(int i)
    {
        if (20 == i)
        {
            isInBackground.set(true);
        }
        super.onTrimMemory(i);
    }

}
