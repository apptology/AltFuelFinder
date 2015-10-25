// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.cart;

import android.content.Context;
import android.os.Handler;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.entities.CartEntity;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class CartTextAnimation
{

    private static final Long INTERVAL = Long.valueOf(2700L);
    private ViewGroup cartContainer;
    private Context context;
    private int currentPos;
    private Timer myTimer;
    private TextView textView1;
    private TextView textView2;

    public CartTextAnimation(Context context1, TextView textview, TextView textview1, ViewGroup viewgroup)
    {
        context = context1;
        textView1 = textview;
        textView2 = textview1;
        cartContainer = viewgroup;
    }

    public ViewGroup getCartContainer()
    {
        return cartContainer;
    }

    public void startAnim()
    {
        CartEntity cartentity = FoodOrderingManager.getInstance().getCart();
        if (cartentity.getItems().size() > 0)
        {
            final Animation outAnim = AnimationUtils.loadAnimation(context, com.biznessapps.layout.R.anim.cart_anim_out);
            final Animation inAnim = AnimationUtils.loadAnimation(context, com.biznessapps.layout.R.anim.cart_anim_in);
            final Handler uiHandler = new Handler();
            int i = 0;
            for (Iterator iterator = cartentity.getItems().iterator(); iterator.hasNext();)
            {
                i += ((com.biznessapps.food_ordering.entities.CategoryEntity.Item)iterator.next()).getQuantity();
            }

            currentPos = 0;
            textView1.setText(cartentity.getFormattedValue(cartentity.getTotalCharges()));
            textView2.setText((new StringBuilder()).append("").append(i).toString());
            myTimer = new Timer();
            myTimer.schedule(new TimerTask() {

                final CartTextAnimation this$0;
                final Animation val$inAnim;
                final Animation val$outAnim;
                final Handler val$uiHandler;

                public void run()
                {
                    uiHandler.post(new Runnable() {

                        final _cls1 this$1;

                        public void run()
                        {
                            if (currentPos == 0)
                            {
                                textView1.startAnimation(outAnim);
                                textView2.startAnimation(inAnim);
                            } else
                            {
                                textView1.startAnimation(inAnim);
                                textView2.startAnimation(outAnim);
                            }
                            currentPos = (currentPos + 1) % 2;
                        }

            
            {
                this$1 = _cls1.this;
                super();
            }
                    });
                }

            
            {
                this$0 = CartTextAnimation.this;
                uiHandler = handler;
                outAnim = animation;
                inAnim = animation1;
                super();
            }
            }, INTERVAL.longValue(), INTERVAL.longValue());
            return;
        } else
        {
            textView1.setText("");
            textView2.setText("");
            return;
        }
    }

    public void stopAnim()
    {
        if (myTimer != null)
        {
            myTimer.cancel();
            myTimer.purge();
        }
    }




/*
    static int access$002(CartTextAnimation carttextanimation, int i)
    {
        carttextanimation.currentPos = i;
        return i;
    }

*/


}
