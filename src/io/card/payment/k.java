// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package io.card.payment;

import android.text.Editable;
import android.text.Spanned;

// Referenced classes of package io.card.payment:
//            r

final class k
    implements r
{

    public int a;
    private String b;

    public k(int i)
    {
        a = i;
    }

    public final boolean a()
    {
        return b != null && b.length() == a;
    }

    public final void afterTextChanged(Editable editable)
    {
        b = editable.toString();
    }

    public final String b()
    {
        return b;
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int l)
    {
    }

    public final boolean c()
    {
        return a();
    }

    public final CharSequence filter(CharSequence charsequence, int i, int j, Spanned spanned, int l, int i1)
    {
        if (j > 0 && ((spanned.length() + i1) - l) + j > a)
        {
            return "";
        } else
        {
            return null;
        }
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int l)
    {
    }
}
