// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.SeekBar;

public class ArcSeekBar extends SeekBar
{

    private static final int MAX_ANGLE = 180;
    private static final int START_ANGLE = 180;
    private static final float STROKE_THICKNESS_RATE = 0.1F;
    private Paint basePaint;
    private int currentProgress;
    private int maxProgress;
    private RectF oval;
    private int progressColor;
    private Paint progressPaint;
    private int strokeThickness;
    private int trackColor;

    public ArcSeekBar(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        oval = new RectF(5F, 5F, 550F, 550F);
        trackColor = -1;
        progressColor = 0xff000000;
    }

    public ArcSeekBar(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        oval = new RectF(5F, 5F, 550F, 550F);
        trackColor = -1;
        progressColor = 0xff000000;
    }

    public void init()
    {
        initBasePaint();
        initProgressPaint();
    }

    public void initBasePaint()
    {
        basePaint = new Paint();
        basePaint.setAntiAlias(true);
        basePaint.setColor(trackColor);
        basePaint.setStrokeWidth(strokeThickness);
        basePaint.setStyle(android.graphics.Paint.Style.STROKE);
    }

    public void initProgressPaint()
    {
        progressPaint = new Paint();
        progressPaint.setAntiAlias(true);
        progressPaint.setColor(progressColor);
        progressPaint.setStrokeWidth(strokeThickness);
        progressPaint.setStyle(android.graphics.Paint.Style.STROKE);
    }

    public void nextStepProgress()
    {
        currentProgress = currentProgress + 1;
        if (currentProgress > maxProgress)
        {
            currentProgress = 0;
        }
        invalidate();
    }

    protected void onDraw(Canvas canvas)
    {
        canvas.drawArc(oval, 180F, 180F, false, basePaint);
        if (maxProgress != 0)
        {
            canvas.drawArc(oval, 180F, (currentProgress * 180) / maxProgress, false, progressPaint);
            return;
        } else
        {
            canvas.drawArc(oval, 180F, 180F, false, progressPaint);
            return;
        }
    }

    protected void onMeasure(int i, int j)
    {
        i = android.view.View.MeasureSpec.getSize(i);
        j = android.view.View.MeasureSpec.getSize(j);
        if (i / 2 >= j)
        {
            i = j * 2;
        }
        getLayoutParams().width = i;
        getLayoutParams().height = i / 2;
        setMeasuredDimension(i, i / 2);
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        strokeThickness = (int)((float)i * 0.1F);
        oval = new RectF(strokeThickness / 2, strokeThickness / 2, i - strokeThickness / 2, j * 2 - strokeThickness / 2);
        init();
    }

    public void setCurrentProgress(int i)
    {
        currentProgress = i;
        invalidate();
    }

    public void setMaxProgress(int i)
    {
        maxProgress = i;
        currentProgress = 0;
        invalidate();
    }

    public void setProgressColor(int i)
    {
        progressColor = i;
        initProgressPaint();
        invalidate();
    }

    public void setTrackColor(int i)
    {
        trackColor = i;
        initBasePaint();
        invalidate();
    }
}
