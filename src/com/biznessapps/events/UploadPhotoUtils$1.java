// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.app.AlertDialog;
import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.biznessapps.events:
//            UploadPhotoUtils

static final class val.dialog
    implements android.view.r
{

    final EditText val$captionEditText;
    final AlertDialog val$dialog;
    final loadPhotoTextListener val$listener;

    public void onClick(View view)
    {
        view = val$captionEditText.getText().toString();
        val$listener.onCaptionSelected(view);
        if (val$dialog.isShowing())
        {
            val$dialog.dismiss();
        }
    }

    loadPhotoTextListener(EditText edittext, loadPhotoTextListener loadphototextlistener, AlertDialog alertdialog)
    {
        val$captionEditText = edittext;
        val$listener = loadphototextlistener;
        val$dialog = alertdialog;
        super();
    }
}
