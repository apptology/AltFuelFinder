// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package io.card.payment;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.shapes.RoundRectShape;
import java.util.Arrays;

class p
{

    private static final String a = io/card/payment/p.getSimpleName();
    private boolean b;
    private float c;
    private float d;

    public p(float f, float f1)
    {
        b = false;
        c = f;
        d = f1;
    }

    public final void a(Canvas canvas)
    {
        canvas.save();
        canvas.translate(-c / 2.0F, -d / 2.0F);
        Paint paint = new Paint();
        paint.setColor(0xff000000);
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        paint.setAntiAlias(true);
        paint.setStrokeWidth(1.5F);
        Object obj = new Paint();
        ((Paint) (obj)).setStyle(android.graphics.Paint.Style.FILL);
        ((Paint) (obj)).setColor(-1);
        float f;
        float af[];
        Object obj1;
        if (b)
        {
            ((Paint) (obj)).setAlpha(192);
        } else
        {
            ((Paint) (obj)).setAlpha(96);
        }
        af = new float[8];
        Arrays.fill(af, 5F);
        obj1 = new RoundRectShape(af, null, null);
        ((RoundRectShape) (obj1)).resize(c, d);
        ((RoundRectShape) (obj1)).draw(canvas, ((Paint) (obj)));
        ((RoundRectShape) (obj1)).draw(canvas, paint);
        paint = new Paint();
        paint.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
        paint.setAntiAlias(true);
        if (b)
        {
            paint.setColor(-1);
        } else
        {
            paint.setColor(0xff000000);
        }
        obj = new Path();
        ((Path) (obj)).moveTo(10F, 0.0F);
        ((Path) (obj)).lineTo(0.0F, 11F);
        ((Path) (obj)).lineTo(6F, 11F);
        ((Path) (obj)).lineTo(2.0F, 20F);
        ((Path) (obj)).lineTo(13F, 8F);
        ((Path) (obj)).lineTo(7F, 8F);
        ((Path) (obj)).lineTo(10F, 0.0F);
        ((Path) (obj)).setLastPoint(10F, 0.0F);
        obj1 = new Matrix();
        ((Matrix) (obj1)).postTranslate(-6.5F, -10F);
        ((Matrix) (obj1)).postScale(0.05F, 0.05F);
        ((Path) (obj)).transform(((Matrix) (obj1)));
        obj1 = new Matrix();
        f = 0.8F * d;
        ((Matrix) (obj1)).postScale(f, f);
        ((Path) (obj)).transform(((Matrix) (obj1)));
        canvas.translate(c / 2.0F, d / 2.0F);
        canvas.drawPath(((Path) (obj)), paint);
        canvas.restore();
    }

    public final void a(boolean flag)
    {
        StringBuilder stringbuilder = new StringBuilder("Torch ");
        String s;
        if (flag)
        {
            s = "ON";
        } else
        {
            s = "OFF";
        }
        stringbuilder.append(s);
        b = flag;
    }

}
