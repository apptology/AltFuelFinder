// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.menudrawer;

import android.view.animation.Interpolator;

// Referenced classes of package net.simonvt.menudrawer:
//            SinusoidalInterpolator

public class PeekInterpolator
    implements Interpolator
{

    private static final SinusoidalInterpolator SINUSOIDAL_INTERPOLATOR = new SinusoidalInterpolator();
    private static final String TAG = "PeekInterpolator";

    public PeekInterpolator()
    {
    }

    public float getInterpolation(float f)
    {
        if (f < 0.3333333F)
        {
            return SINUSOIDAL_INTERPOLATOR.getInterpolation(f * 3F);
        }
        if (f > 0.6666667F)
        {
            return 1.0F - SINUSOIDAL_INTERPOLATOR.getInterpolation(((f + 0.3333333F) - 1.0F) * 3F);
        } else
        {
            return 1.0F;
        }
    }

}
