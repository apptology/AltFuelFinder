// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.app.Activity;
import android.graphics.Bitmap;
import com.biznessapps.api.AsyncCallback;

// Referenced classes of package com.biznessapps.common.social.ui:
//            ShareComponent, OnSharingCompletedListener

static final class val.bitmap extends AsyncCallback
{

    final Activity val$activity;
    final Bitmap val$bitmap;
    final OnSharingCompletedListener val$listener;
    final String val$orgPath;
    final String val$text;

    public void onError(String s, Throwable throwable)
    {
        while (getMeta() == null || val$listener == null) 
        {
            return;
        }
        val$listener.onSharingError(1, val$activity.getString(com.biznessapps.layout.error), val$activity.getString(com.biznessapps.layout.error));
    }

    public volatile void onResult(Object obj)
    {
        onResult((String)obj);
    }

    public void onResult(String s)
    {
        ShareComponent.access$200(val$activity, s, val$text, val$listener, val$orgPath, val$bitmap);
    }

    dListener(Activity activity1, String s, OnSharingCompletedListener onsharingcompletedlistener, String s1, Bitmap bitmap1)
    {
        val$activity = activity1;
        val$text = s;
        val$listener = onsharingcompletedlistener;
        val$orgPath = s1;
        val$bitmap = bitmap1;
        super();
    }
}
