// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.braintreepayments.cardform.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.EditText;

public class ErrorEditText extends EditText
{

    private int mActiveUnderlineThickness;
    private boolean mError;
    private int mErrorColor;
    private int mFocusedColor;
    private int mInactiveColor;
    private int mInactiveUnderlineThickness;
    private int mPaddingBottom;
    private Paint mPaint;

    public ErrorEditText(Context context)
    {
        super(context);
        init();
    }

    public ErrorEditText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init();
    }

    public ErrorEditText(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        init();
    }

    private void init()
    {
        mPaint = new Paint(1);
        mPaddingBottom = dp2px(8F);
        mActiveUnderlineThickness = dp2px(2.0F);
        mInactiveUnderlineThickness = dp2px(1.0F);
        mError = false;
        mInactiveColor = getResources().getColor(com.braintreepayments.cardform.R.color.bt_light_gray);
        mErrorColor = getResources().getColor(com.braintreepayments.cardform.R.color.bt_red);
        TypedValue typedvalue = new TypedValue();
        int i = getResources().getIdentifier("colorAccent", "attr", getContext().getPackageName());
        getContext().getTheme().resolveAttribute(i, typedvalue, true);
        mFocusedColor = typedvalue.data;
        if (mFocusedColor == 0)
        {
            mFocusedColor = getResources().getColor(com.braintreepayments.cardform.R.color.bt_blue);
        }
        setTextColor(getResources().getColor(com.braintreepayments.cardform.R.color.bt_black));
    }

    protected int dp2px(float f)
    {
        return Math.round(TypedValue.applyDimension(1, f, getResources().getDisplayMetrics()));
    }

    public void focusNextView()
    {
        if (getImeActionId() != 2)
        {
            View view;
            try
            {
                view = focusSearch(2);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                illegalargumentexception = focusSearch(130);
            }
            if (view != null)
            {
                view.requestFocus();
                return;
            }
        }
    }

    protected int getErrorColor()
    {
        return mErrorColor;
    }

    protected int getFocusedColor()
    {
        return mFocusedColor;
    }

    protected int getInactiveColor()
    {
        return mInactiveColor;
    }

    public boolean isError()
    {
        return mError;
    }

    public boolean isValid()
    {
        return true;
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        int i = getRight();
        int j = getBottom() - mPaddingBottom - mActiveUnderlineThickness;
        if (mError)
        {
            mPaint.setColor(mErrorColor);
            canvas.drawRect(0.0F, j, i, mActiveUnderlineThickness + j, mPaint);
            return;
        }
        if (!isEnabled())
        {
            mPaint.setColor(mInactiveColor & 0xffffff | 0x44000000);
            canvas.drawRect(0.0F, j, i, mInactiveUnderlineThickness + j, mPaint);
            return;
        }
        if (hasFocus())
        {
            mPaint.setColor(mFocusedColor);
            canvas.drawRect(0.0F, j, i, mActiveUnderlineThickness + j, mPaint);
            return;
        } else
        {
            mPaint.setColor(mInactiveColor & 0xffffff | 0x1e000000);
            canvas.drawRect(0.0F, j, i, mInactiveUnderlineThickness + j, mPaint);
            return;
        }
    }

    protected void onFocusChanged(boolean flag, int i, Rect rect)
    {
        super.onFocusChanged(flag, i, rect);
        if (!flag && !isValid())
        {
            setError(true);
        }
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        super.onTextChanged(charsequence, i, j, k);
        setError(false);
    }

    public void setError(boolean flag)
    {
        mError = flag;
    }

    public void validate()
    {
        if (isValid())
        {
            setError(false);
            return;
        } else
        {
            setError(true);
            return;
        }
    }
}
