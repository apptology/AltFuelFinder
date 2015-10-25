// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.common.detector;


public final class MathUtils
{

    private MathUtils()
    {
    }

    public static float distance(float f, float f1, float f2, float f3)
    {
        f -= f2;
        f1 -= f3;
        return (float)Math.sqrt(f * f + f1 * f1);
    }

    public static float distance(int i, int j, int k, int l)
    {
        i -= k;
        j -= l;
        return (float)Math.sqrt(i * i + j * j);
    }

    public static int round(float f)
    {
        float f1;
        if (f < 0.0F)
        {
            f1 = -0.5F;
        } else
        {
            f1 = 0.5F;
        }
        return (int)(f1 + f);
    }
}
