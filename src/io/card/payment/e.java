// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package io.card.payment;

import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import java.text.CharacterIterator;
import java.text.StringCharacterIterator;

// Referenced classes of package io.card.payment:
//            r, g, CardType

final class e
    implements r
{

    private static int b[] = {
        4, 11
    };
    private static int c[] = {
        4, 9, 14
    };
    private String a;
    private int d;

    public e()
    {
        d = 0;
    }

    public e(String s)
    {
        d = 0;
        a = s;
    }

    public final boolean a()
    {
        if (c()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        boolean flag;
        StringCharacterIterator stringcharacteriterator = new StringCharacterIterator(a);
        char c1 = stringcharacteriterator.last();
        int j = 0;
        for (int i = 0; c1 != '\uFFFF'; i++)
        {
            if (!Character.isDigit(c1))
            {
                break; /* Loop/switch isn't completed */
            }
            j += (new int[][] {
                new int[] {
                    0, 1, 2, 3, 4, 5, 6, 7, 8, 9
                }, new int[] {
                    0, 2, 4, 6, 8, 1, 3, 5, 7, 9
                }
            })[i & 1][c1 - 48];
            c1 = stringcharacteriterator.previous();
        }

        if (j % 10 != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        flag = true;
_L4:
        if (flag)
        {
            return true;
        }
        if (true) goto _L1; else goto _L3
_L3:
        flag = false;
          goto _L4
        if (true) goto _L1; else goto _L5
_L5:
    }

    public final void afterTextChanged(Editable editable)
    {
        boolean flag = false;
        a = g.b(editable.toString());
        CardType cardtype = CardType.fromCardNumber(a);
        int i = ((flag) ? 1 : 0);
        if (d > 1)
        {
            int k = d;
            int l = d - 1;
            d = 0;
            i = ((flag) ? 1 : 0);
            if (k > l)
            {
                editable.delete(l, k);
                i = ((flag) ? 1 : 0);
            }
        }
        while (i < editable.length()) 
        {
            char c1 = editable.charAt(i);
            int j;
            if (cardtype.numberLength() == 15 && (i == 4 || i == 11) || (cardtype.numberLength() == 16 || cardtype.numberLength() == 14) && (i == 4 || i == 9 || i == 14))
            {
                j = i;
                if (c1 != ' ')
                {
                    editable.insert(i, " ");
                    j = i;
                }
            } else
            {
                j = i;
                if (c1 == ' ')
                {
                    editable.delete(i, i + 1);
                    j = i - 1;
                }
            }
            i = j + 1;
        }
    }

    public final String b()
    {
        return a;
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final boolean c()
    {
        CardType cardtype;
        if (!TextUtils.isEmpty(a))
        {
            if (a.length() == (cardtype = CardType.fromCardNumber(a)).numberLength())
            {
                return true;
            }
        }
        return false;
    }

    public final CharSequence filter(CharSequence charsequence, int i, int j, Spanned spanned, int k, int l)
    {
        String s = g.b((new SpannableStringBuilder(spanned)).replace(k, l, charsequence, i, j).toString());
        i = CardType.fromCardNumber(s).numberLength();
        if (s.length() > i)
        {
            return "";
        }
        SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder(charsequence);
        int ai[];
        int i1;
        if (i == 15)
        {
            ai = b;
        } else
        {
            ai = c;
        }
        i1 = l - k;
        for (i = 0; i < ai.length;)
        {
label0:
            {
                if (charsequence.length() == 0 && k == ai[i] && spanned.charAt(k) == ' ')
                {
                    d = ai[i];
                }
                l = j;
                if (k - i1 > ai[i])
                {
                    break label0;
                }
                l = j;
                if ((k + j) - i1 < ai[i])
                {
                    break label0;
                }
                int j1 = ai[i] - k;
                if (j1 != j)
                {
                    l = j;
                    if (j1 < 0)
                    {
                        break label0;
                    }
                    l = j;
                    if (j1 >= j)
                    {
                        break label0;
                    }
                    l = j;
                    if (spannablestringbuilder.charAt(j1) == ' ')
                    {
                        break label0;
                    }
                }
                spannablestringbuilder.insert(j1, " ");
                l = j + 1;
            }
            i++;
            j = l;
        }

        return spannablestringbuilder;
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

}
