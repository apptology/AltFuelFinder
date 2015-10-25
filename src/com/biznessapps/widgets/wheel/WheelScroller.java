// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.wheel;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;

public class WheelScroller
{
    public static interface ScrollingListener
    {

        public abstract void onFinished();

        public abstract void onJustify();

        public abstract void onScroll(int i);

        public abstract void onStarted();
    }


    public static final int MIN_DELTA_FOR_SCROLLING = 1;
    private static final int SCROLLING_DURATION = 400;
    private final int MESSAGE_JUSTIFY = 1;
    private final int MESSAGE_SCROLL = 0;
    private Handler animationHandler;
    private Context context;
    private GestureDetector gestureDetector;
    private android.view.GestureDetector.SimpleOnGestureListener gestureListener;
    private boolean isScrollingPerformed;
    private int lastScrollY;
    private float lastTouchedY;
    private ScrollingListener listener;
    private Scroller scroller;

    public WheelScroller(Context context1, ScrollingListener scrollinglistener)
    {
        gestureListener = new android.view.GestureDetector.SimpleOnGestureListener() {

            final WheelScroller this$0;

            public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
            {
                lastScrollY = 0;
                scroller.fling(0, lastScrollY, 0, (int)(-f1), 0, 0, 0x80000001, 0x7fffffff);
                setNextMessage(0);
                return true;
            }

            public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
            {
                return true;
            }

            
            {
                this$0 = WheelScroller.this;
                super();
            }
        };
        animationHandler = new Handler() {

            final WheelScroller this$0;

            public void handleMessage(Message message)
            {
                scroller.computeScrollOffset();
                int i = scroller.getCurrY();
                int j = lastScrollY - i;
                lastScrollY = i;
                if (j != 0)
                {
                    listener.onScroll(j);
                }
                if (Math.abs(i - scroller.getFinalY()) < 1)
                {
                    scroller.getFinalY();
                    scroller.forceFinished(true);
                }
                if (!scroller.isFinished())
                {
                    animationHandler.sendEmptyMessage(message.what);
                    return;
                }
                if (message.what == 0)
                {
                    justify();
                    return;
                } else
                {
                    finishScrolling();
                    return;
                }
            }

            
            {
                this$0 = WheelScroller.this;
                super();
            }
        };
        gestureDetector = new GestureDetector(context1, gestureListener);
        gestureDetector.setIsLongpressEnabled(false);
        scroller = new Scroller(context1);
        listener = scrollinglistener;
        context = context1;
    }

    private void clearMessages()
    {
        animationHandler.removeMessages(0);
        animationHandler.removeMessages(1);
    }

    private void justify()
    {
        listener.onJustify();
        setNextMessage(1);
    }

    private void setNextMessage(int i)
    {
        clearMessages();
        animationHandler.sendEmptyMessage(i);
    }

    private void startScrolling()
    {
        if (!isScrollingPerformed)
        {
            isScrollingPerformed = true;
            listener.onStarted();
        }
    }

    void finishScrolling()
    {
        if (isScrollingPerformed)
        {
            listener.onFinished();
            isScrollingPerformed = false;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 32
    //                   0 57
    //                   1 32
    //                   2 80;
           goto _L1 _L2 _L1 _L3
_L1:
        if (!gestureDetector.onTouchEvent(motionevent) && motionevent.getAction() == 1)
        {
            justify();
        }
        return true;
_L2:
        lastTouchedY = motionevent.getY();
        scroller.forceFinished(true);
        clearMessages();
        continue; /* Loop/switch isn't completed */
_L3:
        int i = (int)(motionevent.getY() - lastTouchedY);
        if (i != 0)
        {
            startScrolling();
            listener.onScroll(i);
            lastTouchedY = motionevent.getY();
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void scroll(int i, int j)
    {
        scroller.forceFinished(true);
        lastScrollY = 0;
        Scroller scroller1 = scroller;
        if (j == 0)
        {
            j = 400;
        }
        scroller1.startScroll(0, 0, 0, i, j);
        setNextMessage(0);
        startScrolling();
    }

    public void setInterpolator(Interpolator interpolator)
    {
        scroller.forceFinished(true);
        scroller = new Scroller(context, interpolator);
    }

    public void stopScrolling()
    {
        scroller.forceFinished(true);
    }



/*
    static int access$002(WheelScroller wheelscroller, int i)
    {
        wheelscroller.lastScrollY = i;
        return i;
    }

*/





}
