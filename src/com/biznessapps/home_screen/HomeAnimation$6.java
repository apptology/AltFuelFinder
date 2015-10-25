// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.animation.Animation;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeAnimation

class val.b
    implements android.view.animation.ionListener
{

    final HomeAnimation this$0;
    final Bitmap val$b;
    final View val$firstView;

    public void onAnimationEnd(Animation animation)
    {
        val$firstView.setBackgroundDrawable(new BitmapDrawable(val$b));
        val$firstView.startAnimation(fadeInAnimation);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    stener()
    {
        this$0 = final_homeanimation;
        val$firstView = view;
        val$b = Bitmap.this;
        super();
    }
}
