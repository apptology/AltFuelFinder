// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.newrelic.agent.android.instrumentation;

import java.util.HashMap;

// Referenced classes of package com.newrelic.agent.android.instrumentation:
//            MetricCategory

static final class EW_LOADING extends HashMap
{

    A()
    {
        put("onCreate", MetricCategory.VIEW_LOADING);
    }
}
