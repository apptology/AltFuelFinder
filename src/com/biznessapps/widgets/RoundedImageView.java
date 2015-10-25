// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;

public class RoundedImageView extends ImageView
{

    private float round;
    private BitmapShader shader;
    private int viewHeight;
    private int viewWidth;

    public RoundedImageView(Context context)
    {
        super(context);
        round = 0.2F;
    }

    public RoundedImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        round = 0.2F;
    }

    public RoundedImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        round = 0.2F;
    }

    private int measureHeight(int i, int j)
    {
        j = android.view.View.MeasureSpec.getMode(i);
        i = android.view.View.MeasureSpec.getSize(i);
        if (j == 0x40000000)
        {
            return i;
        } else
        {
            return viewHeight;
        }
    }

    private int measureWidth(int i)
    {
        int j = android.view.View.MeasureSpec.getMode(i);
        i = android.view.View.MeasureSpec.getSize(i);
        if (j == 0x40000000)
        {
            return i;
        } else
        {
            return viewWidth;
        }
    }

    public float getRound()
    {
        return round;
    }

    public void onDraw(Canvas canvas)
    {
        if (shader != null)
        {
            Paint paint = new Paint();
            paint.setShader(shader);
            int i = viewWidth / 2;
            canvas.drawColor(0, android.graphics.PorterDuff.Mode.CLEAR);
            canvas.drawRoundRect(new RectF(0.0F, 0.0F, i * 2, i * 2), (float)(i * 2) * round, (float)(i * 2) * round, paint);
        }
    }

    protected void onMeasure(int i, int j)
    {
        int k = measureWidth(i);
        i = measureHeight(j, i);
        viewWidth = k;
        viewHeight = i;
        setMeasuredDimension(k, i);
    }

    public void setImageBitmap(Bitmap bitmap)
    {
        shader = new BitmapShader(bitmap, android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP);
        super.setImageBitmap(bitmap);
    }

    public void setImageDrawable(Drawable drawable)
    {
        if (!(drawable instanceof TransitionDrawable)) goto _L2; else goto _L1
_L1:
        shader = new BitmapShader(((BitmapDrawable)((TransitionDrawable)drawable).getDrawable(1)).getBitmap(), android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP);
_L4:
        super.setImageDrawable(drawable);
        return;
_L2:
        if (drawable instanceof BitmapDrawable)
        {
            shader = new BitmapShader(((BitmapDrawable)drawable).getBitmap(), android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setRound(float f)
    {
        round = f;
    }
}
