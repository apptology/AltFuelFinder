// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.mortgage;

import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.ImageView;

// Referenced classes of package com.biznessapps.mortgage:
//            MortgageCalculatorFragment

class val.originalHeight
    implements android.view.animation._cls6
{

    final MortgageCalculatorFragment this$0;
    final int val$originalHeight;

    public void onAnimationEnd(Animation animation)
    {
        animation = (ImageView)MortgageCalculatorFragment.access$600(MortgageCalculatorFragment.this).findViewById(com.biznessapps.layout._cls6.this._fld0);
        animation.getBackground().setAlpha(120);
        animation.setVisibility(0);
        MortgageCalculatorFragment.access$700(MortgageCalculatorFragment.this, animation);
        ((android.widget.ragment)animation.getLayoutParams()).argins(0, 0, 0, (int)((float)val$originalHeight * 0.52F));
        ((ViewGroup)MortgageCalculatorFragment.access$800(MortgageCalculatorFragment.this).findViewById(com.biznessapps.layout._cls6.this._fld0)).setVisibility(0);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    ()
    {
        this$0 = final_mortgagecalculatorfragment;
        val$originalHeight = I.this;
        super();
    }
}
