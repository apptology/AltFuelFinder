// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;


// Referenced classes of package com.facebook:
//            AppEventsLogger

static final class val.eventTime
    implements Runnable
{

    final long val$eventTime;
    final AppEventsLogger val$logger;

    public void run()
    {
        AppEventsLogger.access$100(val$logger, val$eventTime);
    }

    (AppEventsLogger appeventslogger, long l)
    {
        val$logger = appeventslogger;
        val$eventTime = l;
        super();
    }
}
