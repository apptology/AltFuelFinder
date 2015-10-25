// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

// Referenced classes of package com.google.zxing.common.detector:
//            MathUtils

public final class WhiteRectangleDetector
{

    private static final int CORR = 1;
    private static final int INIT_SIZE = 10;
    private final int downInit;
    private final int height;
    private final BitMatrix image;
    private final int leftInit;
    private final int rightInit;
    private final int upInit;
    private final int width;

    public WhiteRectangleDetector(BitMatrix bitmatrix)
        throws NotFoundException
    {
        this(bitmatrix, 10, bitmatrix.getWidth() / 2, bitmatrix.getHeight() / 2);
    }

    public WhiteRectangleDetector(BitMatrix bitmatrix, int i, int j, int k)
        throws NotFoundException
    {
        image = bitmatrix;
        height = bitmatrix.getHeight();
        width = bitmatrix.getWidth();
        i /= 2;
        leftInit = j - i;
        rightInit = j + i;
        upInit = k - i;
        downInit = k + i;
        if (upInit < 0 || leftInit < 0 || downInit >= height || rightInit >= width)
        {
            throw NotFoundException.getNotFoundInstance();
        } else
        {
            return;
        }
    }

    private ResultPoint[] centerEdges(ResultPoint resultpoint, ResultPoint resultpoint1, ResultPoint resultpoint2, ResultPoint resultpoint3)
    {
        float f = resultpoint.getX();
        float f1 = resultpoint.getY();
        float f2 = resultpoint1.getX();
        float f3 = resultpoint1.getY();
        float f4 = resultpoint2.getX();
        float f5 = resultpoint2.getY();
        float f6 = resultpoint3.getX();
        float f7 = resultpoint3.getY();
        if (f < (float)width / 2.0F)
        {
            return (new ResultPoint[] {
                new ResultPoint(f6 - 1.0F, 1.0F + f7), new ResultPoint(1.0F + f2, 1.0F + f3), new ResultPoint(f4 - 1.0F, f5 - 1.0F), new ResultPoint(1.0F + f, f1 - 1.0F)
            });
        } else
        {
            return (new ResultPoint[] {
                new ResultPoint(1.0F + f6, 1.0F + f7), new ResultPoint(1.0F + f2, f3 - 1.0F), new ResultPoint(f4 - 1.0F, 1.0F + f5), new ResultPoint(f - 1.0F, f1 - 1.0F)
            });
        }
    }

    private boolean containsBlackPoint(int i, int j, int k, boolean flag)
    {
        if (!flag) goto _L2; else goto _L1
_L1:
        if (i > j) goto _L4; else goto _L3
_L3:
        if (!image.get(i, k)) goto _L6; else goto _L5
_L5:
        return true;
_L6:
        i++;
        continue; /* Loop/switch isn't completed */
_L2:
        do
        {
            if (i > j)
            {
                break; /* Loop/switch isn't completed */
            }
            if (image.get(k, i))
            {
                continue; /* Loop/switch isn't completed */
            }
            i++;
        } while (true);
        if (true) goto _L5; else goto _L4
_L4:
        return false;
        if (true) goto _L1; else goto _L7
_L7:
    }

    private ResultPoint getBlackPointOnSegment(float f, float f1, float f2, float f3)
    {
        int j = MathUtils.round(MathUtils.distance(f, f1, f2, f3));
        f2 = (f2 - f) / (float)j;
        f3 = (f3 - f1) / (float)j;
        for (int i = 0; i < j; i++)
        {
            int k = MathUtils.round((float)i * f2 + f);
            int l = MathUtils.round((float)i * f3 + f1);
            if (image.get(k, l))
            {
                return new ResultPoint(k, l);
            }
        }

        return null;
    }

    public ResultPoint[] detect()
        throws NotFoundException
    {
        int j1;
        int k1;
        int l1;
        int i2;
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag5;
        boolean flag6;
        int k2;
        boolean flag9;
        k1 = leftInit;
        i2 = rightInit;
        j1 = upInit;
        l1 = downInit;
        flag9 = false;
        k2 = 1;
        flag = false;
        flag6 = false;
        flag5 = false;
        flag2 = false;
        flag1 = false;
_L1:
        ResultPoint resultpoint2;
        int i;
        int k;
        int l;
        int i1;
        int j2;
        boolean flag3;
        boolean flag4;
        boolean flag7;
        boolean flag8;
        j2 = l1;
        l = k1;
        k = i2;
        i = ((flag9) ? 1 : 0);
        i1 = j1;
        if (k2 != 0)
        {
            l = 0;
            boolean flag10 = true;
            k = i2;
            flag3 = flag6;
            do
            {
                if (!flag10 && flag3 || k >= width)
                {
                    break;
                }
                boolean flag14 = containsBlackPoint(j1, l1, k, false);
                if (flag14)
                {
                    k++;
                    l = 1;
                    flag3 = true;
                    flag10 = flag14;
                } else
                {
                    flag10 = flag14;
                    if (!flag3)
                    {
                        k++;
                        flag10 = flag14;
                    }
                }
            } while (true);
            ResultPoint resultpoint;
            if (k >= width)
            {
                i = 1;
                i1 = j1;
                l = k1;
                j2 = l1;
            } else
            {
                boolean flag11 = true;
                i = l1;
                flag4 = flag5;
                i1 = l;
                do
                {
                    if (!flag11 && flag4 || i >= height)
                    {
                        break;
                    }
                    boolean flag15 = containsBlackPoint(k1, k, i, true);
                    if (flag15)
                    {
                        i++;
                        i1 = 1;
                        flag4 = true;
                        flag11 = flag15;
                    } else
                    {
                        flag11 = flag15;
                        if (!flag4)
                        {
                            i++;
                            flag11 = flag15;
                        }
                    }
                } while (true);
                if (i >= height)
                {
                    i1 = 1;
                    j2 = i;
                    l = k1;
                    i = i1;
                    i1 = j1;
                } else
                {
                    boolean flag12 = true;
                    l = k1;
                    flag7 = flag2;
                    j2 = i1;
                    do
                    {
                        if (!flag12 && flag7 || l < 0)
                        {
                            break;
                        }
                        boolean flag16 = containsBlackPoint(j1, i, l, false);
                        if (flag16)
                        {
                            l--;
                            j2 = 1;
                            flag7 = true;
                            flag12 = flag16;
                        } else
                        {
                            flag12 = flag16;
                            if (!flag7)
                            {
                                l--;
                                flag12 = flag16;
                            }
                        }
                    } while (true);
                    if (l < 0)
                    {
                        i1 = 1;
                        j2 = i;
                        i = i1;
                        i1 = j1;
                    } else
                    {
label0:
                        {
                            boolean flag13 = true;
                            i1 = j1;
                            flag8 = flag1;
                            do
                            {
                                if (!flag13 && flag8 || i1 < 0)
                                {
                                    break;
                                }
                                boolean flag17 = containsBlackPoint(l, k, i1, true);
                                if (flag17)
                                {
                                    i1--;
                                    j2 = 1;
                                    flag8 = true;
                                    flag13 = flag17;
                                } else
                                {
                                    flag13 = flag17;
                                    if (!flag8)
                                    {
                                        i1--;
                                        flag13 = flag17;
                                    }
                                }
                            } while (true);
                            if (i1 >= 0)
                            {
                                break label0;
                            }
                            j1 = 1;
                            j2 = i;
                            i = j1;
                        }
                    }
                }
            }
        }
_L3:
        if (i != 0 || !flag)
        {
            break MISSING_BLOCK_LABEL_875;
        }
        j1 = k - l;
        resultpoint = null;
        i = 1;
_L2:
        resultpoint2 = resultpoint;
        if (i < j1)
        {
            resultpoint = getBlackPointOnSegment(l, j2 - i, l + i, j2);
            if (resultpoint == null)
            {
                break MISSING_BLOCK_LABEL_677;
            }
            resultpoint2 = resultpoint;
        }
        if (resultpoint2 == null)
        {
            throw NotFoundException.getNotFoundInstance();
        }
        break MISSING_BLOCK_LABEL_686;
        k2 = j2;
        flag5 = flag4;
        flag2 = flag7;
        flag6 = flag3;
        flag1 = flag8;
        l1 = i;
        k1 = l;
        i2 = k;
        j1 = i1;
        if (j2 != 0)
        {
            flag = true;
            k2 = j2;
            flag5 = flag4;
            flag2 = flag7;
            flag6 = flag3;
            flag1 = flag8;
            l1 = i;
            k1 = l;
            i2 = k;
            j1 = i1;
        }
          goto _L1
        i++;
          goto _L2
        ResultPoint resultpoint1 = null;
        int j = 1;
        ResultPoint resultpoint3;
label1:
        do
        {
label2:
            {
                resultpoint3 = resultpoint1;
                if (j < j1)
                {
                    resultpoint1 = getBlackPointOnSegment(l, i1 + j, l + j, i1);
                    if (resultpoint1 == null)
                    {
                        break label2;
                    }
                    resultpoint3 = resultpoint1;
                }
                if (resultpoint3 == null)
                {
                    throw NotFoundException.getNotFoundInstance();
                }
                break label1;
            }
            j++;
        } while (true);
        resultpoint1 = null;
        j = 1;
        ResultPoint resultpoint4;
label3:
        do
        {
label4:
            {
                resultpoint4 = resultpoint1;
                if (j < j1)
                {
                    resultpoint1 = getBlackPointOnSegment(k, i1 + j, k - j, i1);
                    if (resultpoint1 == null)
                    {
                        break label4;
                    }
                    resultpoint4 = resultpoint1;
                }
                if (resultpoint4 == null)
                {
                    throw NotFoundException.getNotFoundInstance();
                }
                break label3;
            }
            j++;
        } while (true);
        resultpoint1 = null;
        j = 1;
        do
        {
label5:
            {
                if (j < j1)
                {
                    resultpoint1 = getBlackPointOnSegment(k, j2 - j, k - j, j2);
                    if (resultpoint1 == null)
                    {
                        break label5;
                    }
                }
                if (resultpoint1 == null)
                {
                    throw NotFoundException.getNotFoundInstance();
                } else
                {
                    return centerEdges(resultpoint1, resultpoint2, resultpoint4, resultpoint3);
                }
            }
            j++;
        } while (true);
          goto _L1
        throw NotFoundException.getNotFoundInstance();
          goto _L3
    }
}
