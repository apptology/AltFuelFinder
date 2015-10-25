// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.animation.LinearInterpolator;
import android.widget.Scroller;
import android.widget.TextView;

public class ScrollTextView extends TextView
{

    private boolean mPaused;
    private int mRndDuration;
    private Scroller mSlr;
    private int mXPaused;

    public ScrollTextView(Context context)
    {
        this(context, null);
        setSingleLine();
        setEllipsize(null);
        setVisibility(0);
    }

    public ScrollTextView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0x1010084);
        setSingleLine();
        setEllipsize(null);
        setVisibility(0);
    }

    public ScrollTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mRndDuration = 2000;
        mXPaused = 0;
        mPaused = true;
        setSingleLine();
        setEllipsize(null);
        setVisibility(0);
    }

    private int calculateScrollingLen()
    {
        TextPaint textpaint = getPaint();
        Rect rect = new Rect();
        String s = getText().toString();
        textpaint.getTextBounds(s, 0, s.length(), rect);
        return rect.width() + getWidth();
    }

    public void computeScroll()
    {
        super.computeScroll();
        while (mSlr == null || !mSlr.isFinished() || mPaused) 
        {
            return;
        }
        startScroll();
    }

    public int getRndDuration()
    {
        return mRndDuration;
    }

    public boolean isPaused()
    {
        return mPaused;
    }

    public void pauseScroll()
    {
        while (mSlr == null || mPaused) 
        {
            return;
        }
        mPaused = true;
        mXPaused = mSlr.getCurrX();
        mSlr.abortAnimation();
    }

    public void resumeScroll()
    {
        if (!mPaused)
        {
            return;
        } else
        {
            setHorizontallyScrolling(true);
            mSlr = new Scroller(getContext(), new LinearInterpolator());
            setScroller(mSlr);
            int j = calculateScrollingLen();
            int i = j - (getWidth() + mXPaused);
            j = (new Double(((double)(mRndDuration * i) * 1.0D) / (double)j)).intValue();
            setVisibility(0);
            mSlr.startScroll(mXPaused, 0, i, 0, j);
            mPaused = false;
            return;
        }
    }

    public void setRndDuration(int i)
    {
        mRndDuration = i;
    }

    public void startScroll()
    {
        mXPaused = getWidth() * -1;
        mPaused = true;
        resumeScroll();
    }
}
