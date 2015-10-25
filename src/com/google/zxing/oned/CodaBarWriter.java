// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.oned;


// Referenced classes of package com.google.zxing.oned:
//            OneDimensionalCodeWriter, CodaBarReader

public final class CodaBarWriter extends OneDimensionalCodeWriter
{

    private static final char ALT_START_END_CHARS[] = {
        'T', 'N', '*', 'E'
    };
    private static final char CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED[] = {
        '/', ':', '+', '.'
    };
    private static final char DEFAULT_GUARD = START_END_CHARS[0];
    private static final char START_END_CHARS[] = {
        'A', 'B', 'C', 'D'
    };

    public CodaBarWriter()
    {
    }

    public boolean[] encode(String s)
    {
        String s1;
        int i;
        int k;
        if (s.length() < 2)
        {
            s1 = (new StringBuilder()).append(DEFAULT_GUARD).append(s).append(DEFAULT_GUARD).toString();
            break MISSING_BLOCK_LABEL_36;
        } else
        {
            char c = Character.toUpperCase(s.charAt(0));
            char c1 = Character.toUpperCase(s.charAt(s.length() - 1));
            boolean flag1 = CodaBarReader.arrayContains(START_END_CHARS, c);
            boolean flag2 = CodaBarReader.arrayContains(START_END_CHARS, c1);
            boolean flag3 = CodaBarReader.arrayContains(ALT_START_END_CHARS, c);
            boolean flag4 = CodaBarReader.arrayContains(ALT_START_END_CHARS, c1);
            if (flag1)
            {
                s1 = s;
                if (!flag2)
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Invalid start/end guards: ").append(s).toString());
                }
            } else
            if (flag3)
            {
                s1 = s;
                if (!flag4)
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Invalid start/end guards: ").append(s).toString());
                }
            } else
            {
                if (flag2 || flag4)
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Invalid start/end guards: ").append(s).toString());
                }
                s1 = (new StringBuilder()).append(DEFAULT_GUARD).append(s).append(DEFAULT_GUARD).toString();
            }
            continue; /* Loop/switch isn't completed */
        }
_L14:
        int l;
        i = 20;
        k = 1;
        while (k < s1.length() - 1) 
        {
            if (Character.isDigit(s1.charAt(k)) || s1.charAt(k) == '-' || s1.charAt(k) == '$')
            {
                i += 9;
            } else
            if (CodaBarReader.arrayContains(CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED, s1.charAt(k)))
            {
                i += 10;
            } else
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Cannot encode : '").append(s1.charAt(k)).append('\'').toString());
            }
            k++;
        }
        s = new boolean[i + (s1.length() - 1)];
        k = 0;
        l = 0;
_L12:
        if (l >= s1.length()) goto _L2; else goto _L1
_L1:
        char c2 = Character.toUpperCase(s1.charAt(l));
        if (l == 0) goto _L4; else goto _L3
_L3:
        i = c2;
        if (l != s1.length() - 1) goto _L5; else goto _L4
_L4:
        c2;
        JVM INSTR lookupswitch 4: default 484
    //                   42: 607
    //                   69: 614
    //                   78: 600
    //                   84: 593;
           goto _L6 _L7 _L8 _L9 _L10
_L6:
        i = c2;
_L5:
        int j1;
        boolean flag;
        flag = false;
        j1 = 0;
_L11:
        int i1 = ((flag) ? 1 : 0);
        if (j1 < CodaBarReader.ALPHABET.length)
        {
            if (i != CodaBarReader.ALPHABET[j1])
            {
                break MISSING_BLOCK_LABEL_621;
            }
            i1 = CodaBarReader.CHARACTER_ENCODINGS[j1];
        }
        byte byte0 = 1;
        i = 0;
        for (j1 = 0; j1 < 7;)
        {
            s[k] = byte0;
            k++;
            if ((i1 >> 6 - j1 & 1) == 0 || i == true)
            {
                if (byte0 == 0)
                {
                    byte0 = 1;
                } else
                {
                    byte0 = 0;
                }
                j1++;
                i = 0;
            } else
            {
                i++;
            }
        }

        break MISSING_BLOCK_LABEL_645;
_L10:
        i = 65;
          goto _L5
_L9:
        i = 66;
          goto _L5
_L7:
        i = 67;
          goto _L5
_L8:
        i = 68;
          goto _L5
        j1++;
          goto _L11
        int j = k;
        if (l < s1.length() - 1)
        {
            s[k] = 0;
            j = k + 1;
        }
        l++;
        k = j;
          goto _L12
_L2:
        return s;
        if (true) goto _L14; else goto _L13
_L13:
    }

}
