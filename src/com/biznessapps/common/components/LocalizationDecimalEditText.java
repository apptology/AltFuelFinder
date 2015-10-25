// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.components;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.widget.EditText;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.util.Locale;

public class LocalizationDecimalEditText extends EditText
{

    private DecimalFormat mDecimalFormat;
    private TextWatcher mDefaultWatcher = new TextWatcher() {

        private String mOldStr;
        final LocalizationDecimalEditText this$0;

        public void afterTextChanged(Editable editable)
        {
            if (editable == null) goto _L2; else goto _L1
_L1:
            String s = editable.toString();
            String s1;
            s1 = s.replace('.', mDecimalFormat.getDecimalFormatSymbols().getDecimalSeparator());
            if (getSymbolCount(s1, mDecimalFormat.getDecimalFormatSymbols().getDecimalSeparator()) > 1)
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
            if (mWatcher != null)
            {
                mWatcher.afterTextChanged(editable);
                return;
            }
              goto _L4
        }

        public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
        {
            if (mWatcher != null)
            {
                mWatcher.beforeTextChanged(charsequence, i, j, k);
            }
            mOldStr = charsequence.toString();
        }

        public void onTextChanged(CharSequence charsequence, int i, int j, int k)
        {
            if (mWatcher != null)
            {
                mWatcher.onTextChanged(charsequence, i, j, k);
            }
        }

            
            {
                this$0 = LocalizationDecimalEditText.this;
                super();
                mOldStr = "";
            }
    };
    private TextWatcher mWatcher;

    public LocalizationDecimalEditText(Context context)
    {
        super(context);
        initComponent();
    }

    public LocalizationDecimalEditText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        initComponent();
    }

    public LocalizationDecimalEditText(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        initComponent();
    }

    private int getSymbolCount(String s, char c)
    {
        int k = 0;
        int i = 0;
        if (s != null)
        {
            int j = 0;
            do
            {
                k = i;
                if (j >= s.length())
                {
                    break;
                }
                k = i;
                if (s.charAt(j) == c)
                {
                    k = i + 1;
                }
                j++;
                i = k;
            } while (true);
        }
        return k;
    }

    private void initComponent()
    {
        setInputType(8194);
        mDecimalFormat = (DecimalFormat)NumberFormat.getNumberInstance(Locale.getDefault());
        super.addTextChangedListener(mDefaultWatcher);
    }

    public void addTextChangedListener(TextWatcher textwatcher)
    {
        mWatcher = textwatcher;
    }

    public double getDecimalValue()
    {
        String s = getText().toString();
        double d;
        try
        {
            d = mDecimalFormat.parse(s).doubleValue();
        }
        catch (Exception exception)
        {
            return 0.0D;
        }
        return d;
    }



}
