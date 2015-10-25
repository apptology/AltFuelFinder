// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.app.Activity;
import android.app.ProgressDialog;
import com.biznessapps.api.AsyncCallback;

// Referenced classes of package com.biznessapps.common.social.ui:
//            ShareComponent, OnSharingCompletedListener

static final class val.listener extends AsyncCallback
{

    final Activity val$activity;
    final ProgressDialog val$dialog;
    final OnSharingCompletedListener val$listener;

    public void onError(String s, Throwable throwable)
    {
        val$dialog.hide();
        if (val$listener != null)
        {
            val$listener.onSharingError(0, val$activity.getString(com.biznessapps.layout.error), val$activity.getString(com.biznessapps.layout.error));
        }
    }

    public volatile void onResult(Object obj)
    {
        onResult((String)obj);
    }

    public void onResult(String s)
    {
        val$dialog.hide();
        ShareComponent.access$100(val$activity, 207, s, null, null, val$listener);
    }

    dListener(ProgressDialog progressdialog, Activity activity1, OnSharingCompletedListener onsharingcompletedlistener)
    {
        val$dialog = progressdialog;
        val$activity = activity1;
        val$listener = onsharingcompletedlistener;
        super();
    }
}
