// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.app.AlertDialog;
import android.view.View;

// Referenced classes of package com.biznessapps.events:
//            UploadPhotoUtils

static final class val.dialog
    implements android.view.r
{

    final AlertDialog val$dialog;
    final loadPhotoTextListener val$listener;

    public void onClick(View view)
    {
        val$listener.onCancel();
        if (val$dialog.isShowing())
        {
            val$dialog.dismiss();
        }
    }

    loadPhotoTextListener(loadPhotoTextListener loadphototextlistener, AlertDialog alertdialog)
    {
        val$listener = loadphototextlistener;
        val$dialog = alertdialog;
        super();
    }
}
