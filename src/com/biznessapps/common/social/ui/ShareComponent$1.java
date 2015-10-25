// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.TextView;

// Referenced classes of package com.biznessapps.common.social.ui:
//            ShareComponent

static final class val.textLimit
    implements TextWatcher
{

    final EditText val$commentEditView;
    final TextView val$messageCounterView;
    final int val$textLimit;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        ShareComponent.access$000(val$commentEditView.getText().toString(), val$messageCounterView, val$textLimit);
    }

    (EditText edittext, TextView textview, int i)
    {
        val$commentEditView = edittext;
        val$messageCounterView = textview;
        val$textLimit = i;
        super();
    }
}
