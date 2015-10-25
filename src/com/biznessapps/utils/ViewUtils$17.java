// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.app.AlertDialog;
import android.view.View;

// Referenced classes of package com.biznessapps.utils:
//            ViewUtils

static final class val.dialog
    implements android.view.istener
{

    final AlertDialog val$dialog;
    final Runnable val$takePhotoRunnable;

    public void onClick(View view)
    {
        val$takePhotoRunnable.run();
        if (val$dialog.isShowing())
        {
            val$dialog.dismiss();
        }
    }

    (Runnable runnable, AlertDialog alertdialog)
    {
        val$takePhotoRunnable = runnable;
        val$dialog = alertdialog;
        super();
    }
}
