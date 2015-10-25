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
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;

public final class ProgressButtonPendingAnimationView extends View
{

    private static final float OFFSET_CIRCLE_DP = 1F;
    private static final float RADIUS_SUB_DP = 1.5F;
    private static final int WIDTH_DP = 2;
    private final int ANIMATION_DURATION = 700;
    private final int ARC_ANGLE = 320;
    private final float OFFSET_CIRCLE_PX;
    private final float RADIUS_SUB_PX;
    private final float WIDTH_PX;
    private RotateAnimation anim;
    private final Paint paint = new Paint();
    private RectF rect;

    public ProgressButtonPendingAnimationView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        OFFSET_CIRCLE_PX = 1.0F * getResources().getDisplayMetrics().density;
        RADIUS_SUB_PX = 1.5F * getResources().getDisplayMetrics().density;
        WIDTH_PX = 2.0F * getResources().getDisplayMetrics().density;
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
        if (anim == null)
        {
            anim = new RotateAnimation(0.0F, 360F, (float)(canvas.getWidth() / 2) + OFFSET_CIRCLE_PX / 2.0F, (float)(canvas.getHeight() / 2) + OFFSET_CIRCLE_PX / 2.0F);
            anim.setRepeatMode(1);
            anim.setRepeatCount(-1);
            anim.setInterpolator(new LinearInterpolator());
            anim.setDuration(700L);
            startAnimation(anim);
        }
        canvas.drawArc(rect, 200F, 320F, false, paint);
    }

    public void setColor(int i)
    {
        paint.setColor(i);
    }

    public void setVisibility(int i)
    {
        super.setVisibility(i);
        if (i != 0)
        {
            anim = null;
            clearAnimation();
        }
    }
}
