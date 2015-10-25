// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.support.v4.app.Fragment;
import android.view.View;

// Referenced classes of package com.biznessapps.utils:
//            ViewUtils

static final class val.dialog
    implements android.view.istener
{

    final Activity val$activity;
    final AlertDialog val$dialog;
    final Fragment val$fragment;

    public void onClick(View view)
    {
        if (val$fragment != null)
        {
            ViewUtils.access$000(val$fragment);
        } else
        {
            ViewUtils.access$100(val$activity);
        }
        if (val$dialog.isShowing())
        {
            val$dialog.dismiss();
        }
    }

    (Fragment fragment1, Activity activity1, AlertDialog alertdialog)
    {
        val$fragment = fragment1;
        val$activity = activity1;
        val$dialog = alertdialog;
        super();
    }
}
