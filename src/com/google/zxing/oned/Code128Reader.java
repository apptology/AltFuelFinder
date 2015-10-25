// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.google.zxing.oned:
//            OneDReader

public final class Code128Reader extends OneDReader
{

    private static final int CODE_CODE_A = 101;
    private static final int CODE_CODE_B = 100;
    private static final int CODE_CODE_C = 99;
    private static final int CODE_FNC_1 = 102;
    private static final int CODE_FNC_2 = 97;
    private static final int CODE_FNC_3 = 96;
    private static final int CODE_FNC_4_A = 101;
    private static final int CODE_FNC_4_B = 100;
    static final int CODE_PATTERNS[][];
    private static final int CODE_SHIFT = 98;
    private static final int CODE_START_A = 103;
    private static final int CODE_START_B = 104;
    private static final int CODE_START_C = 105;
    private static final int CODE_STOP = 106;
    private static final float MAX_AVG_VARIANCE = 0.25F;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.7F;

    public Code128Reader()
    {
    }

    private static int decodeCode(BitArray bitarray, int ai[], int i)
        throws NotFoundException
    {
        recordPattern(bitarray, i, ai);
        float f = 0.25F;
        int j = -1;
        for (i = 0; i < CODE_PATTERNS.length;)
        {
            float f2 = patternMatchVariance(ai, CODE_PATTERNS[i], 0.7F);
            float f1 = f;
            if (f2 < f)
            {
                f1 = f2;
                j = i;
            }
            i++;
            f = f1;
        }

        if (j >= 0)
        {
            return j;
        } else
        {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    private static int[] findStartPattern(BitArray bitarray)
        throws NotFoundException
    {
        int i1 = bitarray.getSize();
        int k = bitarray.getNextSet(0);
        int l = 0;
        int ai[] = new int[6];
        int i = k;
        boolean flag = false;
        int j1 = ai.length;
        while (k < i1) 
        {
            int j;
            if (bitarray.get(k) ^ flag)
            {
                ai[l] = ai[l] + 1;
                j = l;
            } else
            {
                if (l == j1 - 1)
                {
                    float f = 0.25F;
                    byte byte0 = -1;
                    for (j = 103; j <= 105;)
                    {
                        float f2 = patternMatchVariance(ai, CODE_PATTERNS[j], 0.7F);
                        float f1 = f;
                        if (f2 < f)
                        {
                            f1 = f2;
                            byte0 = j;
                        }
                        j++;
                        f = f1;
                    }

                    if (byte0 >= 0 && bitarray.isRange(Math.max(0, i - (k - i) / 2), i, false))
                    {
                        return (new int[] {
                            i, k, byte0
                        });
                    }
                    i += ai[0] + ai[1];
                    System.arraycopy(ai, 2, ai, 0, j1 - 2);
                    ai[j1 - 2] = 0;
                    ai[j1 - 1] = 0;
                    j = l - 1;
                } else
                {
                    j = l + 1;
                }
                ai[j] = 1;
                if (!flag)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            }
            k++;
            l = j;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public Result decodeRow(int i, BitArray bitarray, Map map)
        throws NotFoundException, FormatException, ChecksumException
    {
        int ai[];
        boolean flag4;
        int i4;
        if (map != null && map.containsKey(DecodeHintType.ASSUME_GS1))
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        ai = findStartPattern(bitarray);
        i4 = ai[2];
        map = new ArrayList(20);
        map.add(Byte.valueOf((byte)i4));
        i4;
        JVM INSTR tableswitch 103 105: default 84
    //                   103 94
    //                   104 281
    //                   105 288;
           goto _L1 _L2 _L3 _L4
_L1:
        throw FormatException.getFormatInstance();
_L2:
        int j = 101;
_L26:
        Object obj;
        int ai1[];
        byte byte1;
        int k1;
        int l1;
        boolean flag3;
        int i2;
        boolean flag5;
        boolean flag7;
        boolean flag8;
        int j3;
        int k3;
        int l3;
        flag7 = false;
        flag3 = false;
        obj = new StringBuilder(20);
        k3 = ai[0];
        k1 = ai[1];
        ai1 = new int[6];
        l3 = 0;
        i2 = 0;
        j3 = 0;
        l1 = 1;
        flag5 = false;
        flag8 = false;
        byte1 = j;
_L14:
        boolean flag9 = flag3;
        if (flag7) goto _L6; else goto _L5
_L5:
        int j1;
        boolean flag6;
        int j2;
        int k2;
        int l2;
        int i3;
        int j4;
        flag3 = false;
        flag6 = i2;
        j4 = decodeCode(bitarray, ai1, k1);
        map.add(Byte.valueOf((byte)j4));
        j1 = l1;
        if (j4 != 106)
        {
            j1 = 1;
        }
        k2 = i4;
        j2 = j3;
        if (j4 != 106)
        {
            j2 = j3 + 1;
            k2 = i4 + j2 * j4;
        }
        l2 = k1;
        int l = ai1.length;
        j = 0;
        i3 = k1;
        for (; j < l; j++)
        {
            i3 += ai1[j];
        }

          goto _L7
_L3:
        j = 100;
        continue; /* Loop/switch isn't completed */
_L4:
        j = 99;
        continue; /* Loop/switch isn't completed */
_L7:
        j4;
        JVM INSTR tableswitch 103 105: default 324
    //                   103 483
    //                   104 483
    //                   105 483;
           goto _L8 _L9 _L9 _L9
_L8:
        byte1;
        JVM INSTR tableswitch 99 101: default 352
    //                   99 1552
    //                   100 1052
    //                   101 487;
           goto _L10 _L11 _L12 _L13
_L10:
        byte byte0;
        boolean flag;
        boolean flag1;
        boolean flag2;
        flag = flag5;
        j = ((flag8) ? 1 : 0);
        flag2 = flag3;
        flag1 = flag7;
        byte0 = byte1;
_L17:
        i4 = k2;
        i2 = j4;
        byte1 = byte0;
        flag7 = flag1;
        flag3 = flag2;
        l1 = j1;
        l3 = ((flag6) ? 1 : 0);
        k3 = l2;
        j3 = j2;
        k1 = i3;
        flag8 = j;
        flag5 = flag;
        if (flag9)
        {
            if (byte0 == 101)
            {
                byte1 = 100;
            } else
            {
                byte1 = 101;
            }
            i4 = k2;
            i2 = j4;
            flag7 = flag1;
            flag3 = flag2;
            l1 = j1;
            l3 = ((flag6) ? 1 : 0);
            k3 = l2;
            j3 = j2;
            k1 = i3;
            flag8 = j;
            flag5 = flag;
        }
          goto _L14
_L9:
        throw FormatException.getFormatInstance();
_L13:
        if (j4 >= 64) goto _L16; else goto _L15
_L15:
        if (flag8 == flag5)
        {
            ((StringBuilder) (obj)).append((char)(j4 + 32));
        } else
        {
            ((StringBuilder) (obj)).append((char)(j4 + 32 + 128));
        }
        j = 0;
        byte0 = byte1;
        flag1 = flag7;
        flag2 = flag3;
        flag = flag5;
          goto _L17
_L16:
        if (j4 >= 96) goto _L19; else goto _L18
_L18:
        if (flag8 == flag5)
        {
            ((StringBuilder) (obj)).append((char)(j4 - 64));
        } else
        {
            ((StringBuilder) (obj)).append((char)(j4 + 64));
        }
        j = 0;
        byte0 = byte1;
        flag1 = flag7;
        flag2 = flag3;
        flag = flag5;
          goto _L17
_L19:
        k1 = j1;
        if (j4 != 106)
        {
            k1 = 0;
        }
        byte0 = byte1;
        flag1 = flag7;
        flag2 = flag3;
        j1 = k1;
        j = ((flag8) ? 1 : 0);
        flag = flag5;
        switch (j4)
        {
        case 103: // 'g'
        case 104: // 'h'
        case 105: // 'i'
        default:
            byte0 = byte1;
            flag1 = flag7;
            flag2 = flag3;
            j1 = k1;
            j = ((flag8) ? 1 : 0);
            flag = flag5;
            break;

        case 98: // 'b'
            flag2 = true;
            byte0 = 100;
            flag1 = flag7;
            j1 = k1;
            j = ((flag8) ? 1 : 0);
            flag = flag5;
            break;

        case 102: // 'f'
            byte0 = byte1;
            flag1 = flag7;
            flag2 = flag3;
            j1 = k1;
            j = ((flag8) ? 1 : 0);
            flag = flag5;
            if (flag4)
            {
                if (((StringBuilder) (obj)).length() == 0)
                {
                    ((StringBuilder) (obj)).append("]C1");
                    byte0 = byte1;
                    flag1 = flag7;
                    flag2 = flag3;
                    j1 = k1;
                    j = ((flag8) ? 1 : 0);
                    flag = flag5;
                } else
                {
                    ((StringBuilder) (obj)).append('\035');
                    byte0 = byte1;
                    flag1 = flag7;
                    flag2 = flag3;
                    j1 = k1;
                    j = ((flag8) ? 1 : 0);
                    flag = flag5;
                }
            }
            break;

        case 101: // 'e'
            if (!flag5 && flag8)
            {
                flag = true;
                j = 0;
                byte0 = byte1;
                flag1 = flag7;
                flag2 = flag3;
                j1 = k1;
            } else
            if (flag5 && flag8)
            {
                flag = false;
                j = 0;
                byte0 = byte1;
                flag1 = flag7;
                flag2 = flag3;
                j1 = k1;
            } else
            {
                j = 1;
                byte0 = byte1;
                flag1 = flag7;
                flag2 = flag3;
                j1 = k1;
                flag = flag5;
            }
            break;

        case 100: // 'd'
            byte0 = 100;
            flag1 = flag7;
            flag2 = flag3;
            j1 = k1;
            j = ((flag8) ? 1 : 0);
            flag = flag5;
            break;

        case 99: // 'c'
            byte0 = 99;
            flag1 = flag7;
            flag2 = flag3;
            j1 = k1;
            j = ((flag8) ? 1 : 0);
            flag = flag5;
            break;

        case 106: // 'j'
            flag1 = true;
            byte0 = byte1;
            flag2 = flag3;
            j1 = k1;
            j = ((flag8) ? 1 : 0);
            flag = flag5;
            break;

        case 96: // '`'
        case 97: // 'a'
            break;
        }
        if (true) goto _L17; else goto _L20
_L20:
_L12:
        if (j4 >= 96) goto _L22; else goto _L21
_L21:
        if (flag8 == flag5)
        {
            ((StringBuilder) (obj)).append((char)(j4 + 32));
        } else
        {
            ((StringBuilder) (obj)).append((char)(j4 + 32 + 128));
        }
        j = 0;
        byte0 = byte1;
        flag1 = flag7;
        flag2 = flag3;
        flag = flag5;
          goto _L17
_L22:
        k1 = j1;
        if (j4 != 106)
        {
            k1 = 0;
        }
        byte0 = byte1;
        flag1 = flag7;
        flag2 = flag3;
        j1 = k1;
        j = ((flag8) ? 1 : 0);
        flag = flag5;
        switch (j4)
        {
        case 103: // 'g'
        case 104: // 'h'
        case 105: // 'i'
        default:
            byte0 = byte1;
            flag1 = flag7;
            flag2 = flag3;
            j1 = k1;
            j = ((flag8) ? 1 : 0);
            flag = flag5;
            break;

        case 98: // 'b'
            flag2 = true;
            byte0 = 101;
            flag1 = flag7;
            j1 = k1;
            j = ((flag8) ? 1 : 0);
            flag = flag5;
            break;

        case 102: // 'f'
            byte0 = byte1;
            flag1 = flag7;
            flag2 = flag3;
            j1 = k1;
            j = ((flag8) ? 1 : 0);
            flag = flag5;
            if (flag4)
            {
                if (((StringBuilder) (obj)).length() == 0)
                {
                    ((StringBuilder) (obj)).append("]C1");
                    byte0 = byte1;
                    flag1 = flag7;
                    flag2 = flag3;
                    j1 = k1;
                    j = ((flag8) ? 1 : 0);
                    flag = flag5;
                } else
                {
                    ((StringBuilder) (obj)).append('\035');
                    byte0 = byte1;
                    flag1 = flag7;
                    flag2 = flag3;
                    j1 = k1;
                    j = ((flag8) ? 1 : 0);
                    flag = flag5;
                }
            }
            break;

        case 100: // 'd'
            if (!flag5 && flag8)
            {
                flag = true;
                j = 0;
                byte0 = byte1;
                flag1 = flag7;
                flag2 = flag3;
                j1 = k1;
            } else
            if (flag5 && flag8)
            {
                flag = false;
                j = 0;
                byte0 = byte1;
                flag1 = flag7;
                flag2 = flag3;
                j1 = k1;
            } else
            {
                j = 1;
                byte0 = byte1;
                flag1 = flag7;
                flag2 = flag3;
                j1 = k1;
                flag = flag5;
            }
            break;

        case 101: // 'e'
            byte0 = 101;
            flag1 = flag7;
            flag2 = flag3;
            j1 = k1;
            j = ((flag8) ? 1 : 0);
            flag = flag5;
            break;

        case 99: // 'c'
            byte0 = 99;
            flag1 = flag7;
            flag2 = flag3;
            j1 = k1;
            j = ((flag8) ? 1 : 0);
            flag = flag5;
            break;

        case 106: // 'j'
            flag1 = true;
            byte0 = byte1;
            flag2 = flag3;
            j1 = k1;
            j = ((flag8) ? 1 : 0);
            flag = flag5;
            break;

        case 96: // '`'
        case 97: // 'a'
            break;
        }
        if (true) goto _L17; else goto _L23
_L23:
_L11:
        if (j4 < 100)
        {
            if (j4 < 10)
            {
                ((StringBuilder) (obj)).append('0');
            }
            ((StringBuilder) (obj)).append(j4);
            byte0 = byte1;
            flag1 = flag7;
            flag2 = flag3;
            j = ((flag8) ? 1 : 0);
            flag = flag5;
        } else
        {
            k1 = j1;
            if (j4 != 106)
            {
                k1 = 0;
            }
            switch (j4)
            {
            case 103: // 'g'
            case 104: // 'h'
            case 105: // 'i'
            default:
                byte0 = byte1;
                flag1 = flag7;
                flag2 = flag3;
                j1 = k1;
                j = ((flag8) ? 1 : 0);
                flag = flag5;
                break;

            case 100: // 'd'
                byte0 = 100;
                flag1 = flag7;
                flag2 = flag3;
                j1 = k1;
                j = ((flag8) ? 1 : 0);
                flag = flag5;
                break;

            case 102: // 'f'
                byte0 = byte1;
                flag1 = flag7;
                flag2 = flag3;
                j1 = k1;
                j = ((flag8) ? 1 : 0);
                flag = flag5;
                if (flag4)
                {
                    if (((StringBuilder) (obj)).length() == 0)
                    {
                        ((StringBuilder) (obj)).append("]C1");
                        byte0 = byte1;
                        flag1 = flag7;
                        flag2 = flag3;
                        j1 = k1;
                        j = ((flag8) ? 1 : 0);
                        flag = flag5;
                    } else
                    {
                        ((StringBuilder) (obj)).append('\035');
                        byte0 = byte1;
                        flag1 = flag7;
                        flag2 = flag3;
                        j1 = k1;
                        j = ((flag8) ? 1 : 0);
                        flag = flag5;
                    }
                }
                break;

            case 101: // 'e'
                byte0 = 101;
                flag1 = flag7;
                flag2 = flag3;
                j1 = k1;
                j = ((flag8) ? 1 : 0);
                flag = flag5;
                break;

            case 106: // 'j'
                flag1 = true;
                byte0 = byte1;
                flag2 = flag3;
                j1 = k1;
                j = ((flag8) ? 1 : 0);
                flag = flag5;
                break;
            }
            continue; /* Loop/switch isn't completed */
        }
          goto _L17
_L6:
        int k = bitarray.getNextUnset(k1);
        if (!bitarray.isRange(k, Math.min(bitarray.getSize(), (k - k3) / 2 + k), false))
        {
            throw NotFoundException.getNotFoundInstance();
        }
        if ((i4 - j3 * l3) % 103 != l3)
        {
            throw ChecksumException.getChecksumInstance();
        }
        k = ((StringBuilder) (obj)).length();
        if (k == 0)
        {
            throw NotFoundException.getNotFoundInstance();
        }
        float f;
        float f1;
        float f2;
        int i1;
        if (k > 0 && l1 != 0)
        {
            if (byte1 == 99)
            {
                ((StringBuilder) (obj)).delete(k - 2, k);
            } else
            {
                ((StringBuilder) (obj)).delete(k - 1, k);
            }
        }
        f = (float)(ai[1] + ai[0]) / 2.0F;
        f1 = k3;
        f2 = (float)(k1 - k3) / 2.0F;
        i1 = map.size();
        bitarray = new byte[i1];
        for (k = 0; k < i1; k++)
        {
            bitarray[k] = ((Byte)map.get(k)).byteValue();
        }

        map = ((StringBuilder) (obj)).toString();
        obj = new ResultPoint(f, i);
        ResultPoint resultpoint = new ResultPoint(f1 + f2, i);
        BarcodeFormat barcodeformat = BarcodeFormat.CODE_128;
        return new Result(map, bitarray, new ResultPoint[] {
            obj, resultpoint
        }, barcodeformat);
        continue; /* Loop/switch isn't completed */
        if (true) goto _L17; else goto _L24
_L24:
        if (true) goto _L26; else goto _L25
_L25:
    }

    static 
    {
        int ai[] = {
            1, 2, 1, 2, 2, 3
        };
        int ai1[] = {
            1, 2, 1, 3, 2, 2
        };
        int ai2[] = {
            1, 3, 1, 2, 2, 2
        };
        int ai3[] = {
            1, 2, 2, 2, 1, 3
        };
        int ai4[] = {
            1, 2, 2, 3, 1, 2
        };
        int ai5[] = {
            1, 1, 2, 2, 3, 2
        };
        int ai6[] = {
            1, 1, 3, 2, 2, 2
        };
        int ai7[] = {
            2, 1, 3, 2, 1, 2
        };
        int ai8[] = {
            3, 1, 2, 2, 1, 2
        };
        int ai9[] = {
            2, 1, 2, 1, 2, 3
        };
        int ai10[] = {
            1, 3, 1, 3, 2, 1
        };
        int ai11[] = {
            2, 3, 1, 3, 1, 1
        };
        int ai12[] = {
            1, 1, 3, 3, 2, 1
        };
        int ai13[] = {
            2, 1, 1, 3, 3, 1
        };
        int ai14[] = {
            2, 1, 3, 1, 1, 3
        };
        int ai15[] = {
            2, 1, 3, 1, 3, 1
        };
        int ai16[] = {
            3, 1, 4, 1, 1, 1
        };
        int ai17[] = {
            1, 2, 1, 4, 2, 1
        };
        int ai18[] = {
            1, 2, 2, 4, 1, 1
        };
        int ai19[] = {
            1, 4, 2, 2, 1, 1
        };
        int ai20[] = {
            2, 2, 1, 1, 1, 4
        };
        int ai21[] = {
            1, 3, 4, 1, 1, 1
        };
        int ai22[] = {
            1, 1, 1, 2, 4, 2
        };
        int ai23[] = {
            1, 2, 1, 1, 4, 2
        };
        int ai24[] = {
            4, 1, 1, 2, 1, 2
        };
        int ai25[] = {
            4, 2, 1, 2, 1, 1
        };
        int ai26[] = {
            2, 1, 2, 1, 4, 1
        };
        int ai27[] = {
            4, 1, 1, 1, 1, 3
        };
        int ai28[] = {
            4, 1, 1, 1, 3, 1
        };
        CODE_PATTERNS = (new int[][] {
            new int[] {
                2, 1, 2, 2, 2, 2
            }, new int[] {
                2, 2, 2, 1, 2, 2
            }, new int[] {
                2, 2, 2, 2, 2, 1
            }, ai, ai1, ai2, ai3, ai4, new int[] {
                1, 3, 2, 2, 1, 2
            }, new int[] {
                2, 2, 1, 2, 1, 3
            }, new int[] {
                2, 2, 1, 3, 1, 2
            }, new int[] {
                2, 3, 1, 2, 1, 2
            }, ai5, new int[] {
                1, 2, 2, 1, 3, 2
            }, new int[] {
                1, 2, 2, 2, 3, 1
            }, ai6, new int[] {
                1, 2, 3, 1, 2, 2
            }, new int[] {
                1, 2, 3, 2, 2, 1
            }, new int[] {
                2, 2, 3, 2, 1, 1
            }, new int[] {
                2, 2, 1, 1, 3, 2
            }, new int[] {
                2, 2, 1, 2, 3, 1
            }, ai7, new int[] {
                2, 2, 3, 1, 1, 2
            }, new int[] {
                3, 1, 2, 1, 3, 1
            }, new int[] {
                3, 1, 1, 2, 2, 2
            }, new int[] {
                3, 2, 1, 1, 2, 2
            }, new int[] {
                3, 2, 1, 2, 2, 1
            }, ai8, new int[] {
                3, 2, 2, 1, 1, 2
            }, new int[] {
                3, 2, 2, 2, 1, 1
            }, ai9, new int[] {
                2, 1, 2, 3, 2, 1
            }, new int[] {
                2, 3, 2, 1, 2, 1
            }, new int[] {
                1, 1, 1, 3, 2, 3
            }, new int[] {
                1, 3, 1, 1, 2, 3
            }, ai10, new int[] {
                1, 1, 2, 3, 1, 3
            }, new int[] {
                1, 3, 2, 1, 1, 3
            }, new int[] {
                1, 3, 2, 3, 1, 1
            }, new int[] {
                2, 1, 1, 3, 1, 3
            }, new int[] {
                2, 3, 1, 1, 1, 3
            }, ai11, new int[] {
                1, 1, 2, 1, 3, 3
            }, new int[] {
                1, 1, 2, 3, 3, 1
            }, new int[] {
                1, 3, 2, 1, 3, 1
            }, new int[] {
                1, 1, 3, 1, 2, 3
            }, ai12, new int[] {
                1, 3, 3, 1, 2, 1
            }, new int[] {
                3, 1, 3, 1, 2, 1
            }, ai13, new int[] {
                2, 3, 1, 1, 3, 1
            }, ai14, new int[] {
                2, 1, 3, 3, 1, 1
            }, ai15, new int[] {
                3, 1, 1, 1, 2, 3
            }, new int[] {
                3, 1, 1, 3, 2, 1
            }, new int[] {
                3, 3, 1, 1, 2, 1
            }, new int[] {
                3, 1, 2, 1, 1, 3
            }, new int[] {
                3, 1, 2, 3, 1, 1
            }, new int[] {
                3, 3, 2, 1, 1, 1
            }, ai16, new int[] {
                2, 2, 1, 4, 1, 1
            }, new int[] {
                4, 3, 1, 1, 1, 1
            }, new int[] {
                1, 1, 1, 2, 2, 4
            }, new int[] {
                1, 1, 1, 4, 2, 2
            }, new int[] {
                1, 2, 1, 1, 2, 4
            }, ai17, new int[] {
                1, 4, 1, 1, 2, 2
            }, new int[] {
                1, 4, 1, 2, 2, 1
            }, new int[] {
                1, 1, 2, 2, 1, 4
            }, new int[] {
                1, 1, 2, 4, 1, 2
            }, new int[] {
                1, 2, 2, 1, 1, 4
            }, ai18, new int[] {
                1, 4, 2, 1, 1, 2
            }, ai19, new int[] {
                2, 4, 1, 2, 1, 1
            }, ai20, new int[] {
                4, 1, 3, 1, 1, 1
            }, new int[] {
                2, 4, 1, 1, 1, 2
            }, ai21, ai22, ai23, new int[] {
                1, 2, 1, 2, 4, 1
            }, new int[] {
                1, 1, 4, 2, 1, 2
            }, new int[] {
                1, 2, 4, 1, 1, 2
            }, new int[] {
                1, 2, 4, 2, 1, 1
            }, ai24, new int[] {
                4, 2, 1, 1, 1, 2
            }, ai25, ai26, new int[] {
                2, 1, 4, 1, 2, 1
            }, new int[] {
                4, 1, 2, 1, 2, 1
            }, new int[] {
                1, 1, 1, 1, 4, 3
            }, new int[] {
                1, 1, 1, 3, 4, 1
            }, new int[] {
                1, 3, 1, 1, 4, 1
            }, new int[] {
                1, 1, 4, 1, 1, 3
            }, new int[] {
                1, 1, 4, 3, 1, 1
            }, ai27, new int[] {
                4, 1, 1, 3, 1, 1
            }, new int[] {
                1, 1, 3, 1, 4, 1
            }, new int[] {
                1, 1, 4, 1, 3, 1
            }, new int[] {
                3, 1, 1, 1, 4, 1
            }, ai28, new int[] {
                2, 1, 1, 4, 1, 2
            }, new int[] {
                2, 1, 1, 2, 1, 4
            }, new int[] {
                2, 1, 1, 2, 3, 2
            }, new int[] {
                2, 3, 3, 1, 1, 1, 2
            }
        });
    }
}
