// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.menudrawer;

import android.view.animation.Interpolator;

public class SmoothInterpolator
    implements Interpolator
{

    public SmoothInterpolator()
    {
    }

    public float getInterpolation(float f)
    {
        f--;
        return f * f * f * f * f + 1.0F;
    }
}
