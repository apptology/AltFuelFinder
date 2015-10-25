// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.parallax;

import android.view.View;

public class ParallaxPagerTransformer
    implements android.support.v4.view.ViewPager.PageTransformer
{

    private int border;
    private int id;
    private float speed;

    public ParallaxPagerTransformer(int i)
    {
        border = 0;
        speed = 0.2F;
        id = i;
    }

    public void setBorder(int i)
    {
        border = i;
    }

    public void setSpeed(float f)
    {
        speed = f;
    }

    public void transformPage(View view, float f)
    {
        float f1;
label0:
        {
            View view1 = view.findViewById(id);
            if (view1 != null && f > -1F && f < 1.0F)
            {
                view1.setTranslationX(-(f * (float)view1.getWidth() * speed));
                f1 = ((float)view.getWidth() - (float)border) / (float)view.getWidth();
                if (f != 0.0F)
                {
                    break label0;
                }
                view.setScaleX(1.0F);
                view.setScaleY(1.0F);
            }
            return;
        }
        view.setScaleX(f1);
        view.setScaleY(f1);
    }
}
