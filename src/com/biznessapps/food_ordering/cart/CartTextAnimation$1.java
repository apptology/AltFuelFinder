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

class val.inAnim extends TimerTask
{

    final CartTextAnimation this$0;
    final Animation val$inAnim;
    final Animation val$outAnim;
    final Handler val$uiHandler;

    public void run()
    {
        val$uiHandler.post(new Runnable() {

            final CartTextAnimation._cls1 this$1;

            public void run()
            {
                if (CartTextAnimation.access$000(this$0) == 0)
                {
                    CartTextAnimation.access$100(this$0).startAnimation(outAnim);
                    CartTextAnimation.access$200(this$0).startAnimation(inAnim);
                } else
                {
                    CartTextAnimation.access$100(this$0).startAnimation(inAnim);
                    CartTextAnimation.access$200(this$0).startAnimation(outAnim);
                }
                CartTextAnimation.access$002(this$0, (CartTextAnimation.access$000(this$0) + 1) % 2);
            }

            
            {
                this$1 = CartTextAnimation._cls1.this;
                super();
            }
        });
    }

    _cls1.this._cls1()
    {
        this$0 = final_carttextanimation;
        val$uiHandler = handler;
        val$outAnim = animation;
        val$inAnim = Animation.this;
        super();
    }
}
