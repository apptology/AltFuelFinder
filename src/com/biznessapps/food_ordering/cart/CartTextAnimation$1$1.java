// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.cart;

import android.os.Handler;
import android.view.animation.Animation;
import android.widget.TextView;
import java.util.TimerTask;

// Referenced classes of package com.biznessapps.food_ordering.cart:
//            CartTextAnimation

class this._cls1
    implements Runnable
{

    final is._cls0 this$1;

    public void run()
    {
        if (CartTextAnimation.access$000(_fld0) == 0)
        {
            CartTextAnimation.access$100(_fld0).startAnimation(outAnim);
            CartTextAnimation.access$200(_fld0).startAnimation(inAnim);
        } else
        {
            CartTextAnimation.access$100(_fld0).startAnimation(inAnim);
            CartTextAnimation.access$200(_fld0).startAnimation(outAnim);
        }
        CartTextAnimation.access$002(_fld0, (CartTextAnimation.access$000(_fld0) + 1) % 2);
    }

    l.inAnim()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/food_ordering/cart/CartTextAnimation$1

/* anonymous class */
    class CartTextAnimation._cls1 extends TimerTask
    {

        final CartTextAnimation this$0;
        final Animation val$inAnim;
        final Animation val$outAnim;
        final Handler val$uiHandler;

        public void run()
        {
            uiHandler.post(new CartTextAnimation._cls1._cls1());
        }

            
            {
                this$0 = final_carttextanimation;
                uiHandler = handler;
                outAnim = animation;
                inAnim = Animation.this;
                super();
            }
    }

}
