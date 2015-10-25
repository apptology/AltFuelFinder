// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.components;

import android.text.Editable;
import android.text.TextWatcher;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;

// Referenced classes of package com.biznessapps.common.components:
//            LocalizationDecimalEditText

class mOldStr
    implements TextWatcher
{

    private String mOldStr;
    final LocalizationDecimalEditText this$0;

    public void afterTextChanged(Editable editable)
    {
        if (editable == null) goto _L2; else goto _L1
_L1:
        String s = editable.toString();
        String s1;
        s1 = s.replace('.', LocalizationDecimalEditText.access$100(LocalizationDecimalEditText.this).getDecimalFormatSymbols().getDecimalSeparator());
        if (LocalizationDecimalEditText.access$200(LocalizationDecimalEditText.this, s1, LocalizationDecimalEditText.access$100(LocalizationDecimalEditText.this).getDecimalFormatSymbols().getDecimalSeparator()) > 1)
        {
            int i = getSelectionStart();
            int k = getSelectionEnd();
            setText(mOldStr);
            setSelection(i - 1, k - 1);
        }
        if (s1.equals(s)) goto _L2; else goto _L3
_L3:
        int j = getSelectionStart();
        setText(s1);
        setSelection(j, j);
_L4:
        return;
        Exception exception;
        exception;
_L2:
        if (LocalizationDecimalEditText.access$000(LocalizationDecimalEditText.this) != null)
        {
            LocalizationDecimalEditText.access$000(LocalizationDecimalEditText.this).afterTextChanged(editable);
            return;
        }
          goto _L4
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        if (LocalizationDecimalEditText.access$000(LocalizationDecimalEditText.this) != null)
        {
            LocalizationDecimalEditText.access$000(LocalizationDecimalEditText.this).beforeTextChanged(charsequence, i, j, k);
        }
        mOldStr = charsequence.toString();
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        if (LocalizationDecimalEditText.access$000(LocalizationDecimalEditText.this) != null)
        {
            LocalizationDecimalEditText.access$000(LocalizationDecimalEditText.this).onTextChanged(charsequence, i, j, k);
        }
    }

    ()
    {
        this$0 = LocalizationDecimalEditText.this;
        super();
        mOldStr = "";
    }
}
