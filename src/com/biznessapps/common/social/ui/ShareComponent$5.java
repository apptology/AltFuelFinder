// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.content.DialogInterface;

// Referenced classes of package com.biznessapps.common.social.ui:
//            ShareComponent, OnSharingCompletedListener

static final class val.listener
    implements android.content.nCancelListener
{

    final OnSharingCompletedListener val$listener;

    public void onCancel(DialogInterface dialoginterface)
    {
        if (val$listener != null)
        {
            val$listener.onSharingCanceled();
        }
    }

    dListener(OnSharingCompletedListener onsharingcompletedlistener)
    {
        val$listener = onsharingcompletedlistener;
        super();
    }
}
