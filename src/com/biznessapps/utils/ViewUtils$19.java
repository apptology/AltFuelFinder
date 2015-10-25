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

    public void onClick(View view)
    {
        if (val$dialog.isShowing())
        {
            val$dialog.dismiss();
        }
    }

    (AlertDialog alertdialog)
    {
        val$dialog = alertdialog;
        super();
    }
}
