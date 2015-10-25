// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.content.DialogInterface;
import android.widget.EditText;

// Referenced classes of package com.biznessapps.common.social.ui:
//            ShareComponent

static final class val.listener
    implements android.content.nClickListener
{

    final EditText val$commentEditView;
    final stCommentListener val$listener;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface = val$commentEditView.getText().toString();
        if (val$listener != null)
        {
            val$listener.onCommentEntered(dialoginterface);
        }
    }

    stCommentListener(EditText edittext, stCommentListener stcommentlistener)
    {
        val$commentEditView = edittext;
        val$listener = stcommentlistener;
        super();
    }
}
