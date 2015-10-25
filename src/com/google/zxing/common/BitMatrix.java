// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.common;

import java.util.Arrays;

// Referenced classes of package com.google.zxing.common:
//            BitArray

public final class BitMatrix
    implements Cloneable
{

    private final int bits[];
    private final int height;
    private final int rowSize;
    private final int width;

    public BitMatrix(int i)
    {
        this(i, i);
    }

    public BitMatrix(int i, int j)
    {
        if (i < 1 || j < 1)
        {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        } else
        {
            width = i;
            height = j;
            rowSize = (i + 31) / 32;
            bits = new int[rowSize * j];
            return;
        }
    }

    private BitMatrix(int i, int j, int k, int ai[])
    {
        width = i;
        height = j;
        rowSize = k;
        bits = ai;
    }

    public static BitMatrix parse(String s, String s1, String s2)
    {
        boolean aflag[];
        int i;
        int j;
        int k;
        int i1;
        int l1;
        if (s == null)
        {
            throw new IllegalArgumentException();
        }
        aflag = new boolean[s.length()];
        j = 0;
        l1 = 0;
        i = -1;
        i1 = 0;
        k = 0;
_L8:
        int j1;
        int i2;
        int j2;
        if (k >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        if (s.charAt(k) != '\n' && s.charAt(k) != '\r')
        {
            break MISSING_BLOCK_LABEL_152;
        }
        j2 = i1;
        j1 = i;
        i2 = l1;
        if (j <= l1) goto _L2; else goto _L1
_L1:
        if (i != -1) goto _L4; else goto _L3
_L3:
        j1 = j - l1;
_L6:
        i2 = j;
        j2 = i1 + 1;
_L2:
        k++;
        i1 = j2;
        i = j1;
        l1 = i2;
        continue; /* Loop/switch isn't completed */
_L4:
        j1 = i;
        if (j - l1 == i) goto _L6; else goto _L5
_L5:
        throw new IllegalArgumentException("row lengths do not match");
        if (s.substring(k, s1.length() + k).equals(s1))
        {
            k += s1.length();
            aflag[j] = true;
            j++;
        } else
        if (s.substring(k, s2.length() + k).equals(s2))
        {
            k += s2.length();
            aflag[j] = false;
            j++;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal character encountered: ").append(s.substring(k)).toString());
        }
        if (true) goto _L8; else goto _L7
_L7:
        int k1 = i1;
        int l = i;
        if (j > l1)
        {
            if (i == -1)
            {
                l = j - l1;
            } else
            {
                l = i;
                if (j - l1 != i)
                {
                    throw new IllegalArgumentException("row lengths do not match");
                }
            }
            k1 = i1 + 1;
        }
        s = new BitMatrix(l, k1);
        for (i = 0; i < j; i++)
        {
            if (aflag[i])
            {
                s.set(i % l, i / l);
            }
        }

        return s;
    }

    public void clear()
    {
        int j = bits.length;
        for (int i = 0; i < j; i++)
        {
            bits[i] = 0;
        }

    }

    public BitMatrix clone()
    {
        return new BitMatrix(width, height, rowSize, (int[])bits.clone());
    }

    public volatile Object clone()
        throws CloneNotSupportedException
    {
        return clone();
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof BitMatrix)
        {
            if (width == ((BitMatrix) (obj = (BitMatrix)obj)).width && height == ((BitMatrix) (obj)).height && rowSize == ((BitMatrix) (obj)).rowSize && Arrays.equals(bits, ((BitMatrix) (obj)).bits))
            {
                return true;
            }
        }
        return false;
    }

    public void flip(int i, int j)
    {
        j = rowSize * j + i / 32;
        int ai[] = bits;
        ai[j] = ai[j] ^ 1 << (i & 0x1f);
    }

    public boolean get(int i, int j)
    {
        int k = rowSize;
        int l = i / 32;
        return (bits[k * j + l] >>> (i & 0x1f) & 1) != 0;
    }

    public int[] getBottomRightOnBit()
    {
        int i;
        for (i = bits.length - 1; i >= 0 && bits[i] == 0; i--) { }
        if (i < 0)
        {
            return null;
        }
        int k = i / rowSize;
        int l = rowSize;
        int i1 = bits[i];
        int j;
        for (j = 31; i1 >>> j == 0; j--) { }
        return (new int[] {
            (i % l) * 32 + j, k
        });
    }

    public int[] getEnclosingRectangle()
    {
        int i1 = width;
        int j1 = height;
        int i2 = -1;
        int k1 = -1;
        for (int i = 0; i < height; i++)
        {
            for (int l1 = 0; l1 < rowSize;)
            {
                int j3 = bits[rowSize * i + l1];
                int k2 = k1;
                int l2 = i1;
                int i3 = i2;
                int j2 = j1;
                if (j3 != 0)
                {
                    int k = j1;
                    if (i < j1)
                    {
                        k = i;
                    }
                    j1 = k1;
                    if (i > k1)
                    {
                        j1 = i;
                    }
                    k1 = i1;
                    if (l1 * 32 < i1)
                    {
                        for (j2 = 0; j3 << 31 - j2 == 0; j2++) { }
                        k1 = i1;
                        if (l1 * 32 + j2 < i1)
                        {
                            k1 = l1 * 32 + j2;
                        }
                    }
                    k2 = j1;
                    l2 = k1;
                    i3 = i2;
                    j2 = k;
                    if (l1 * 32 + 31 > i2)
                    {
                        for (i1 = 31; j3 >>> i1 == 0; i1--) { }
                        k2 = j1;
                        l2 = k1;
                        i3 = i2;
                        j2 = k;
                        if (l1 * 32 + i1 > i2)
                        {
                            i3 = l1 * 32 + i1;
                            j2 = k;
                            l2 = k1;
                            k2 = j1;
                        }
                    }
                }
                l1++;
                k1 = k2;
                i1 = l2;
                i2 = i3;
                j1 = j2;
            }

        }

        int j = i2 - i1;
        int l = k1 - j1;
        if (j < 0 || l < 0)
        {
            return null;
        } else
        {
            return (new int[] {
                i1, j1, j, l
            });
        }
    }

    public int getHeight()
    {
        return height;
    }

    public BitArray getRow(int i, BitArray bitarray)
    {
        int k;
        if (bitarray == null || bitarray.getSize() < width)
        {
            bitarray = new BitArray(width);
        } else
        {
            bitarray.clear();
        }
        k = rowSize;
        for (int j = 0; j < rowSize; j++)
        {
            bitarray.setBulk(j * 32, bits[i * k + j]);
        }

        return bitarray;
    }

    public int getRowSize()
    {
        return rowSize;
    }

    public int[] getTopLeftOnBit()
    {
        int i;
        for (i = 0; i < bits.length && bits[i] == 0; i++) { }
        if (i == bits.length)
        {
            return null;
        }
        int k = i / rowSize;
        int l = rowSize;
        int i1 = bits[i];
        int j;
        for (j = 0; i1 << 31 - j == 0; j++) { }
        return (new int[] {
            (i % l) * 32 + j, k
        });
    }

    public int getWidth()
    {
        return width;
    }

    public int hashCode()
    {
        return (((width * 31 + width) * 31 + height) * 31 + rowSize) * 31 + Arrays.hashCode(bits);
    }

    public void rotate180()
    {
        int i = getWidth();
        int k = getHeight();
        BitArray bitarray1 = new BitArray(i);
        BitArray bitarray = new BitArray(i);
        for (int j = 0; j < (k + 1) / 2; j++)
        {
            bitarray1 = getRow(j, bitarray1);
            bitarray = getRow(k - 1 - j, bitarray);
            bitarray1.reverse();
            bitarray.reverse();
            setRow(j, bitarray);
            setRow(k - 1 - j, bitarray1);
        }

    }

    public void set(int i, int j)
    {
        j = rowSize * j + i / 32;
        int ai[] = bits;
        ai[j] = ai[j] | 1 << (i & 0x1f);
    }

    public void setRegion(int i, int j, int k, int l)
    {
        if (j < 0 || i < 0)
        {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (l < 1 || k < 1)
        {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i1 = i + k;
        l = j + l;
        if (l > height || i1 > width)
        {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        for (; j < l; j++)
        {
            int j1 = rowSize;
            for (k = i; k < i1; k++)
            {
                int ai[] = bits;
                int k1 = k / 32 + j * j1;
                ai[k1] = ai[k1] | 1 << (k & 0x1f);
            }

        }

    }

    public void setRow(int i, BitArray bitarray)
    {
        System.arraycopy(bitarray.getBitArray(), 0, bits, rowSize * i, rowSize);
    }

    public String toString()
    {
        return toString("X ", "  ");
    }

    public String toString(String s, String s1)
    {
        return toString(s, s1, "\n");
    }

    public String toString(String s, String s1, String s2)
    {
        StringBuilder stringbuilder = new StringBuilder(height * (width + 1));
        for (int i = 0; i < height; i++)
        {
            int j = 0;
            while (j < width) 
            {
                String s3;
                if (get(j, i))
                {
                    s3 = s;
                } else
                {
                    s3 = s1;
                }
                stringbuilder.append(s3);
                j++;
            }
            stringbuilder.append(s2);
        }

        return stringbuilder.toString();
    }

    public void unset(int i, int j)
    {
        j = rowSize * j + i / 32;
        int ai[] = bits;
        ai[j] = ai[j] & ~(1 << (i & 0x1f));
    }

    public void xor(BitMatrix bitmatrix)
    {
        if (width != bitmatrix.getWidth() || height != bitmatrix.getHeight() || rowSize != bitmatrix.getRowSize())
        {
            throw new IllegalArgumentException("input matrix dimensions do not match");
        }
        BitArray bitarray = new BitArray(width / 32 + 1);
        for (int i = 0; i < height; i++)
        {
            int k = rowSize;
            int ai[] = bitmatrix.getRow(i, bitarray).getBitArray();
            for (int j = 0; j < rowSize; j++)
            {
                int ai1[] = bits;
                int l = i * k + j;
                ai1[l] = ai1[l] ^ ai[j];
            }

        }

    }
}
