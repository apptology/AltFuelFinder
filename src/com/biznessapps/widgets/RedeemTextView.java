// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.TextView;

public class RedeemTextView extends TextView
{

    private static final int ANGLE = 26;

    public RedeemTextView(Context context)
    {
        super(context);
    }

    public RedeemTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public void onDraw(Canvas canvas)
    {
        canvas.save();
        float f = (float)getHeight() / 2.0F;
        canvas.rotate(26F, (float)getWidth() / 2.0F, f);
        super.onDraw(canvas);
        canvas.restore();
    }
}
