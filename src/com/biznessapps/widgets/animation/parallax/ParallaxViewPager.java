// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.parallax;

import android.content.Context;
import android.support.v4.view.GestureDetectorCompat;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import java.lang.reflect.Field;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.biznessapps.widgets.animation.parallax:
//            ParallaxPagerTransformer

public class ParallaxViewPager extends ViewPager
    implements android.view.GestureDetector.OnGestureListener
{
    private class MyScroller extends Scroller
    {

        final ParallaxViewPager this$0;

        public void startScroll(int i, int j, int k, int l, int i1)
        {
            super.startScroll(i, j, k, l, pager.getDuration());
        }

        public MyScroller(Context context)
        {
            this$0 = ParallaxViewPager.this;
            super(context, new DecelerateInterpolator());
        }
    }

    private class PagerAutoTask extends TimerTask
    {

        final ParallaxViewPager this$0;

        public void run()
        {
            if (touchState)
            {
                pager.post(new Runnable() {

                    final PagerAutoTask this$1;

                    public void run()
                    {
                        setDefaultDuration();
                        int i = pager.getCurrentItem();
                        pager.setCurrentItem(i + 1);
                    }

            
            {
                this$1 = PagerAutoTask.this;
                super();
            }
                });
            }
        }

        private PagerAutoTask()
        {
            this$0 = ParallaxViewPager.this;
            super();
        }

    }


    private static final int DEFAULT_DELAY = 5000;
    private static final int DEFAULT_DURATION = 1000;
    private static final int MANUAL_DURATION = 100;
    private static final int TRANSFORMER_BORDER = 0;
    private static final float TRANSFORMER_SPEED = 0.6F;
    private GestureDetectorCompat detector;
    private int duration;
    private ParallaxViewPager pager;
    private Timer timer;
    private boolean touchState;

    public ParallaxViewPager(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        pager = this;
        initScroller();
        initTransformer();
        initAutoFlipper();
        initManualFlipper();
        detector = new GestureDetectorCompat(getContext(), this);
    }

    private int getDuration()
    {
        this;
        JVM INSTR monitorenter ;
        int i = duration;
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    private void initAutoFlipper()
    {
        touchState = true;
    }

    private void initManualFlipper()
    {
        setOnTouchListener(new android.view.View.OnTouchListener() {

            final ParallaxViewPager this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                detector.onTouchEvent(motionevent);
                int i = motionevent.getActionMasked();
                view = ParallaxViewPager.this;
                boolean flag;
                if (i == 1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                view.touchState = flag;
                if (i == 0)
                {
                    stopAutoFlipTimer();
                    setManualDuration();
                }
                if (i == 1)
                {
                    startAutoFlipTimer();
                }
                return false;
            }

            
            {
                this$0 = ParallaxViewPager.this;
                super();
            }
        });
    }

    private void initScroller()
    {
        setDefaultDuration();
        try
        {
            Field field = android/support/v4/view/ViewPager.getDeclaredField("mScroller");
            field.setAccessible(true);
            field.set(this, new MyScroller(getContext()));
            return;
        }
        catch (Exception exception)
        {
            Log.e(com/biznessapps/widgets/animation/parallax/ParallaxViewPager.getName(), "scroller error", exception);
        }
    }

    private void initTransformer()
    {
        ParallaxPagerTransformer parallaxpagertransformer = new ParallaxPagerTransformer(com.biznessapps.layout.R.id.imageView);
        parallaxpagertransformer.setBorder(0);
        parallaxpagertransformer.setSpeed(0.6F);
        setPageTransformer(false, parallaxpagertransformer);
    }

    private void setDefaultDuration()
    {
        this;
        JVM INSTR monitorenter ;
        duration = 1000;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void setManualDuration()
    {
        this;
        JVM INSTR monitorenter ;
        duration = 100;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean onDown(MotionEvent motionevent)
    {
        return false;
    }

    public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        return false;
    }

    public void onLongPress(MotionEvent motionevent)
    {
    }

    public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        return false;
    }

    public void onShowPress(MotionEvent motionevent)
    {
    }

    public boolean onSingleTapUp(MotionEvent motionevent)
    {
        performClick();
        return false;
    }

    public void startAutoFlipTimer()
    {
        timer = new Timer();
        PagerAutoTask pagerautotask = new PagerAutoTask();
        timer.schedule(pagerautotask, 5000L, 5000L);
    }

    public void stopAutoFlipTimer()
    {
        if (timer != null)
        {
            timer.cancel();
        }
    }




/*
    static boolean access$202(ParallaxViewPager parallaxviewpager, boolean flag)
    {
        parallaxviewpager.touchState = flag;
        return flag;
    }

*/




}
