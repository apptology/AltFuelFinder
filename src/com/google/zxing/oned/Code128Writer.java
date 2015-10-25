// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package com.google.zxing.oned:
//            OneDimensionalCodeWriter, Code128Reader

public final class Code128Writer extends OneDimensionalCodeWriter
{

    private static final int CODE_CODE_B = 100;
    private static final int CODE_CODE_C = 99;
    private static final int CODE_FNC_1 = 102;
    private static final int CODE_FNC_2 = 97;
    private static final int CODE_FNC_3 = 96;
    private static final int CODE_FNC_4_B = 100;
    private static final int CODE_START_B = 104;
    private static final int CODE_START_C = 105;
    private static final int CODE_STOP = 106;
    private static final char ESCAPE_FNC_1 = 241;
    private static final char ESCAPE_FNC_2 = 242;
    private static final char ESCAPE_FNC_3 = 243;
    private static final char ESCAPE_FNC_4 = 244;

    public Code128Writer()
    {
    }

    private static boolean isDigits(CharSequence charsequence, int i, int j)
    {
        int l;
        j = i + j;
        l = charsequence.length();
_L8:
        if (i >= j || i >= l) goto _L2; else goto _L1
_L1:
        char c = charsequence.charAt(i);
        if (c < '0') goto _L4; else goto _L3
_L3:
        int k = j;
        if (c <= '9') goto _L5; else goto _L4
_L4:
        if (c == '\361') goto _L7; else goto _L6
_L6:
        return false;
_L7:
        k = j + 1;
_L5:
        i++;
        j = k;
          goto _L8
_L2:
        if (j <= l)
        {
            return true;
        }
          goto _L6
    }

    public BitMatrix encode(String s, BarcodeFormat barcodeformat, int i, int j, Map map)
        throws WriterException
    {
        if (barcodeformat != BarcodeFormat.CODE_128)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Can only encode CODE_128, but got ").append(barcodeformat).toString());
        } else
        {
            return super.encode(s, barcodeformat, i, j, map);
        }
    }

    public boolean[] encode(String s)
    {
        int i;
        int k2;
        k2 = s.length();
        if (k2 < 1 || k2 > 80)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Contents length should be between 1 and 80 characters, but got ").append(k2).toString());
        }
        i = 0;
_L9:
        Object obj;
        int j;
        int l;
        int j1;
        int l1;
        if (i < k2)
        {
            char c = s.charAt(i);
            if (c < ' ' || c > '~')
            {
                switch (c)
                {
                default:
                    throw new IllegalArgumentException((new StringBuilder()).append("Bad character in input: ").append(c).toString());

                case 241: 
                case 242: 
                case 243: 
                case 244: 
                    break;
                }
            }
            i++;
            continue; /* Loop/switch isn't completed */
        }
        obj = new ArrayList();
        j1 = 0;
        l1 = 1;
        j = 0;
        l = 0;
_L6:
        int i2;
        int j2;
        if (l >= k2)
        {
            break MISSING_BLOCK_LABEL_439;
        }
        if (j == 99)
        {
            i = 2;
        } else
        {
            i = 4;
        }
        if (isDigits(s, l, i))
        {
            i = 99;
        } else
        {
            i = 100;
        }
        if (i != j)
        {
            break MISSING_BLOCK_LABEL_398;
        }
        s.charAt(l);
        JVM INSTR tableswitch 241 244: default 240
    //                   241 346
    //                   242 353
    //                   243 360
    //                   244 367;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        if (j == 100)
        {
            i = s.charAt(l) - 32;
        } else
        {
            i = Integer.parseInt(s.substring(l, l + 2));
            l++;
        }
        i2 = l + 1;
        j2 = i;
        i = j;
_L7:
        ((Collection) (obj)).add(Code128Reader.CODE_PATTERNS[j2]);
        j2 = j1 + j2 * l1;
        j1 = j2;
        j = i;
        l = i2;
        if (i2 != 0)
        {
            l1++;
            j1 = j2;
            j = i;
            l = i2;
        }
          goto _L6
_L2:
        i = 102;
        break MISSING_BLOCK_LABEL_258;
_L3:
        i = 97;
        break MISSING_BLOCK_LABEL_258;
_L4:
        i = 96;
        break MISSING_BLOCK_LABEL_258;
_L5:
        i = 100;
        break MISSING_BLOCK_LABEL_258;
        if (j == 0)
        {
            if (i == 100)
            {
                j = 104;
            } else
            {
                j = 105;
            }
        } else
        {
            j = i;
        }
        j2 = j;
        i2 = l;
          goto _L7
        ((Collection) (obj)).add(Code128Reader.CODE_PATTERNS[j1 % 103]);
        ((Collection) (obj)).add(Code128Reader.CODE_PATTERNS[106]);
        i = 0;
        s = ((Collection) (obj)).iterator();
        do
        {
label0:
            {
                if (!s.hasNext())
                {
                    break label0;
                }
                int ai[] = (int[])s.next();
                int k1 = ai.length;
                int i1 = 0;
                int k = i;
                do
                {
                    i = k;
                    if (i1 >= k1)
                    {
                        break;
                    }
                    k += ai[i1];
                    i1++;
                } while (true);
            }
        } while (true);
        s = new boolean[i];
        i = 0;
        for (obj = ((Collection) (obj)).iterator(); ((Iterator) (obj)).hasNext();)
        {
            i += appendPattern(s, i, (int[])((Iterator) (obj)).next(), true);
        }

        return s;
        if (true) goto _L9; else goto _L8
_L8:
    }
}
