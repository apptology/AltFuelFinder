// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.qrcode.decoder;


// Referenced classes of package com.google.zxing.qrcode.decoder:
//            ErrorCorrectionLevel

final class FormatInformation
{

    private static final int BITS_SET_IN_HALF_BYTE[] = {
        0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 
        2, 3, 2, 3, 3, 4
    };
    private static final int FORMAT_INFO_DECODE_LOOKUP[][];
    private static final int FORMAT_INFO_MASK_QR = 21522;
    private final byte dataMask;
    private final ErrorCorrectionLevel errorCorrectionLevel;

    private FormatInformation(int i)
    {
        errorCorrectionLevel = ErrorCorrectionLevel.forBits(i >> 3 & 3);
        dataMask = (byte)(i & 7);
    }

    static FormatInformation decodeFormatInformation(int i, int j)
    {
        FormatInformation formatinformation = doDecodeFormatInformation(i, j);
        if (formatinformation != null)
        {
            return formatinformation;
        } else
        {
            return doDecodeFormatInformation(i ^ 0x5412, j ^ 0x5412);
        }
    }

    private static FormatInformation doDecodeFormatInformation(int i, int j)
    {
        int j1 = 0x7fffffff;
        int l = 0;
        int ai[][] = FORMAT_INFO_DECODE_LOOKUP;
        int i2 = ai.length;
        for (int k1 = 0; k1 < i2;)
        {
            int ai1[] = ai[k1];
            int l1 = ai1[0];
            if (l1 == i || l1 == j)
            {
                return new FormatInformation(ai1[1]);
            }
            int i1 = numBitsDiffering(i, l1);
            int k = j1;
            if (i1 < j1)
            {
                l = ai1[1];
                k = i1;
            }
            j1 = k;
            i1 = l;
            if (i != j)
            {
                l1 = numBitsDiffering(j, l1);
                j1 = k;
                i1 = l;
                if (l1 < k)
                {
                    i1 = ai1[1];
                    j1 = l1;
                }
            }
            k1++;
            l = i1;
        }

        if (j1 <= 3)
        {
            return new FormatInformation(l);
        } else
        {
            return null;
        }
    }

    static int numBitsDiffering(int i, int j)
    {
        i ^= j;
        return BITS_SET_IN_HALF_BYTE[i & 0xf] + BITS_SET_IN_HALF_BYTE[i >>> 4 & 0xf] + BITS_SET_IN_HALF_BYTE[i >>> 8 & 0xf] + BITS_SET_IN_HALF_BYTE[i >>> 12 & 0xf] + BITS_SET_IN_HALF_BYTE[i >>> 16 & 0xf] + BITS_SET_IN_HALF_BYTE[i >>> 20 & 0xf] + BITS_SET_IN_HALF_BYTE[i >>> 24 & 0xf] + BITS_SET_IN_HALF_BYTE[i >>> 28 & 0xf];
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof FormatInformation)
        {
            if (errorCorrectionLevel == ((FormatInformation) (obj = (FormatInformation)obj)).errorCorrectionLevel && dataMask == ((FormatInformation) (obj)).dataMask)
            {
                return true;
            }
        }
        return false;
    }

    byte getDataMask()
    {
        return dataMask;
    }

    ErrorCorrectionLevel getErrorCorrectionLevel()
    {
        return errorCorrectionLevel;
    }

    public int hashCode()
    {
        return errorCorrectionLevel.ordinal() << 3 | dataMask;
    }

    static 
    {
        int ai[] = {
            5769, 16
        };
        int ai1[] = {
            3340, 22
        };
        int ai2[] = {
            2107, 23
        };
        FORMAT_INFO_DECODE_LOOKUP = (new int[][] {
            new int[] {
                21522, 0
            }, new int[] {
                20773, 1
            }, new int[] {
                24188, 2
            }, new int[] {
                23371, 3
            }, new int[] {
                17913, 4
            }, new int[] {
                16590, 5
            }, new int[] {
                20375, 6
            }, new int[] {
                19104, 7
            }, new int[] {
                30660, 8
            }, new int[] {
                29427, 9
            }, new int[] {
                32170, 10
            }, new int[] {
                30877, 11
            }, new int[] {
                26159, 12
            }, new int[] {
                25368, 13
            }, new int[] {
                27713, 14
            }, new int[] {
                26998, 15
            }, ai, new int[] {
                5054, 17
            }, new int[] {
                7399, 18
            }, new int[] {
                6608, 19
            }, new int[] {
                1890, 20
            }, new int[] {
                597, 21
            }, ai1, ai2, new int[] {
                13663, 24
            }, new int[] {
                12392, 25
            }, new int[] {
                16177, 26
            }, new int[] {
                14854, 27
            }, new int[] {
                9396, 28
            }, new int[] {
                8579, 29
            }, new int[] {
                11994, 30
            }, new int[] {
                11245, 31
            }
        });
    }
}
