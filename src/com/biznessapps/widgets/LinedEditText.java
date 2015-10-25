// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.EditText;

public class LinedEditText extends EditText
{

    private Paint mPaint;
    private Rect mRect;

    public LinedEditText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mRect = new Rect();
        mPaint = new Paint();
        mPaint.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
        mPaint.setColor(0xff000000);
    }

    protected void onDraw(Canvas canvas)
    {
        int j = getHeight() / getLineHeight();
        int i = j;
        if (getLineCount() > j)
        {
            i = getLineCount();
        }
        Rect rect = mRect;
        Paint paint = mPaint;
        int l = getLineBounds(0, rect);
        for (int k = 0; k < i; k++)
        {
            canvas.drawLine(rect.left, l + 1, rect.right, l + 1, paint);
            l += getLineHeight();
        }

        super.onDraw(canvas);
    }
}
