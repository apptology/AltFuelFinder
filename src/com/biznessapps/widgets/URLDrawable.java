// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

public class URLDrawable extends BitmapDrawable
{

    protected Drawable drawable;

    public URLDrawable(Resources resources)
    {
        super(resources);
    }

    public void draw(Canvas canvas)
    {
        if (drawable != null)
        {
            drawable.draw(canvas);
        }
    }
}
