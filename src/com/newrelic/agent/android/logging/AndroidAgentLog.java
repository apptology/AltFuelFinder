// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.newrelic.agent.android.logging;

import android.util.Log;

// Referenced classes of package com.newrelic.agent.android.logging:
//            AgentLog

public class AndroidAgentLog
    implements AgentLog
{

    private static final String TAG = "com.newrelic.agent.android";
    private int level;

    public AndroidAgentLog()
    {
        level = 3;
    }

    public void debug(String s)
    {
        if (level == 5)
        {
            Log.d("com.newrelic.agent.android", s);
        }
    }

    public void error(String s)
    {
        if (level >= 1)
        {
            Log.e("com.newrelic.agent.android", s);
        }
    }

    public void error(String s, Throwable throwable)
    {
        if (level >= 1)
        {
            Log.e("com.newrelic.agent.android", s, throwable);
        }
    }

    public int getLevel()
    {
        return level;
    }

    public void info(String s)
    {
        if (level >= 3)
        {
            Log.i("com.newrelic.agent.android", s);
        }
    }

    public void setLevel(int i)
    {
        if (i <= 5 && i >= 1)
        {
            level = i;
            return;
        } else
        {
            throw new IllegalArgumentException("Log level is not between ERROR and DEBUG");
        }
    }

    public void verbose(String s)
    {
        if (level >= 4)
        {
            Log.v("com.newrelic.agent.android", s);
        }
    }

    public void warning(String s)
    {
        if (level >= 2)
        {
            Log.w("com.newrelic.agent.android", s);
        }
    }
}
