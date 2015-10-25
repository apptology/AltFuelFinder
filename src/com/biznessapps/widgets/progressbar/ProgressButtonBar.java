// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.progressbar;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;

public final class ProgressButtonBar extends View
{

    private static final float OFFSET_CIRCLE_DP = 1F;
    private static final float RADIUS_SUB_DP = 3F;
    private static final int WIDTH_DP = 2;
    private final float OFFSET_CIRCLE_PX;
    private final float RADIUS_SUB_PX;
    private final float WIDTH_PX;
    private final Paint paint = new Paint();
    private volatile float progress;
    private RectF rect;

    public ProgressButtonBar(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        RADIUS_SUB_PX = 3F * getResources().getDisplayMetrics().density;
        WIDTH_PX = 2.0F * getResources().getDisplayMetrics().density;
        OFFSET_CIRCLE_PX = 1.0F * getResources().getDisplayMetrics().density;
        paint.setColor(0xff888888);
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        paint.setStrokeWidth(WIDTH_PX);
    }

    public void onDraw(Canvas canvas)
    {
        if (rect == null)
        {
            float f = canvas.getWidth() - getPaddingRight();
            float f1 = RADIUS_SUB_PX;
            float f2 = canvas.getHeight() - getPaddingBottom();
            float f3 = RADIUS_SUB_PX;
            rect = new RectF((float)getPaddingLeft() + RADIUS_SUB_PX + OFFSET_CIRCLE_PX, (float)getPaddingTop() + RADIUS_SUB_PX + OFFSET_CIRCLE_PX, f - f1, f2 - f3);
        }
        canvas.drawArc(rect, -90F, progress * 360F, false, paint);
    }

    public void setColor(int i)
    {
        paint.setColor(i);
    }

    public void setProgress(float f)
    {
        progress = f;
        invalidate();
    }
}
