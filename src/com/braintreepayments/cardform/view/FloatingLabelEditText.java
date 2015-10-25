// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.braintreepayments.cardform.view;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Looper;
import android.text.Editable;
import android.text.TextPaint;
import android.util.AttributeSet;

// Referenced classes of package com.braintreepayments.cardform.view:
//            ErrorEditText

public class FloatingLabelEditText extends ErrorEditText
{

    private static final int ANIMATION_DURATION_MILLIS = 300;
    private ValueAnimator mAlphaAnimator;
    private int mAnimatedHintColor;
    private float mAnimatedHintHeight;
    private ValueAnimator mFocusColorAnimator;
    private int mHintAlpha;
    private ValueAnimator mHintAnimator;
    private TextPaint mHintPaint;
    private ValueAnimator mInactiveColorAnimator;
    private int mPreviousTextLength;
    protected boolean mRightToLeftLanguage;

    public FloatingLabelEditText(Context context)
    {
        super(context);
        mHintPaint = new TextPaint();
        mAnimatedHintHeight = -1F;
        init();
    }

    public FloatingLabelEditText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mHintPaint = new TextPaint();
        mAnimatedHintHeight = -1F;
        init();
    }

    public FloatingLabelEditText(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mHintPaint = new TextPaint();
        mAnimatedHintHeight = -1F;
        init();
    }

    private void init()
    {
        mRightToLeftLanguage = isRightToLeftLanguage();
        mPreviousTextLength = getText().length();
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            setupAnimations();
        }
    }

    private boolean isRightToLeftLanguage()
    {
        return false;
    }

    private void setupAnimations()
    {
        float f = getTextSize();
        mHintAnimator = ValueAnimator.ofFloat(new float[] {
            1.75F * f, f
        });
        mHintAnimator.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

            final FloatingLabelEditText this$0;

            public void onAnimationUpdate(ValueAnimator valueanimator)
            {
                mAnimatedHintHeight = ((Float)valueanimator.getAnimatedValue()).floatValue();
                invalidate();
            }

            
            {
                this$0 = FloatingLabelEditText.this;
                super();
            }
        });
        mHintAnimator.setDuration(300L);
        android.animation.ValueAnimator.AnimatorUpdateListener animatorupdatelistener = new android.animation.ValueAnimator.AnimatorUpdateListener() {

            final FloatingLabelEditText this$0;

            public void onAnimationUpdate(ValueAnimator valueanimator)
            {
                mAnimatedHintColor = ((Integer)valueanimator.getAnimatedValue()).intValue();
                invalidate();
            }

            
            {
                this$0 = FloatingLabelEditText.this;
                super();
            }
        };
        mFocusColorAnimator = ValueAnimator.ofInt(new int[] {
            getInactiveColor(), getFocusedColor()
        });
        mFocusColorAnimator.setEvaluator(new ArgbEvaluator());
        mFocusColorAnimator.addUpdateListener(animatorupdatelistener);
        mFocusColorAnimator.setDuration(300L);
        mInactiveColorAnimator = ValueAnimator.ofInt(new int[] {
            getFocusedColor(), getInactiveColor()
        });
        mInactiveColorAnimator.setEvaluator(new ArgbEvaluator());
        mInactiveColorAnimator.addUpdateListener(animatorupdatelistener);
        mInactiveColorAnimator.setDuration(300L);
        mAlphaAnimator = ValueAnimator.ofInt(new int[] {
            0, 255
        });
        mAlphaAnimator.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

            final FloatingLabelEditText this$0;

            public void onAnimationUpdate(ValueAnimator valueanimator)
            {
                mHintAlpha = ((Integer)valueanimator.getAnimatedValue()).intValue();
                invalidate();
            }

            
            {
                this$0 = FloatingLabelEditText.this;
                super();
            }
        });
    }

    protected void handleTextColorOnFocus(boolean flag)
    {
label0:
        {
            if (Looper.myLooper() != null)
            {
                if (!flag)
                {
                    break label0;
                }
                mFocusColorAnimator.start();
            }
            return;
        }
        mInactiveColorAnimator.start();
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (getText().length() > 0)
        {
            mHintPaint.setColor(mAnimatedHintColor);
            mHintPaint.setTextSize((getPaint().getTextSize() * 3F) / 4F);
            mHintPaint.setAlpha(mHintAlpha);
            canvas.drawText(getHint().toString(), 0.0F, mAnimatedHintHeight, mHintPaint);
        }
    }

    protected void onFocusChanged(boolean flag, int i, Rect rect)
    {
        super.onFocusChanged(flag, i, rect);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            handleTextColorOnFocus(flag);
        }
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        super.onTextChanged(charsequence, i, j, k);
        if (android.os.Build.VERSION.SDK_INT >= 14 && Looper.myLooper() != null && mPreviousTextLength == 0 && charsequence.length() > 0 && !mHintAnimator.isStarted())
        {
            mHintAnimator.start();
            mFocusColorAnimator.start();
            mAlphaAnimator.start();
        }
        mPreviousTextLength = charsequence.length();
    }


/*
    static float access$002(FloatingLabelEditText floatinglabeledittext, float f)
    {
        floatinglabeledittext.mAnimatedHintHeight = f;
        return f;
    }

*/


/*
    static int access$102(FloatingLabelEditText floatinglabeledittext, int i)
    {
        floatinglabeledittext.mAnimatedHintColor = i;
        return i;
    }

*/


/*
    static int access$202(FloatingLabelEditText floatinglabeledittext, int i)
    {
        floatinglabeledittext.mHintAlpha = i;
        return i;
    }

*/
}
