// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.tip_calculator;

import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.ImageView;

// Referenced classes of package com.biznessapps.tip_calculator:
//            TipCalculatorFragment

class this._cls0
    implements android.view.animation.ner
{

    final TipCalculatorFragment this$0;

    public void onAnimationEnd(Animation animation)
    {
        animation = (ImageView)TipCalculatorFragment.access$400(TipCalculatorFragment.this).findViewById(com.biznessapps.layout.gment);
        animation.getBackground().setAlpha(120);
        animation.setVisibility(0);
        TipCalculatorFragment.access$500(TipCalculatorFragment.this, animation);
        ((android.widget.)animation.getLayoutParams()).setMargins(0, 0, 0, (int)((float)TipCalculatorFragment.access$600(TipCalculatorFragment.this) * 0.4F));
        ((ViewGroup)TipCalculatorFragment.access$700(TipCalculatorFragment.this).findViewById(com.biznessapps.layout.gment)).setVisibility(0);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    ()
    {
        this$0 = TipCalculatorFragment.this;
        super();
    }
}
