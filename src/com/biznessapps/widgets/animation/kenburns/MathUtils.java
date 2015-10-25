// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.kenburns;

import android.graphics.RectF;

public final class MathUtils
{

    public MathUtils()
    {
    }

    protected static float getRectRatio(RectF rectf)
    {
        return rectf.width() / rectf.height();
    }

    protected static boolean haveSameAspectRatio(RectF rectf, RectF rectf1)
    {
        return Math.abs(truncate(getRectRatio(rectf), 2) - truncate(getRectRatio(rectf1), 2)) <= 0.01F;
    }

    protected static float truncate(float f, int i)
    {
        float f1 = (float)Math.pow(10D, i);
        return (float)Math.round(f * f1) / f1;
    }
}
