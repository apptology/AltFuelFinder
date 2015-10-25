// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;

import android.app.Activity;
import android.os.AsyncTask;

public abstract class CommonTask extends AsyncTask
{

    protected Activity activity;

    public CommonTask(Activity activity1)
    {
        activity = activity1;
    }

    protected void onActivityAttached()
    {
    }

    protected void onActivityDetached()
    {
    }

    public void setActivity(Activity activity1)
    {
        if (activity1 == null)
        {
            onActivityDetached();
            activity = activity1;
            return;
        } else
        {
            activity = activity1;
            onActivityAttached();
            return;
        }
    }
}
