// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.newrelic.agent.android.instrumentation;

import android.os.AsyncTask;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.newrelic.agent.android.tracing.TracingInactiveException;
import com.newrelic.agent.android.util.ExceptionHelper;
import java.util.concurrent.Executor;

public class AsyncTaskInstrumentation
{

    private static final AgentLog log = AgentLogManager.getAgentLog();

    protected AsyncTaskInstrumentation()
    {
    }

    public static final transient AsyncTask execute(AsyncTask asynctask, Object aobj[])
    {
        try
        {
            ((TraceFieldInterface)asynctask)._nr_setTrace(TraceMachine.getCurrentTrace());
        }
        catch (ClassCastException classcastexception)
        {
            ExceptionHelper.recordSupportabilityMetric(classcastexception, "TraceFieldInterface");
            log.error((new StringBuilder()).append("Not a TraceFieldInterface: ").append(classcastexception.getMessage()).toString());
        }
        catch (TracingInactiveException tracinginactiveexception) { }
        catch (NoSuchFieldError nosuchfielderror) { }
        return asynctask.execute(aobj);
    }

    public static final transient AsyncTask executeOnExecutor(AsyncTask asynctask, Executor executor, Object aobj[])
    {
        try
        {
            ((TraceFieldInterface)asynctask)._nr_setTrace(TraceMachine.getCurrentTrace());
        }
        catch (ClassCastException classcastexception)
        {
            ExceptionHelper.recordSupportabilityMetric(classcastexception, "TraceFieldInterface");
            log.error((new StringBuilder()).append("Not a TraceFieldInterface: ").append(classcastexception.getMessage()).toString());
        }
        catch (TracingInactiveException tracinginactiveexception) { }
        catch (NoSuchFieldError nosuchfielderror) { }
        return asynctask.executeOnExecutor(executor, aobj);
    }

}
