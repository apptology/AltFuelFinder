// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;

// Referenced classes of package com.google.zxing.oned:
//            OneDReader, UPCEANExtensionSupport, EANManufacturerOrgSupport

public abstract class UPCEANReader extends OneDReader
{

    static final int L_AND_G_PATTERNS[][];
    static final int L_PATTERNS[][];
    private static final float MAX_AVG_VARIANCE = 0.48F;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.7F;
    static final int MIDDLE_PATTERN[] = {
        1, 1, 1, 1, 1
    };
    static final int START_END_PATTERN[] = {
        1, 1, 1
    };
    private final StringBuilder decodeRowStringBuffer = new StringBuilder(20);
    private final EANManufacturerOrgSupport eanManSupport = new EANManufacturerOrgSupport();
    private final UPCEANExtensionSupport extensionReader = new UPCEANExtensionSupport();

    protected UPCEANReader()
    {
    }

    static boolean checkStandardUPCEANChecksum(CharSequence charsequence)
        throws FormatException
    {
        int l = charsequence.length();
        if (l != 0)
        {
            int k = 0;
            for (int i = l - 2; i >= 0; i -= 2)
            {
                int j1 = charsequence.charAt(i) - 48;
                if (j1 < 0 || j1 > 9)
                {
                    throw FormatException.getFormatInstance();
                }
                k += j1;
            }

            k *= 3;
            for (int j = l - 1; j >= 0; j -= 2)
            {
                int i1 = charsequence.charAt(j) - 48;
                if (i1 < 0 || i1 > 9)
                {
                    throw FormatException.getFormatInstance();
                }
                k += i1;
            }

            if (k % 10 == 0)
            {
                return true;
            }
        }
        return false;
    }

    static int decodeDigit(BitArray bitarray, int ai[], int i, int ai1[][])
        throws NotFoundException
    {
        recordPattern(bitarray, i, ai);
        float f = 0.48F;
        int j = -1;
        int k = ai1.length;
        for (i = 0; i < k;)
        {
            float f2 = patternMatchVariance(ai, ai1[i], 0.7F);
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

    static int[] findGuardPattern(BitArray bitarray, int i, boolean flag, int ai[])
        throws NotFoundException
    {
        return findGuardPattern(bitarray, i, flag, ai, new int[ai.length]);
    }

    private static int[] findGuardPattern(BitArray bitarray, int i, boolean flag, int ai[], int ai1[])
        throws NotFoundException
    {
        int l = ai.length;
        int i1 = bitarray.getSize();
        boolean flag2 = flag;
        int j;
        int k;
        boolean flag1;
        if (flag)
        {
            i = bitarray.getNextUnset(i);
        } else
        {
            i = bitarray.getNextSet(i);
        }
        flag1 = false;
        j = i;
        k = i;
        i = j;
        j = ((flag1) ? 1 : 0);
        while (k < i1) 
        {
            if (bitarray.get(k) ^ flag2)
            {
                ai1[j] = ai1[j] + 1;
                flag = flag2;
            } else
            {
                if (j == l - 1)
                {
                    if (patternMatchVariance(ai1, ai, 0.7F) < 0.48F)
                    {
                        return (new int[] {
                            i, k
                        });
                    }
                    i += ai1[0] + ai1[1];
                    System.arraycopy(ai1, 2, ai1, 0, l - 2);
                    ai1[l - 2] = 0;
                    ai1[l - 1] = 0;
                    j--;
                } else
                {
                    j++;
                }
                ai1[j] = 1;
                if (!flag2)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            }
            k++;
            flag2 = flag;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    static int[] findStartGuardPattern(BitArray bitarray)
        throws NotFoundException
    {
        boolean flag = false;
        int ai[] = null;
        int i = 0;
        int ai2[] = new int[START_END_PATTERN.length];
        do
        {
            if (flag)
            {
                break;
            }
            Arrays.fill(ai2, 0, START_END_PATTERN.length, 0);
            int ai1[] = findGuardPattern(bitarray, i, false, START_END_PATTERN, ai2);
            int k = ai1[0];
            int j = ai1[1];
            int l = k - (j - k);
            i = j;
            ai = ai1;
            if (l >= 0)
            {
                flag = bitarray.isRange(l, k, false);
                i = j;
                ai = ai1;
            }
        } while (true);
        return ai;
    }

    boolean checkChecksum(String s)
        throws FormatException
    {
        return checkStandardUPCEANChecksum(s);
    }

    int[] decodeEnd(BitArray bitarray, int i)
        throws NotFoundException
    {
        return findGuardPattern(bitarray, i, false, START_END_PATTERN);
    }

    protected abstract int decodeMiddle(BitArray bitarray, int ai[], StringBuilder stringbuilder)
        throws NotFoundException;

    public Result decodeRow(int i, BitArray bitarray, Map map)
        throws NotFoundException, ChecksumException, FormatException
    {
        return decodeRow(i, bitarray, findStartGuardPattern(bitarray), map);
    }

    public Result decodeRow(int i, BitArray bitarray, int ai[], Map map)
        throws NotFoundException, ChecksumException, FormatException
    {
        Object obj;
        Object obj1;
        int ai1[];
        int j;
        int k;
        if (map == null)
        {
            obj = null;
        } else
        {
            obj = (ResultPointCallback)map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        }
        if (obj != null)
        {
            ((ResultPointCallback) (obj)).foundPossibleResultPoint(new ResultPoint((float)(ai[0] + ai[1]) / 2.0F, i));
        }
        obj1 = decodeRowStringBuffer;
        ((StringBuilder) (obj1)).setLength(0);
        j = decodeMiddle(bitarray, ai, ((StringBuilder) (obj1)));
        if (obj != null)
        {
            ((ResultPointCallback) (obj)).foundPossibleResultPoint(new ResultPoint(j, i));
        }
        ai1 = decodeEnd(bitarray, j);
        if (obj != null)
        {
            ((ResultPointCallback) (obj)).foundPossibleResultPoint(new ResultPoint((float)(ai1[0] + ai1[1]) / 2.0F, i));
        }
        j = ai1[1];
        k = j + (j - ai1[0]);
        if (k >= bitarray.getSize() || !bitarray.isRange(j, k, false))
        {
            throw NotFoundException.getNotFoundInstance();
        }
        obj = ((StringBuilder) (obj1)).toString();
        if (((String) (obj)).length() < 8)
        {
            throw FormatException.getFormatInstance();
        }
        if (!checkChecksum(((String) (obj))))
        {
            throw ChecksumException.getChecksumInstance();
        }
        float f = (float)(ai[1] + ai[0]) / 2.0F;
        float f1 = (float)(ai1[1] + ai1[0]) / 2.0F;
        obj1 = getBarcodeFormat();
        ai = new Result(((String) (obj)), null, new ResultPoint[] {
            new ResultPoint(f, i), new ResultPoint(f1, i)
        }, ((BarcodeFormat) (obj1)));
        j = 0;
        try
        {
            bitarray = extensionReader.decodeRow(i, bitarray, ai1[1]);
            ai.putMetadata(ResultMetadataType.UPC_EAN_EXTENSION, bitarray.getText());
            ai.putAllMetadata(bitarray.getResultMetadata());
            ai.addResultPoints(bitarray.getResultPoints());
            i = bitarray.getText().length();
        }
        // Misplaced declaration of an exception variable
        catch (BitArray bitarray)
        {
            i = j;
        }
        if (map == null)
        {
            bitarray = null;
        } else
        {
            bitarray = (int[])(int[])map.get(DecodeHintType.ALLOWED_EAN_EXTENSIONS);
        }
        if (bitarray != null)
        {
            boolean flag1 = false;
            int l = bitarray.length;
            j = 0;
label0:
            do
            {
label1:
                {
                    boolean flag = flag1;
                    if (j < l)
                    {
                        if (i != bitarray[j])
                        {
                            break label1;
                        }
                        flag = true;
                    }
                    if (!flag)
                    {
                        throw NotFoundException.getNotFoundInstance();
                    }
                    break label0;
                }
                j++;
            } while (true);
        }
        if (obj1 == BarcodeFormat.EAN_13 || obj1 == BarcodeFormat.UPC_A)
        {
            bitarray = eanManSupport.lookupCountryIdentifier(((String) (obj)));
            if (bitarray != null)
            {
                ai.putMetadata(ResultMetadataType.POSSIBLE_COUNTRY, bitarray);
            }
        }
        return ai;
    }

    abstract BarcodeFormat getBarcodeFormat();

    static 
    {
        int ai[] = {
            2, 2, 2, 1
        };
        int ai2[] = {
            1, 4, 1, 1
        };
        int ai4[] = {
            1, 1, 3, 2
        };
        int ai5[] = {
            1, 2, 3, 1
        };
        int ai6[] = {
            1, 3, 1, 2
        };
        int ai7[] = {
            1, 2, 1, 3
        };
        int ai8[] = {
            3, 1, 1, 2
        };
        L_PATTERNS = (new int[][] {
            new int[] {
                3, 2, 1, 1
            }, ai, new int[] {
                2, 1, 2, 2
            }, ai2, ai4, ai5, new int[] {
                1, 1, 1, 4
            }, ai6, ai7, ai8
        });
        L_AND_G_PATTERNS = new int[20][];
        System.arraycopy(L_PATTERNS, 0, L_AND_G_PATTERNS, 0, 10);
        for (int i = 10; i < 20; i++)
        {
            int ai1[] = L_PATTERNS[i - 10];
            int ai3[] = new int[ai1.length];
            for (int j = 0; j < ai1.length; j++)
            {
                ai3[j] = ai1[ai1.length - j - 1];
            }

            L_AND_G_PATTERNS[i] = ai3;
        }

    }
}
