// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.os.Bundle;
import com.facebook.internal.Logger;
import java.io.Serializable;

// Referenced classes of package com.facebook:
//            AppEventsLogger, LoggingBehavior

class FacebookTimeSpentData
    implements Serializable
{
    private static class SerializationProxyV1
        implements Serializable
    {

        private static final long serialVersionUID = 6L;
        private final int interruptionCount;
        private final long lastResumeTime;
        private final long lastSuspendTime;
        private final long millisecondsSpentInSession;

        private Object readResolve()
        {
            return new FacebookTimeSpentData(lastResumeTime, lastSuspendTime, millisecondsSpentInSession, interruptionCount);
        }

        SerializationProxyV1(long l, long l1, long l2, int i)
        {
            lastResumeTime = l;
            lastSuspendTime = l1;
            millisecondsSpentInSession = l2;
            interruptionCount = i;
        }
    }


    private static final long APP_ACTIVATE_SUPPRESSION_PERIOD_IN_MILLISECONDS = 0x493e0L;
    private static final long FIRST_TIME_LOAD_RESUME_TIME = -1L;
    private static final long INACTIVE_SECONDS_QUANTA[] = {
        0x493e0L, 0xdbba0L, 0x1b7740L, 0x36ee80L, 0x1499700L, 0x2932e00L, 0x5265c00L, 0xa4cb800L, 0xf731400L, 0x240c8400L, 
        0x48190800L, 0x6c258c00L, 0x90321000L, 0x134fd9000L, 0x1cf7c5800L, 0x269fb2000L, 0x30479e800L, 0x39ef8b000L, 0x757b12c00L
    };
    private static final long INTERRUPTION_THRESHOLD_MILLISECONDS = 1000L;
    private static final long NUM_MILLISECONDS_IDLE_TO_BE_NEW_SESSION = 60000L;
    private static final String TAG = com/facebook/AppEventsLogger.getCanonicalName();
    private static final long serialVersionUID = 1L;
    private int interruptionCount;
    private boolean isAppActive;
    private boolean isWarmLaunch;
    private long lastActivateEventLoggedTime;
    private long lastResumeTime;
    private long lastSuspendTime;
    private long millisecondsSpentInSession;

    FacebookTimeSpentData()
    {
        resetSession();
    }

    private FacebookTimeSpentData(long l, long l1, long l2, int i)
    {
        resetSession();
        lastResumeTime = l;
        lastSuspendTime = l1;
        millisecondsSpentInSession = l2;
        interruptionCount = i;
    }

    FacebookTimeSpentData(long l, long l1, long l2, int i, 
            _cls1 _pcls1)
    {
        this(l, l1, l2, i);
    }

    private static int getQuantaIndex(long l)
    {
        int i;
        for (i = 0; i < INACTIVE_SECONDS_QUANTA.length && INACTIVE_SECONDS_QUANTA[i] < l; i++) { }
        return i;
    }

    private boolean isColdLaunch()
    {
        boolean flag;
        if (!isWarmLaunch)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        isWarmLaunch = true;
        return flag;
    }

    private void logAppDeactivatedEvent(AppEventsLogger appeventslogger, long l)
    {
        Bundle bundle = new Bundle();
        bundle.putInt("fb_mobile_app_interruptions", interruptionCount);
        bundle.putInt("fb_mobile_time_between_sessions", getQuantaIndex(l));
        appeventslogger.logEvent("fb_mobile_deactivate_app", millisecondsSpentInSession / 1000L, bundle);
        resetSession();
    }

    private void resetSession()
    {
        isAppActive = false;
        lastResumeTime = -1L;
        lastSuspendTime = -1L;
        interruptionCount = 0;
        millisecondsSpentInSession = 0L;
    }

    private boolean wasSuspendedEver()
    {
        return lastSuspendTime != -1L;
    }

    private Object writeReplace()
    {
        return new SerializationProxyV1(lastResumeTime, lastSuspendTime, millisecondsSpentInSession, interruptionCount);
    }

    void onResume(AppEventsLogger appeventslogger, long l)
    {
        long l2;
        if (isColdLaunch() || l - lastActivateEventLoggedTime > 0x493e0L)
        {
            appeventslogger.logEvent("fb_mobile_activate_app");
            lastActivateEventLoggedTime = l;
        }
        if (isAppActive)
        {
            Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Resume for active app");
            return;
        }
        long l1;
        if (wasSuspendedEver())
        {
            l1 = l - lastSuspendTime;
        } else
        {
            l1 = 0L;
        }
        l2 = l1;
        if (l1 < 0L)
        {
            Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Clock skew detected");
            l2 = 0L;
        }
        if (l2 <= 60000L) goto _L2; else goto _L1
_L1:
        logAppDeactivatedEvent(appeventslogger, l2);
_L4:
        lastResumeTime = l;
        isAppActive = true;
        return;
_L2:
        if (l2 > 1000L)
        {
            interruptionCount = interruptionCount + 1;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    void onSuspend(AppEventsLogger appeventslogger, long l)
    {
        if (!isAppActive)
        {
            Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Suspend for inactive app");
            return;
        }
        long l2 = l - lastResumeTime;
        long l1 = l2;
        if (l2 < 0L)
        {
            Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Clock skew detected");
            l1 = 0L;
        }
        millisecondsSpentInSession = millisecondsSpentInSession + l1;
        lastSuspendTime = l;
        isAppActive = false;
    }

}
